<%@page import="com.jsp.hotelmanagementsystem.entities.Hotel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	Integer hotel=(Integer) session.getAttribute("hotelinfo");
	if(hotel!=null) {
	%>
		${message}
		<a href="addproduct">Add Product</a>
		<a href="viewproducts">View All Products</a>
		<a href="updateproduct">Update Product</a>
		<a href="deleteproduct">Delete Product</a>
	<% 
	} else {
	%>
		<a href="hotellogin.jsp">Login First</a>
	<% 
	} 
	%>
</body>
</html>