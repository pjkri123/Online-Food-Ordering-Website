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
	<form:form action="saveproduct" modelAttribute="productobj">
		Enter name: <form:input path="name"/>
		Enter type: <form:input path="type"/>
		Enter cost: <form:input path="cost"/>
		Enter discount: <form:input path="discount"/>
		<input type="submit"/>
	</form:form>
</body>
</html>