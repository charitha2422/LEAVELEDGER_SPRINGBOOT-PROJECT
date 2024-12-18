<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
    <title>Employee Dashboard</title>
    <style>
        /* General body styling */
       <style>
    /* General body styling */
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
    }

    /* Navbar include styling */
    .navbar {
        background-color: #0046b4; /* Dark Blue */
        padding: 10px;
        text-align: center;
        color: white;
        font-size: 20px;
    }

    /* Welcome Heading */
    .welcome-heading {
        text-align: center;
        font-size: 36px;
        color: #333;
        margin: 100px 0 30px 0; /* Add space from navbar */
    }

    /* Dashboard container */
    .dashboard {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 20px;
        padding: 20px;
    }

    /* Individual card styling */
    .card {
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 300px;
        padding: 20px;
        text-align: left;
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .card-title {
        font-size: 18px;
        font-weight: bold;
        color: #333;
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .card-icon {
        font-size: 24px;
        color: #0046b4;
    }

    .card-description {
        color: #555;
        font-size: 14px;
    }
</style>

    </style>
</head>
<body>
    <!-- Navbar -->
    <jsp:include page="emphome.jsp"></jsp:include>

    <!-- Welcome Heading -->
    <div class="welcome-heading">
        <b>Hi <%= e.getName() %>!</b><br>
        Welcome to LeaveLedger
    </div>

    <!-- Dashboard Cards -->
    <div class="dashboard">
        <!-- Employee Directory Card -->
        <div class="card">
            <div class="card-title">
                <span class="card-icon">&#128100;</span> <!-- User icon -->
                Employee Directory
            </div>
            <div class="card-description">
                Manage and view detailed employee information, including contact details and department roles.
            </div>
        </div>

        <!-- Secure Access Card -->
        <div class="card">
            <div class="card-title">
                <span class="card-icon">&#128274;</span> <!-- Lock icon -->
                Secure Access
            </div>
            <div class="card-description">
                Ensure data security with role-based access control, allowing only authorized personnel to access sensitive information.
            </div>
        </div>

        <!-- Leave Management Card -->
        <div class="card">
            <div class="card-title">
                <span class="card-icon">&#128197;</span> <!-- Calendar icon -->
                Leave Management
            </div>
            <div class="card-description">
                Request, approve, and track leaves effortlessly with our user-friendly leave management system.
            </div>
        </div>

        <!-- Performance Reviews Card -->
        <div class="card">
            <div class="card-title">
                <span class="card-icon">&#11088;</span> <!-- Star icon -->
                Performance Reviews
            </div>
            <div class="card-description">
                Conduct regular performance reviews and provide feedback to help employees grow and succeed.
            </div>
        </div>
    </div>
</body>
</html>
