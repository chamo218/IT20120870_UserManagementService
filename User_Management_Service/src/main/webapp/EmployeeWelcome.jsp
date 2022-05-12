<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Employee Home Page</title>
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
        height: 900px;
      }
    }
    
    /* Default height for small devices */
    #intro-example2 {
      height: 600px;
    }

    /* Height for devices larger than 992px */
    @media (min-width: 992px) {
      #intro-example2 {
        height: 800px;
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
        aria-label="Toggle navigation" >
        
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
   
         	<h5><b>${user.empname} (${user.empemail})</b></h5>
     		<br>
       		<br>
	        <a
	            class="btn btn-outline-light btn-lg m-2"
	            href="users.jsp"
	           
	            role="button">Edit User Details
	         </a>
	          
	         <br>
	         <br>
	         <br>
	         <br>
	         
	         <a
	            class="btn btn-outline-light btn-lg m-2"
	            href="Login.jsp"
	           
	            role="button">Logout
	         </a>
        </div>
      </div>
    </div>
  </div>
</header>

</body>
</html>