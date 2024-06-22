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
	<% List<Product> products=(List<Product>) request.getAttribute("productobj"); %>
	
	<table cellpadding="20px" border="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>TYPE</th>
			<th>COST</th>
			<th>DISCOUNT(%)</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>
		<% for(Product p:products) { %>
			<tr>
				<td><%= p.getId() %></td>
				<td><%= p.getName() %></td>
				<td><%= p.getType() %></td>
				<td><%= p.getCost() %></td>
				<td><%= p.getDiscount() %></td>
				<td><a href="updateproduct?id=<%=p.getId()%>">Update</a></td>
				<td><a href="deleteproduct?id=<%=p.getId()%>">Delete</a></td>
			</tr>
		<% } %>
	</table>
	<a href="hoteloptions.jsp">Back To Menu</a>
	<a href="hotellogout">Logout</a>
</body>
</html>