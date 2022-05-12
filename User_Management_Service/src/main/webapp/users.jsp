<%@ page import="com.User"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>User Management</title>
	<link rel="stylesheet" href="Views/bootstrap.min.css">
	<script src="Components/jquery-3.6.0.min.js"></script>
	<script src="Components/users.js"></script>
</head>
<body>
		<header>
			<style>
				    /* Default height for small devices */
				    #intro-example {
				      height: 600px;
				    }
				
				    /* Height for devices larger than 992px */
				    @media (min-width: 992px) {
				      #intro-example {
				        height: 1100px;
				      }
				    }
				    
				    /* Default height for small devices */
				    #intro-example2 {
				      height: 600px;
				    }
				
				    /* Height for devices larger than 992px */
				    @media (min-width: 992px) {
				      #intro-example2 {
				        height: 1000px;
				      }
				    }
			  </style>
			
		  <!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
			    <div class="container-fluid">
				  <button
				        class="navbar-toggler"
				        type="button"
				        data-mdb-toggle="collapse"
				        data-mdb-target="#navbarExample01"
				        aria-controls="navbarExample01"
				        aria-expanded="false"
				        aria-label="Toggle navigation">
				        
			        	<i class="fas fa-bars"></i>
			        
			      </button>
			      <div class="collapse navbar-collapse" id="navbarExample01">
				        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				          <li class="nav-item active">
				            	<a class="nav-link" aria-current="page" href="#">Home</a>
				          </li>
				          <li class="nav-item">
				            	<a class="nav-link" href="#">Features</a>
				          </li>
				          <li class="nav-item">
				            	<a class="nav-link" href="#">Pricing</a>
				          </li>
				          <li class="nav-item">
				            	<a class="nav-link" href="#">About</a>
				          </li>
				        </ul>
			      </div>
			    </div>
		  </nav>
		  
		<!-- Background image -->
			<div id="intro-example"
		    	class="p-5 text-center bg-image"
		    	style="background-image: url('Images/BG.jpg');">
		    
		    		<div  id="intro-example2" class="mask" style="background-color: rgba(0, 0, 0, 0.7);">
		      			<div class="d-flex justify-content-center align-items-center h-100">
		        			<div class="text-white">
		          
		          			<h1 class="mb-3">Welcome to ElectroGrid</h1>
		   
							<h4 >User Management</h4>
				
							<form id="formUser" name="formUser">
								Name:
						 		<input id="name" name="name" type="text"
						 				class="form-control form-control-sm">
						 
						 		<br> Phone Number:
						 		<input id="phone" name="phone" type="text"
						 				class="form-control form-control-sm">
						 
						 		<br> Address:
						 		<input id="address" name="address" type="text"
						 				class="form-control form-control-sm">
						 
						 		<br> Email Address:
								<input id="email" name="email" type="text"
						 				class="form-control form-control-sm">
						 
						 		<br> Password:
								<input id="password" name="password" type="password"
						 				class="form-control form-control-sm">
						 				
						 		<br>
						 		<input id="btnSave" name="btnSave" type="button" value="Save"
						 				 class="btn btn-outline-light btn-lg m-2"">
						 
						 		<input type="hidden" id="hidUserIDSave"
						 				name="hidUserIDSave" value="">
							
							</form>
					
							<div id="alertSuccess" class="alert alert-success"></div>
							<div id="alertError" class="alert alert-danger"></div>
					
							<br>
							<div id="divItemsGrid">
									 <%
									 User userObj = new User();
									 out.print(userObj.readUsers());
									 %>
							</div>
						</div>
					</div> 
				</div>
		 	</div>
		 
		</header>
</body>
</html>