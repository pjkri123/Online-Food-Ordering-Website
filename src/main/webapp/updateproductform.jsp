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
	<form:form action="updateproductinfo" modelAttribute="existingproductinfo">
	Enter id:<form:input path="id" readonly="true"/>
	Enter Name:<form:input path="name"/>
	Enter Type:<form:input path="type"/>
	Enter Cost:<form:input path="cost"/>
	Enter Discount:<form:input path="discount"/>
	<input type="submit"/>
	</form:form>
</body>
</html>