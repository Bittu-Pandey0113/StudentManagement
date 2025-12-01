<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List | Student Portal</title>

    <style>
        body {
            font-family: "Poppins", Arial, sans-serif;
            margin: 0;
            background: linear-gradient(135deg, #E8F8F4, #C6FDF0, #B9EFFF); /* mint + soft blue */
            overflow-x: hidden;
            position: relative;
        }

        /* Floating Boxes */
        .float-box {
            position: absolute;
            border-radius: 18px;
            background: rgba(255,255,255,0.25);
            backdrop-filter: blur(8px);
            box-shadow: 0 10px 25px rgba(16, 110, 190, 0.2); /* Blue tint */
            animation: fall 10s linear infinite;
        }
        .box1 { width: 160px; height: 160px; left: 10%; animation-delay: 0s; }
        .box2 { width: 220px; height: 220px; left: 50%; animation-delay: 2s; }
        .box3 { width: 120px; height: 120px; left: 75%; animation-delay: 4s; }

        @keyframes fall {
            0% { transform: translateY(-250px) rotate(0deg); opacity: 0; }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { transform: translateY(110vh) rotate(25deg); opacity: 0; }
        }

        /* Navbar */
        .navbar {
            background: rgba(16, 110, 190, 0.85); /* Blue */
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 10;
            color: white;
            backdrop-filter: blur(6px);
            box-shadow: 0 3px 12px rgba(16, 110, 190, 0.25);
        }
        .navbar h2 {
            margin: 0;
            color:white;

        }
        .navbar a {
            color: white;
            margin-left: 30px;
            text-decoration: none;
            font-weight: 600;
        }
        .navbar a:hover { opacity: 0.8; }

        /* Table container */
        .table-container {
            max-width: 900px;
            margin: 120px auto 50px auto;
            background: rgba(255,255,255,0.7);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 30px;
            box-shadow: 0 15px 35px rgba(16, 110, 190, 0.2);
            position: relative;
            z-index: 2;
        }

        h2 {
            text-align: center;
            color: #106EBE; /* Blue */
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }
        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #d5e6f7;
        }
        tr:nth-child(even) { background: #E8F5FF; } /* very light blue */
        tr:hover { background: #D4ECFF; }

        th {
            background: #0FFCBE; /* Mint */
            color: #06355F;     /* Dark blue */
            font-weight: 700;
        }

        /* Buttons below table */
        .btn-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 25px;
        }
        .btn {
            padding: 10px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            color: #06355F;
            background: #0FFCBE; /* Mint */
            transition: 0.3s;
        }
        .btn:hover {
            background: #0DE7AC;
            transform: translateY(-2px);
        }

        /* Messages */
        .message {
            text-align: center;
            font-size: 1.1em;
            margin-bottom: 15px;
            color: #0A7C2E; /* Greenish blue */
        }
        .error-message { color: #BE1E1E; }
    </style>
</head>
<body>

<div class="float-box box1"></div>
<div class="float-box box2"></div>
<div class="float-box box3"></div>

<!-- Navbar -->
<div class="navbar">
    <h2>Student Portal</h2>
    <div>
        <a href="index.jsp">Home</a>
        <a href="register">Register</a>
        <a href="about">About</a>
    </div>
</div>

<div class="table-container">
    <h2>All Students</h2>

    <!-- Flash Messages -->
    <c:if test="${not empty successMessage}">
        <div class="message">${successMessage}</div>
    </c:if>
    <c:if test="${not empty errorMessage}">
        <div class="message error-message">${errorMessage}</div>
    </c:if>

    <table>
        <tr>
            <th>Roll No</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.rollNo}</td>
                <td>${student.studentName}</td>
                <td>${student.email}</td>
                <td>${student.phoneNumber}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="btn-container">
        <a href="updateRequest" class="btn">Update Student</a>
        <a href="deleteRequest" class="btn">Delete Student</a>
    </div>
</div>

</body>
</html>
