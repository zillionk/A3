package cart;

public class Book {
	String code;
	String pic;
	String name;
	Double price;
	public Book(String theCode,String thePic,String theName,Double thePrice){
		code = theCode;
		pic = thePic;
		name = theName;
		price = thePrice;
		
	}
	public String getCode() {
		return code;
	}
	public String getName() {
		return name;
	}
	public String getPic() {
		return pic;
	}
	public Double getPrice() {
		return price;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
}
