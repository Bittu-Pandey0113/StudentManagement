<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About | Student Portal</title>

    <style>
        body {
            margin: 0;
            font-family: "Poppins", Arial, sans-serif;
            background: linear-gradient(135deg, #0FFCBE, #A9EFFE, #106EBE);
            overflow-x: hidden;
            position: relative;
        }

        /* Floating Boxes */
        .float-box {
            position: absolute;
            border-radius: 18px;
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
            animation: fall 12s linear infinite;
        }

        .box1 { width: 160px; height: 160px; left: 10%; animation-delay: 0s; }
        .box2 { width: 220px; height: 220px; left: 50%; animation-delay: 2s; }
        .box3 { width: 120px; height: 120px; left: 75%; animation-delay: 4s; }

        @keyframes fall {
            0%   { transform: translateY(-250px) rotate(0deg); opacity: 0; }
            10%  { opacity: 1; }
            90%  { opacity: 1; }
            100% { transform: translateY(110vh) rotate(360deg); opacity: 0; }
        }

        /* Navbar */
        .navbar {
            background: rgba(16, 110, 190, 0.92);
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            position: sticky;
            top: 0;
            z-index: 10;
            backdrop-filter: blur(5px);
            box-shadow: 0 3px 12px rgba(0,0,0,0.2);
        }

        .navbar a {
            color: #E8FFFF;
            margin-left: 20px;
            text-decoration: none;
            font-weight: 600;
            transition: 0.3s ease;
        }

        .navbar a:hover {
            opacity: 0.8;
            text-decoration: underline;
        }

        /* About Content */
        .about-container {
            max-width: 900px;
            margin: 120px auto;
            padding: 40px 30px;
            background: rgba(255,255,255,0.65);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.12);
            position: relative;
            z-index: 2;
        }

        .about-container h1 {
            text-align: center;
            color: #073A63;
            margin-bottom: 25px;
            font-size: 36px;
        }

        .about-container p {
            font-size: 17px;
            color: #09476e;
            line-height: 1.8;
            text-align: justify;
        }

        ul li {
            color: #073A63;
            margin-bottom: 10px;
        }

        .btn-home {
            display: inline-block;
            padding: 12px 25px;
            margin-top: 20px;
            background: #106EBE;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn-home:hover {
            background: #0c5aa0;
            transform: translateY(-3px);
        }

    </style>
</head>
<body>

<!-- Floating Boxes -->
<div class="float-box box1"></div>
<div class="float-box box2"></div>
<div class="float-box box3"></div>

<!-- Navbar -->
<div class="navbar">
    <h3 style="margin:0;">Student Portal</h3>
    <div>
        <a href="index.jsp">Home</a>
        <a href="register">Register</a>
        <a href="fetchAll">Fetch All</a>
        <a href="about">About</a>
    </div>
</div>

<!-- About Content -->
<div class="about-container">
    <h1>About Student Portal</h1>
    <p>
        Welcome to the Student Portal, a modern and professional platform designed for managing student information efficiently.
        Our goal is to provide a smooth, user-friendly experience for administrators, teachers, and students alike.
        <br><br>
        The portal features:
        <ul>
            <li>Easy registration and management of student details</li>
            <li>Professional UI with smooth animations and visual feedback</li>
            <li>Secure update and deletion of student records</li>
            <li>Responsive design with a modern blue–mint theme</li>
        </ul>
      <p>  With Student Portal, managing student data becomes seamless and visually appealing, ensuring better productivity and satisfaction.</p>
    </p>

    <div style="text-align:center;">
        <a href="index.jsp" class="btn-home">Back to Home</a>
    </div>
</div>

</body>
</html>
