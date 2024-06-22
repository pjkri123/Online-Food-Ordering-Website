<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
<title>Admin HomePage</title>
<style>
	* {
		margin: 0;
		padding: 0;
		width: 100%;
	}
	.slogan {
		font-size: 15px !important;
	}
	.button-link {
		margin-left: 60rem;
	}
	.divider:after,
	.divider:before {
		content: "";
		flex: 1;
		height: 1px;
		background: #eee;
	}
</style>
</head>
<body>
<section>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a href="#" class="navbar-brand">
				<span class="fs-2">FoodieFiesta</span><br>
				<i class="slogan">Food Happiness Starts Here</i>
			</a>
			<div class="navbar-nav collapse navbar-collapse button-link">
				
					<a href="addadmin" class="col-3 nav-link btn btn-dark text-light fs-5">SignUp</a>
				
				
					<a href="adminlogin.jsp" class="col-3 nav-link btn btn-dark text-light fs-5">LogIn</a>
				
			</div>
		</div>
	</nav>
</section>	
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <h1 class="my-5 display-3 fw-bold ls-tight">
            FoodieFiesta <br />
            <span class="text-primary">Food Happiness Starts Here</span>
          </h1>
          <p style="color: hsl(217, 10%, 50.8%)">
            we're passionate about bringing you the freshest and most delicious food. 
            Whether you're looking for a hearty meal, a quick snack, or a delightful dessert, 
            we've got something to satisfy every craving.
            We invite you to join us and experience the joy of great food. 
            Whether you're dining in, ordering online, or booking a catering service, 
            we promise to make your experience delightful and satisfying.
          </p>
      </div>
    </div>
  </div>
</section>
<section>
	<footer class="bg-dark text-center text-light p-3">
        <h3>CopyRight:2024&copy;</h3>
        <p>All Right are Reserved &reg;</p>
        <small>Developed & Maintained By
            <a href="#" class="text-light">Puja</a>
        </small>
    </footer>
</section>
</body>
</html>