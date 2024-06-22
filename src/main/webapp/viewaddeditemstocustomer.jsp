<%@page import="com.jsp.hotelmanagementsystem.entities.Item"%>
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
	<% List<Item> items=(List<Item>) session.getAttribute("itemslist"); %>
	
	<table cellPadding="20px" border="1">
		<tr>
			<th>NAME</th>
			<th>COST</th>
			<th>TYPE</th>
			<th>QUANTITY</th>
			<th>REMOVE</th>
		</tr>
		<% for(Item i:items) { %>
			<tr>
				<td><%= i.getName() %></td>
				<td><%= i.getCost() %></td>
				<td><%= i.getType() %></td>
				<td><%= i.getQuantity() %></td>
				<td><a href="removeitem?name=<%= i.getName() %>">Remove</a></td>
			</tr>
		<% } %>
	</table>
	
	<button><a href="addfoodorder">Confirm</a></button>
</body>
</html>