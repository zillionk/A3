package cart;

import java.util.ArrayList;
import java.util.Random;

public class Cart {
	ArrayList<LineItem> items;
	public Cart(){
		items = new ArrayList<LineItem>();
	}
	
	public ArrayList<LineItem> getItems() {
		return items;
	}
	public void setItems(ArrayList<LineItem> items) {
		
		this.items = items;
	}
	public void addItem(LineItem anItem){
		String iSBN = anItem.getTheBook().getCode();
		for (int i = 0; i < items.size(); i++) {
			LineItem currentItem = items.get(i);
			if (currentItem.getTheBook().getCode().equals(iSBN)) {
				currentItem.setQuantity(anItem.getQuantity());;
				return;
			}
		}
		items.add(anItem);
	}
	
	public void removeItem(LineItem anItem){
		String iSBN = anItem.getTheBook().getCode();
		for (int i = 0; i < items.size(); i++) {
			LineItem currentItem = items.get(i);
			if (currentItem.getTheBook().getCode().equals(iSBN)) {
				items.remove(i);
				return;
			}
		}
	}
	public int getOrderNumber(){
		Random rnd = new Random();
		int n = 100000 + rnd.nextInt(900000);
		return n;
	}
}
