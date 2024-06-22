<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>SignUp</title>
<style>
	* {
		height: 100%;
		width: 100%;
	}
	body {
		margin: 0;
		background: linear-gradient(100deg,rgb(165,125,180),rgb(127,127,127),rgb(216,162,194));
		background-size: cover;
    	background-position: center;
	}
	#admin {
		margin-top: 12rem !important;
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
	<div class="row mt-5" id="adminform">
		<div class="col-md-5 m-auto">
			<div class="card rounded-3">
				<form:form action="savehotel" modelAttribute="hotelobj">
				<div class="card-header text-center bg-dark rounded-collpase border-0">
					<h1 class="text-light fw-bold">Create Account</h1>
					<p class="text-light fs-5">
						Already have an account? 
						<a class="text-light" href="adminlogin.jsp">signIn</a>
					</p>
				</div>
				<div class="card-body text-center">
					<form:input path="name" class="inputform" placeholder="Enter Your Name"/>
					<form:input path="mobileNumber" class="inputform" placeholder="Enter Your mobile number"/>
					<form:input path="email" class="inputform" placeholder="Enter Your Email"/>
					<form:input path="password" class="inputform" placeholder="Enter Your Password"/>
					<form:input path="address" class="inputform" placeholder="Enter Your address"/>
				</div>
				<div class="card-footer mt-5 border-0 col-6 mx-auto">
					<input type="submit" class="btn btn-dark mt-3 mb-3 fs-4" value="Register"/>
				</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>