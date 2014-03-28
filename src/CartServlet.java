

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import cart.Book;
import cart.Cart;
import cart.LineItem;
import cart.Model;

/**
 * Servlet implementation class CartServlet
 */
public class CartServlet extends HttpServlet {
       
   

   
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String code = request.getParameter("ISBN");
		String numberInString = request.getParameter("quantity");
		HttpSession session = request.getSession();
		if (session == null) {
			System.out.println("session is null!");
		} 
		Model model = new Model();
		synchronized (session) {
			Cart theCart = (Cart) session.getAttribute("cart");
			if (theCart==null) {
				theCart = new Cart();
				session.setAttribute("cart", theCart);
			} 
					
			int quantity = 1;	
			try {
				System.out.println(numberInString);
				quantity = Integer.parseInt(numberInString);
			} catch (Exception e) {
				quantity = 1;
			}
			System.out.println("afterCheck:"+quantity);
			Book theBook = model.getBook(code);
			if (theBook==null) {
				throw new Exception("book is null");
			}
			LineItem item = new LineItem(theBook, quantity);
			if (quantity >0) {
				theCart.addItem(item);
			}else if (quantity <=0) {
				theCart.removeItem(item);
			}

			session.setAttribute("cart", theCart);
		}
		String url = "/cart.jsp";
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
