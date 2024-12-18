<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 Employee e = (Employee) session.getAttribute("employee");
 if (e == null) {
   response.sendRedirect("empsessionexpiry.jsp");
   return;
 }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee Profile</title>
<style>
body {
  margin: 0;
  padding: 0;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color: #f9f9f9;
  color: #333;
}

.profile-container {
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  max-width: 700px;
  margin: 180px auto 80px; /* Adjusted margin-top for more space below the navbar */
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}



.details-section {
  width: 60%;
}

.details-section h2 {
  font-size: 24px;
  margin-bottom: 20px;
}

.details-section div {
  margin-bottom: 15px;
  font-size: 16px;
}

.details-section label {
  font-weight: bold;
  display: inline-block;
  width: 140px;
  font-size: 16px;
  color: #444;
}

.details-section span {
  font-weight: bold; /* Makes the values bold */
}

.image-section {
  width: 35%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.image-section img {
  max-width: 100%;
  height: auto;
  border-radius: 10px;
}
</style>
</head>
<body>

<jsp:include page="emphome.jsp"></jsp:include>

<div class="profile-container">
  <div class="details-section">
    <h2>Employee Profile</h2>
    <div><label>ID:</label> <span><%=e.getId()%></span></div>
    <div><label>Name:</label> <span><%=e.getName()%></span></div>
    <div><label>Email:</label> <span><%=e.getEmail()%></span></div>
    <div><label>Phone:</label> <span><%=e.getContact()%></span></div>
    <div><label>Department:</label> <span><%=e.getDepartment()%></span></div>
    <div><label>Location:</label> <span><%=e.getLocation()%></span></div>
    <div><label>Date of Joining:</label> <span><%=e.getDateofjoining()%></span></div>
  </div>
  <div class="image-section">
    <img src="https://img.freepik.com/free-vector/follow-me-social-business-theme-design_24877-50427.jpg?t=st=1734062644~exp=1734066244~hmac=17d0973035f45c8a9e9a8ec1c12f7f4608a4237bd70dd2e6b5d872166aeedbb8&w=900" alt="Employee Illustration">
  </div>
</div>

</body>
</html>
