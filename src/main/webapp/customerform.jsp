<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="savecustomer" modelAttribute="customerobj">
		Enter name: <form:input path="name"/>
		Enter email: <form:input path="email"/>
		Enter password: <form:input path="password"/>
		Enter mobile number: <form:input path="mobileNumber"/>
		Enter address: <form:input path="address"/>
		<input type="submit"/>
	</form:form>
</body>
</html>