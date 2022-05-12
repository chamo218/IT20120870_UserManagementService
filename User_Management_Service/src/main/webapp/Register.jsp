<%@page import="com.User" %>

<%
if (request.getParameter("name") != null)
{
	  User userObj = new User();
			String stsMsg = userObj.insertUser(request.getParameter("name"),
					request.getParameter("phone"),
					request.getParameter("address"),
					request.getParameter("email"),
					request.getParameter("password"));
			
	  session.setAttribute("statusMsg", stsMsg);

}

%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
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
							<img src="Images/RegisterPageBG.jpg"
							alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
						</div>
						<div class="col-md-6 col-lg-7 d-flex align-items-center">
							<div class="card-body p-4 p-lg-5 text-black">
							
							<form method = "post" action="Register.jsp">
								<div class="d-flex align-items-center mb-3 pb-1">
									<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
									<span class="h1 fw-bold mb-0">ElectroGrid</span>
								</div>
								
								<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Register to ElectroGrid</h5>
										
								<div class="form-outline mb-4">
									<input type="text" name="name" class="form-control form-control-lg" />
									<label class="form-label">Name</label>
								</div>
								                  
								<div class="form-outline mb-4">
									<input type="text" name="phone" class="form-control form-control-lg" />
									<label class="form-label">Phone Number</label>
								</div>
								                  
								<div class="form-outline mb-4">
									<input type="text" name="address" class="form-control form-control-lg" />
									<label class="form-label">Address</label>
								</div>
												
								<div class="form-outline mb-4">
									<input type="text" name="email" class="form-control form-control-lg" />
									<label class="form-label">Email Address</label>
								</div>
								                  
								<div class="form-outline mb-4">
									<input type="password" name="password" class="form-control form-control-lg" />
									<label class="form-label">Password</label>
								</div>
								                  
								<div class="pt-1 mb-4">
									<button class="btn btn-dark btn-lg btn-block" type="submit" name="register" >Register</button>
								</div>
								
								<div class="pt-1 mb-4">
									<a href="Login.jsp"><button class="btn btn-dark btn-lg btn-block" type="button">Login</button></a>
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
		<%
	 		out.print(session.getAttribute("statusMsg"));
	 	%>
		
</body>
</html>