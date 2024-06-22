<%@page import="com.jsp.hotelmanagementsystem.entities.Item"%>
<%@page import="com.jsp.hotelmanagementsystem.entities.FoodOrder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${message}</h1>
	<% FoodOrder foodOrder=(FoodOrder) request.getAttribute("foodorderinfo"); %>
	Ordered for <%= foodOrder.getName() %>
	Mobile Number: <%= foodOrder.getMobileNumber() %>
	Address: <%= foodOrder.getAddress() %>
	
	<table cellPadding="20px" border="1">
		<tr>
			<th>NAME</th>
			<th>TYPE</th>
			<th>COST</th>
			<th>QUANTITY</th>
		</tr>
		<% for(Item i:foodOrder.getItems()) { %>
			<tr>
				<td><%= i.getName() %></td>
				<td><%= i.getType() %></td>
				<td><%= i.getCost() %></td>
				<td><%= i.getQuantity() %></td>
			</tr>
		<% } %>
	</table>
	
	Total Price: <%= foodOrder.getTotalPrice() %>
	
	<a href="customeroptions.jsp">Back To Options</a>
</body>
</html>