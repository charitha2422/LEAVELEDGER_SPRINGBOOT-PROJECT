<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Leaves Data</title>
    <style>
          body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f9;
  color: #333;
  margin: 0;
  padding: 0;
}

/* Navbar Styling */
nav {
  background-color: #333;
  padding: 15px;
  text-align: center;
  position: fixed;
  width: 100%;
  top: 0;
  z-index: 999;
}

nav a {
  color: white;
  padding: 14px 20px;
  text-decoration: none;
  font-weight: bold;
}

nav a:hover {
  background-color: #ddd;
  color: black;
}

/* Heading Container */
.heading-container {
  text-align: center;
  margin-top: 100px; /* Reduced space below the navbar */
  margin-bottom: 10px; /* Reduced space below the heading */
}

/* Heading */
.heading-container h3 {
  color: black;
  font-size: 28px;
  margin: 0;
}

/* Table Container */
.table-container {
  margin-top: 10px; /* Reduced space between heading and table */
  padding: 0;
}

/* Table Styling */
table {
  width: 90%;
  max-width: 1500px;
  margin: 0 auto; /* Center the table */
  border-collapse: collapse;
  background-color: #fff;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
  overflow: hidden;
}

/* Table Header */
th {
  background: #7d2ae8   ; /* Gradient header */
  color: white;
  font-weight: bold;
  text-transform: uppercase;
  padding: 15px;
}

/* Table Rows */
td {
  padding: 12px 15px;
  text-align: center;
  font-size: 15px;
}

/* Alternating Row Colors */
tr:nth-child(even) {
  background-color: #f3e5f5; /* Light violet for even rows */
}

tr:nth-child(odd) {
  background-color: #ffffff; /* Light blue for odd rows */
}

/* Hover Effect for Rows */
tr:hover {
  background-color: #d1c4e9; /* Light purple on hover */
  cursor: pointer;
}

/* Buttons for Accept and Reject */
.action-buttons {
  text-align: center;
  white-space: nowrap;
}

.action-buttons a {
  display: inline-block;
  text-decoration: none;
  padding: 10px 20px;
  margin: 0 5px;
  border-radius: 5px;
  font-weight: bold;
  color: white;
  transition: background-color 0.3s, border-color 0.3s;
}

.action-buttons .accept {
  background-color: #28a745; /* Green */
  border: 2px solid #28a745;
}

.action-buttons .reject {
  background-color: #dc3545; /* Red */
  border: 2px solid #dc3545;
}

.action-buttons .accept:hover {
  background-color: #218838;
  border-color: #218838;
}

.action-buttons .reject:hover {
  background-color: #c82333;
  border-color: #c82333;
}
    </style>
</head>
<body>
    <%@ include file="adminhome.jsp" %>

    <div class="heading-container">
    <br><br>
        <h3><u><b>Employee Leave details</b></u></h3>
    </div>

    <div class="table-container">
        <table>
            <tr>
                <th>Employee ID</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>LEAVE START DATE(FROM)</th>
                <th>LEAVE END DATE(TO)</th>
                <th>LEAVE TYPE</th>
                <th>REASON</th>
                <th>STATUS</th>
                <th>ACTION</th>
             
            </tr>
            <c:forEach items="${lelist}" var="leave">
                <tr>
                    <td><c:out value="${leave.id}"/></td>
                    <td><c:out value="${leave.name}"/></td>
                     <td><c:out value="${leave.email}"/></td>
                    <td><c:out value="${leave.startdate}"/></td>
                    <td><c:out value="${leave.enddate}"/></td>
                    <td><c:out value="${leave.leaveType}"/></td>
                    <td><c:out value="${leave.reason}"/></td>
                    <td><c:out value="${leave.status}"/></td>
                    
                    <td class="action-buttons">
                        <a href='<c:url value="updateleavestatus?id=${leave.id}&status=Accepted"/>' class="accept">Accept</a>
                        <a href='<c:url value="updateleavestatus?id=${leave.id}&status=Rejected"/>' class="reject">Reject</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
