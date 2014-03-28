<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart page</title>
</head>
<body>
<section data-role="page">
	<header data-role="header">
		<h1>cart</h1>

	</header><!-- /header -->
	<article data-role="content">

	</article><!-- /content -->
	<footer data-role="footer">
		<h4>Page footer</h4>
	</footer><!-- /footer -->
</section><!-- /page -->



 	<h1>Cart</h1>
 	<table border=1>
 		<tr valign="bottom">
 				<td align="center"><b>Quantity</b></td>
				<td align="center"><b>Picture</b></td>
				<td align="center"><b>Description</b></td>
				<td align="center"><b>Price</b></td>
				<td align="center"><b>Amount</b></td>
				<td align="center"></td>
  		</tr> 
<%@ page import="cart.*, java.util.ArrayList" %>
<% 
	Cart cart = (Cart) session.getAttribute("cart");
	ArrayList<LineItem> items = cart.getItems();
	for(LineItem item : items){
	Book book = item.getTheBook();
%>
	<tr>
		<td>
			<form action="<%=response.encodeURL("cart") %>" method="post">
				<input type="hidden" name="ISBN" value="<%=book.getCode()%>">
				<input type="text" name="quantity" value="<%=item.getQuantity() %>">
				<input type="submit" name="Update" value="Update">	
			</form>
		</td>
		<td>
			<img src="<%=book.getPic()%>" alt="" height=100>
		</td>
		<td>
			<%=book.getName()%>
		</td>
		<td>
			<%=book.getPrice() %>
		</td>
		<td>
			<%=item.getTotal() %>
		</td>
		<td>
			<form action="<%=response.encodeURL("cart") %>">
				<input type="hidden" name="ISBN" value="<%=book.getCode()%>">
				<input type="hidden" name="quantity" value=0>
				<input type="submit" name="delete"value="delete">	
			</form>
		</td>
	</tr>
<%
	}
%>

 	</table>
 	<a href="index.jsp">Go Back</a>
</body>
</html>