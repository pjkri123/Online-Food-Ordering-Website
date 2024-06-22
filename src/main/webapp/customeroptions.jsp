<%@page import="com.jsp.hotelmanagementsystem.entities.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% Integer customer = (Integer)session.getAttribute("customerinfo"); 
	if(customer!=null) {
	%>
	<h1 style="color:blue">${message}</h1>
	<a href="readhotelname.jsp">View Products by Hotel</a>
	<a href="fetchallproducts">Buy Products</a>
	<a href="readpricerange.jsp">View Between Products Price Range</a>
	<a href="">View Previous Order</a>
	<% } else { %>
	<h2><a href="customerlogin.jsp">Login First</a></h2>
	<% } %>
</body>
</html>