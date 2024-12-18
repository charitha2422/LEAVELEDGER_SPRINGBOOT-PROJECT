<%@page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
body, html {
  height: 100%;
  line-height: 1.8;
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

.w3-bar .w3-button {
  padding: 16px;
}
</style>
</head>
<body>


<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">LEAVE LEDGER</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="admindashboard" class="w3-bar-item w3-button">HOME</a>
         <a href="updateempstatus" class="w3-bar-item w3-button">EMPLOYEESTATUS</a>
       <a href="viewallemps" class="w3-bar-item w3-button">VIEWALLEMPS</a>
    
      <a href="viewleaverequests" class="w3-bar-item w3-button">LEAVEREQUESTS</a>
       <a href="homepage.jsp" class="w3-bar-item w3-button">LOGOUT</a>
     
    </div>
 </div>
 </div>

</body>
</html>