package cart;

import java.util.ArrayList;

public class Model {
	ArrayList<Book> allBooks;
	
	public Model() {
		allBooks = new ArrayList<Book>();
		allBooks.add(new Book(
				"01", 
				"http://booksend.files.wordpress.com/2011/07/deathly-hallows-bloomsbury.jpg", 
				"Harry Potter", 
				14.95));
		allBooks.add(new Book(
				"02", 
				"http://d202m5krfqbpi5.cloudfront.net/books/1360096633l/979761.jpg", 
				"Forever Autumn", 
				20.55));
		allBooks.add(new Book(
				"03", 
				"http://2.bp.blogspot.com/-5_ys7I7USBo/T4MwCREbX7I/AAAAAAAAA5A/sUIrq8YIrG4/s1600/a-game-of-thrones.jpg", 
				"A Game of Thrones",
				32.55));
		allBooks.add(new Book(
				"04", 
				"http://www.parallelworldsmagazine.com/wp-content/uploads/2013/06/2001.jpg",
				"2001: A Space Odyssey", 
				11.20));
		allBooks.add(new Book(
				"05", 
				"http://www.harpercollins.com/harperimages/isbn/large/5/9780688002305.jpg",
				"Zen and the Art of Motorcycle Maintenance", 
				25.00));
		allBooks.add(new Book(
				"06", 
"http://1.bp.blogspot.com/_mPEPXtLxfEo/TA2U1K_FxjI/AAAAAAAAATM/dFvgQKJ_xEw/s1600/norwegian-wood.jpg",
				"Norwegian Wood", 
				15.00));
		allBooks.add(new Book(
				"07", 
				"http://31.media.tumblr.com/739a85a69ca57167aeac56964683dc9e/tumblr_mxg34xnFq81sf8cgto1_1280.jpg", 
				"MelonPi:a Cute Cat", 
				19.00));
		allBooks.add(new Book(
				"08", 
				"http://www.japanfocus.org/data/chrys.cover.jpg", 
				"The Chrysanthemum and the Sword", 
				15.00));
		allBooks.add(new Book(
				"09", 
				"http://evolbiol.ru/gene/images_en/cover.jpg", 
				"The Selfish Gene", 
				19.00));
		allBooks.add(new Book(
				"10", 
				"http://upload.wikimedia.org/wikipedia/en/thumb/0/0f/Threebody.jpg/200px-Threebody.jpg", 
				"Three Body Trilogy", 
				45.00));
		
	}
	public Book getBook(String code){
		
		for (Book book: allBooks) {
			if (book.getCode().equals(code)) {
				return book;
			}
		} 
		return null;
	}
	
	
}
