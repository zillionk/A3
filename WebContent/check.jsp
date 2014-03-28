<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkout Page</title>
</head>
<body>
<%@ page import="cart.*, java.util.ArrayList" %>
<% 
	Cart cart = (Cart) session.getAttribute("cart");
	ArrayList<LineItem> items = cart.getItems();
%>

<section data-role="page">
	<header data-role="header">
		<h1>Order # <%=cart.getOrderNumber()%></h1>

	</header><!-- /header -->
	<article data-role="content">

 	<table border=1>
 		<tr valign="bottom">
				<td align="center"><b>Picture</b></td>
				<td align="center"><b>Description</b></td>
				<td align="center"><b>Price</b></td>
 				<td align="center"><b>Quantity</b></td>
				<td align="center"><b>Amount</b></td>

  		</tr> 

<% 

	for(LineItem item : items){
	Book book = item.getTheBook();
%>
	<tr>
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
			<%=item.getQuantity() %>
		</td>
		<td>
			<%=item.getTotal() %>
		</td>
	</tr>
<%
	}
%>

 	</table>



	</article><!-- /content -->
	<footer data-role="footer" data-position="fixed">
 	<a href="cart.jsp" data-role="button" data-icon="arrow-l">Go Back</a>
 	<a href="" data-role="button" data-icon="arrow-r">OK</a>
	</footer><!-- /footer -->
</section><!-- /page -->




</body>
</html>