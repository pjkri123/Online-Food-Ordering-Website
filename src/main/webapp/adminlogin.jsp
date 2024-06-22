<%@page import="com.jsp.hotelmanagementsystem.entities.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Admin Login</title>
<style>
	* {
		height: 100%;
		width: 100%;
	}
	body {
		margin: 0;
		background: linear-gradient(100deg,rgb(143,129,193),rgb(78,140,128),rgb(127,127,127));
		background-size: cover;
		height: 90%;
		background-repeat: no-repeat;
    	background-position: center;
    	overflow: hidden;
	}
	#admin {
		margin-top: 7rem !important;
	}
	.card {
		background: linear-gradient(100deg,rgb(22,22,22),rgb(44,44,44),rgb(127,127,127));
		box-shadow: 0 0 10px white;
	}
	.inputform {
		border: none;
    	outline: none;
    	font-size: 15px;
    	margin: 30px 0;
    	border-color: transparent;
    	padding: 5px;
    	background-color: transparent;
    	border-bottom: 2px solid white;
    	color: white;
    	width: 400px;
	}
	input[type="submit"] {
		box-shadow: 0 0 5px white;
	}
</style>
</head>
<body>
	<div class="row mt-5">
		<div class="col-md-5 m-auto">
			<div class="card rounded-3" id="admin">
				<div class="card-header text-center bg-dark rounded-collpase border-0">
					<h1 class="text-light fw-bold">Admin Login</h1>
				</div>
				<form action="adminloginvalidation" method="post">
					<div class="card-body text-center">
						<% if((Admin) request.getAttribute("adminobj")!=null) { %>
							<h1 style="color:blue">${message}</h1>
						<% } else if((Admin) request.getAttribute("admininfo")==null) {%>
							<h1 style="color:red">${message}</h1>
						<% } %>
						<div>
							<input type="email" name="email" class="inputform" placeholder="Enter Your Email"/>
						</div>
						<div>
							<input type="password" name="password" class="inputform" placeholder="Enter Your Password"/>
						</div>
					</div>
					<div class="card-footer mt-5 border-0 col-6 mx-auto">
						<input type="submit" class="btn btn-dark mt-3 mb-3 fs-4" value="Login"/>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>