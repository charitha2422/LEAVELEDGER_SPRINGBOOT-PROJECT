<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,700">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body, html {
  height: 100%;
  line-height: 1.8;
  font-family: 'Raleway', sans-serif;
}

/* Navbar styling */
.w3-bar .w3-button {
  padding: 16px;
  font-weight: bold;          /* Make the text bold */
  letter-spacing: 1px;        /* Add some spacing between letters */
  text-transform: uppercase;  /* Capitalize the text */
  color: #333;                /* Dark gray text color for better contrast */
  transition: background-color 0.3s, color 0.3s; /* Smooth transition */
}

/* Hover effect for navbar links */
.w3-bar .w3-button:hover {
  background-color: #f1f1f1;  /* Light background on hover */
  color: #007bff;             /* Blue color for the text on hover */
}

/* Logo styling */
.w3-bar .w3-wide {
  font-weight: bold;
  font-size: 20px;
}
</style>
</head>
<body>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">LEAVE LEDGER</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
       <a href="#contact" class="w3-bar-item w3-button"> CONTACTUS</a>
      <a href="adminlogin.jsp" class="w3-bar-item w3-button">ADMIN</a>
      <a href="emplogin.jsp" class="w3-bar-item w3-button">EMPLOYEE</a>
     
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
  <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
  <a href="#employee" onclick="w3_close()" class="w3-bar-item w3-button">EMPLOYEE</a>
  <a href="#admin" onclick="w3_close()" class="w3-bar-item w3-button">ADMIN</a>
  
</nav>

</body>
</html>