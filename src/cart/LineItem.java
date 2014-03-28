package cart;

public class LineItem {
		Book theBook;
		int quantity;
		
		public LineItem(Book aBook,int number){
			theBook = aBook;
			quantity = number;
		}
		public int getQuantity() {
			return quantity;
		}
		public Book getTheBook() {
			return theBook;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		public void setTheBook(Book theBook) {
			this.theBook = theBook;
		}
		public double getTotal(){
			double price = this.theBook.getPrice();
			int quan = this.getQuantity();
			return price * quan;
		}

		
}
