<%@page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    Admin a = (Admin) session.getAttribute("admin");
    if (a == null) {
        response.sendRedirect("adminsessionexpiry.jsp");
        return;
    }
%>
 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
  
  <style>
    /* Custom CSS for gradient violet cards */
    .gradient-violet {
      background: linear-gradient(to right, #f3e8ff, #e9d5ff); /* Very light violet shades */
    }
  </style>
</head>
<body>
  <!-- Navbar Included -->
  <jsp:include page="adminhome.jsp"></jsp:include>
  
  <!-- Welcome Heading -->
  <section class="text-center mt-24"> <!-- Increased margin-top to move heading downward -->
    <h2 class="text-3xl font-bold text-gray-800">Welcome, <%= a.getUsername() %>!</h2>
  </section>
  
  <!-- Dashboard Cards Section -->
  <section class="text-gray-600 body-font mt-8">
    <div class="container px-5 py-12 mx-auto">
      <div class="flex flex-wrap gap-4 justify-center">
        <!-- First Card: Total Employee Count -->
        <div class="p-4 w-full md:w-1/3">
          <div class="h-72 gradient-violet border-2 border-gray-200 border-opacity-60 rounded-lg overflow-hidden shadow-md">
            <div class="p-6 text-center">
              <img class="h-56 w-full object-cover mb-4" src="https://img.freepik.com/free-vector/recruit-agent-analyzing-candidates_74855-4565.jpg?t=st=1734072254~exp=1734075854~hmac=28c90e3d77f5fa3afa78a747fd5404c3b9a3e732b55c08a5ff94329f72a8567a&w=1380" alt="Total Employee Count">
              <h1 class="title-font text-2xl font-bold text-gray-900 mb-3">Total Employee Count</h1>
              <p class="text-6xl font-extrabold text-black mb-4"><c:out value="${count}"></c:out></p>
              <div class="text-gray-700 flex justify-center items-center">
                <svg class="w-6 h-6 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" stroke-width="2">
                  <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                  <circle cx="12" cy="12" r="3"></circle>
                </svg>
                <span class="text-lg font-medium">1.2K Views</span>
              </div>
            </div>
          </div>
        </div>

        <!-- Second Card: Total Leave Requests -->
        <div class="p-4 w-full md:w-1/3">
          <div class="h-72 gradient-violet border-2 border-gray-200 border-opacity-60 rounded-lg overflow-hidden shadow-md">
            <div class="p-6 text-center">
              <img class="h-56 w-full object-cover mb-4" src="https://img.freepik.com/free-vector/businessmen-get-advertising-phishing-spreading-malware-irrelevant-unsolicited-spam-message-spam-unsolicited-messages-malware-spreading-concept_335657-1837.jpg" alt="Total Leave Requests">
              <h1 class="title-font text-2xl font-bold text-gray-900 mb-3">Total Leave Requests</h1>
              <p class="text-6xl font-extrabold text-black mb-4"><c:out value="${lcount}"></c:out></p>
              <div class="text-gray-700 flex justify-center items-center">
                <svg class="w-6 h-6 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" stroke-width="2">
                  <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                  <circle cx="12" cy="12" r="3"></circle>
                </svg>
                <span class="text-lg font-medium">800 Views</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
