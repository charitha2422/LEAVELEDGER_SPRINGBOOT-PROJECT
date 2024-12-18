<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Employee e=(Employee)   session.getAttribute("employee");
if(e==null)
{
	response.sendRedirect("empsessionexpiry.jsp");//in jsp Httprequest and Httpresponse are implicit objects not need to create them
	return ;
}



%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Update Employee Profile</title>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }

      body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center; /* Centered the form vertically and horizontally */
        background: #f0f2f5;
        padding: 30px;
      }

      .container {
        display: flex;
        max-width: 1000px; /* Increased width for the container */
        width: 100%;
        background: #fff;
        padding: 40px 30px;
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        margin-top: 20px; /* Keeps the form below the navbar */
      }

      .form-container {
        max-width: 600px;
        width: 100%;
      }

      .title {
        font-size: 24px;
        font-weight: 600;
        text-align: center;
        margin-bottom: 20px;
        color: #333;
      }

      .input-box {
        position: relative;
        width: 100%;
        margin: 15px 0;
      }

      .input-box input,
      .input-box select {
        width: 100%;
        height: 50px;
        padding: 0 15px;
        padding-left: 40px; /* Added padding for icon and input */
        border: 2px solid rgba(0, 0, 0, 0.2);
        border-radius: 6px;
        outline: none;
        font-size: 16px;
        transition: all 0.3s ease;
      }

      .input-box input:focus,
      .input-box select:focus {
        border-color: #7d2ae8;
      }

      .input-box i {
        position: absolute;
        top: 50%;
        left: 15px;
        transform: translateY(-50%);
        color: #7d2ae8;
      }

      .input-box input[type="radio"] {
        width: auto;
        margin-right: 10px;
      }

      .gender-options {
        display: flex;
        gap: 20px; /* Added gap between gender options */
        padding: 10px 0;
        align-items: center;
      }

      .gender-options label {
        font-size: 16px;
        color: #333;
      }

      .button input {
        width: 100%;
        height: 50px;
        background: #7d2ae8;
        border: none;
        border-radius: 6px;
        color: #fff;
        font-size: 18px;
        font-weight: 500;
        cursor: pointer;
        transition: background 0.3s ease;
      }

      .button input:hover {
        background: #5b13b9;
      }

      .form-note {
        text-align: center;
        margin-top: 15px;
        font-size: 14px;
      }

      .form-note a {
        color: #7d2ae8;
        text-decoration: none;
      }

      .form-note a:hover {
        text-decoration: underline;
      }

      .image-container {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .image-container img {
        width: 100%;
        max-width: 400px; /* Set a maximum width for the image */
        height: auto;
        border-radius: 8px;
      }
    </style>
  </head>

  <body>
    <jsp:include page="emphome.jsp"></jsp:include>
    <div class="container">
      <!-- Form Container -->
      <div class="form-container">
        <div class="title">Update Employee Profile</div>
        <form action="updateempprofile" method="post">
          <!-- Employee ID -->
          <div class="input-box">
            <i class="fas fa-id-badge"></i>
            <input type="text" name="id" placeholder="Employee ID" value=<%=e.getId() %> readonly required >
          </div>

          <!-- Full Name -->
          <div class="input-box">
            <i class="fas fa-user"></i>
            <input type="text" name="name" placeholder="Enter Full Name" value=<%=e.getName() %> required>
          </div>

          <!-- Email -->
          <div class="input-box">
            <i class="fas fa-envelope"></i>
            <input type="email" name="email" placeholder="Enter Email" value=<%=e.getEmail() %> readonly required>
          </div>

          <!-- Phone Number -->
          <div class="input-box">
            <i class="fas fa-phone-alt"></i>
            <input type="tel" name="phone" placeholder="Enter Phone Number" value=<%=e.getContact() %> required>
          </div>

     

          <!-- Department -->
          <div class="input-box">
            <i class="fas fa-building"></i>
            <select name="department"  required>
              <option value="" disabled selected>Select Department</option>
              <option value="HR">HR</option>
              <option value="IT">IT</option>
              <option value="Finance">Finance</option>
              <option value="Marketing">Marketing</option>
            </select>
          </div>

          <!-- Work Location -->
          <div class="input-box">
            <i class="fas fa-map-marker-alt"></i>
            <input type="text" name="location" placeholder="Enter Work Location"  value=<%=e.getLocation()%>required>
          </div>

          <!-- Password -->
          <div class="input-box">
            <i class="fas fa-lock"></i>
            <input type="password" name="password" placeholder="Enter New Password " value=<%=e.getPassword() %> required>
          </div>

          <!-- Submit Button -->
          <div class="button input-box">
            <input type="submit" value="Update Profile">
          </div>
        </form>

       
      </div>

      <!-- Image Container -->
      <div class="image-container">
        <img src="https://img.freepik.com/free-vector/appointment-booking-smartphone_23-2148559902.jpg?t=st=1734025634~exp=1734029234~hmac=832a4653c7ab169df9a69f56d201ae95c9dc270c019acf03580365dd18e21de1&w=826" alt="Profile Image"> <!-- Replace with actual image path -->
      </div>
    </div>
  </body>
</html>
