<%@page import="com.jsp.hotelmanagementsystem.entities.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% List<Product> products=(List<Product>)request.getAttribute("productslist"); %>
	<table cellPadding="20px" border="1">
		<tr>
			<th>NAME</th>
			<th>TYPE</th>
			<th>COST</th>
			<th>ADD</th>
		</tr>
		<% for(Product p:products) { %>
			<tr>
				<td><%= p.getName() %></td>
				<td><%= p.getType() %></td>
				<td><%= p.getCost() %></td>
				<td><a href="additem?id=<%=p.getId()%>">Add</a></td>
			</tr>
		<% } %>
	</table>
	
	<button><a href="viewaddeditemstocustomer.jsp">Proceed To Buy</a></button>
</body>
</html>