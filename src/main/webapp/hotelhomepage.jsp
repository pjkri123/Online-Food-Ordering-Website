<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>HomePage</title>
<style>
	* {
		height: 100%;
		width: 100%;
	}
	body {
		margin: 0;
		background: linear-gradient(55deg,rgb(22,22,22),rgb(44,44,44),rgb(127,127,127));
		background-size: cover;
    	background-position: center;
	}
	#admin {
		margin-top: 12rem !important;
	}
</style>
</head>
<body>
	<div class="row mt-6">
		<div class="col-md-5 m-auto">
			<div class="card mt-5 text-center border border-light border-2" id="admin">
				<div class="card-header bg-dark">
					<h1 class="text-light fw-bold">Hotel Portal</h1>
				</div>
				<div class="card-body row mt-5 text-center">
					<div class="col">
						<a href="addhotel" class="col-3 btn btn-dark fs-3">SignUp</a>
						<a href="hotellogin.jsp" class="col-3 btn btn-dark fs-3">LogIn</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>