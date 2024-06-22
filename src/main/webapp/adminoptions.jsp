<%@page import="com.jsp.hotelmanagementsystem.entities.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% Admin admin = (Admin)session.getAttribute("admininfo"); 
	if(admin!=null) {
	%>
	<h1 style="color:blue">${message}</h1>
	<a href="fetchunapprovedhotels">Approve Hotel</a>
	<a href="fetchunblockedhotels">Block Hotel</a>
	<a href="fetchblockedhotels">Unblock Hotel</a>
	<a href="providediscount">Provide Discount</a>
	<% } else { %>
	<h2><a href="adminlogin.jsp">Login First</a></h2>
	<% } %>
</body>
</html>