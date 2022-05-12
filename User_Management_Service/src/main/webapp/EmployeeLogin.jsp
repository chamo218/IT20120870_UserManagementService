<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script
	  src="https://code.jquery.com/jquery-3.4.1.min.js"
	  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	  crossorigin="anonymous"></script>
	<script type="text/javascript"
	    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
	<title>Login As An Employee</title>
	<link rel="stylesheet" href="Views/bootstrap.min.css">
	<script src="Components/jquery-3.6.0.min.js"></script>
	<script src="Components/users.js"></script>
</head>
<body>
	<section class="vh-100" style="background-color: #000000;">
		<div class="container py-5 h-100">
			<div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img src="Images/EmployeeLoginBG.jpg"
								alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">
								
									<form action="empLogin" method="post">
									<div class="d-flex align-items-center mb-3 pb-1">
										<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
										<span class="h1 fw-bold mb-0">ElectroGrid</span>
									</div>
									
									<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log into Your Employee account</h5>
														
									<div class="form-outline mb-4">
										<input type="text" name="empemail" class="form-control form-control-lg" />
										<label class="form-label">Email address</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="password" name="emppassword" class="form-control form-control-lg" />
										<label class="form-label" >Password</label>
									</div>
												
									<div class="pt-1 mb-4">
										<button class="btn btn-dark btn-lg btn-block" type="submit" name="submit" >Login</button>
									</div>
												
									<br>${message}
									           
									<div class="pt-1 mb-4">
										<a href="Login.jsp"><button class="btn btn-dark btn-lg btn-block" type="button">User?</button></a>
									</div>   
									
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
	<script type="text/javascript">
	 
	    $(document).ready(function() {
	        $("#loginForm").validate({
	            rules: {
	                empemail: {
	                    required: true,
	                    empemail: true
	                },
	         
	                emppassword: "required",
	            },
	             
	            messages: {
	                empemail: {
	                    required: "Please enter email",
	                    empemail: "Please enter a valid email address"
	                },
	                 
	                emppassword: "Please enter password"
	            }
	        });
	 
	    });
	</script>
</html>