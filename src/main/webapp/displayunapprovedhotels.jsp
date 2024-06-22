<%@page import="com.jsp.hotelmanagementsystem.entities.Hotel"%>
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
	<% List<Hotel> hotels= (List<Hotel>) request.getAttribute("unapprovedhotels"); %>
	<table cellPadding="20px" border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>MobileNumber</th>
			<th>Status</th>
			<th>Approve</th>
		</tr>
		<% for(Hotel h:hotels) { %>
			<tr>
				<td><%= h.getId() %></td>
				<td><%= h.getName() %></td>
				<td><%= h.getEmail() %></td>
				<td><%= h.getAddress() %></td>
				<td><%= h.getMobileNumber() %></td>
				<td><%= h.getStatus() %></td>
				<td>
					<a href="approvehotel?id=<%= h.getId() %>">approve</a>
				</td>
			</tr>
		<% } %>
	</table>
	
	<a href="adminoptions.jsp">Back to menu</a>
	<a href="adminlogout">logout</a>
</body>
</html>