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
	<form:form action="saveitemtoorder" modelAttribute="itemobj">
		Name: <form:input path="name" readonly="true"/>
		Type: <form:input path="type" readonly="true"/>
		Cost: <form:input path="cost" readonly="true"/>
		Enter Qunatity: <form:input path="quantity"/>
		<input type="submit"/>
	</form:form>
</body>
</html>