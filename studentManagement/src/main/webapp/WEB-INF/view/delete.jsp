<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Student | Student Portal</title>

    <style>
        body {
            margin: 0;
            font-family: "Poppins", Arial, sans-serif;
            background: linear-gradient(135deg, #B2B5E0, #C5ADC5, #DDD0C8); /* Blue/Purple/Beige theme */
            overflow-x: hidden;
            position: relative;
        }

        /* Floating Boxes */
        .float-box {
            position: absolute;
            border-radius: 18px;
            background: rgba(255, 255, 255, 0.28);
            backdrop-filter: blur(8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            animation: fall 10s linear infinite;
        }

        .box1 { width: 160px; height: 160px; left: 12%; animation-delay: 0s; }
        .box2 { width: 220px; height: 220px; left: 45%; animation-delay: 2s; }
        .box3 { width: 120px; height: 120px; left: 78%; animation-delay: 4s; }

        @keyframes fall {
            0% { transform: translateY(-250px) rotate(0deg); opacity: 0; }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { transform: translateY(110vh) rotate(25deg); opacity: 0; }
        }

        /* Navbar */
        .navbar {
            background: rgba(16, 110, 190, 0.8); /* Blue */
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 10;
            color: white;
            backdrop-filter: blur(5px);
            box-shadow: 0 3px 12px rgba(16,110,190,0.25);
        }

        .navbar a {
            color: white;
            margin-left: 20px;
            text-decoration: none;
            font-weight: 600;
        }

        .navbar a:hover {
            opacity: 0.8;
        }

        /* Main Delete Box */
        .delete-container {
            width: 380px;
            padding: 35px 35px;
            margin: 120px auto;
            background: rgba(255,255,255,0.65);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.15);
            position: relative;
            z-index: 2;
            animation: fadeIn 1.2s ease-out;
        }

        .delete-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #106EBE; /* Blue */
            font-size: 26px;
            font-weight: 700;
        }

        label {
            font-weight: 600;
            color: #106EBE; /* Blue */
        }

        input[type="text"] {
            width: 100%;
            padding: 12px 14px;
            margin-top: 8px;
            margin-bottom: 25px;
            border-radius: 8px;
            border: 1px solid #0FFCBE; /* Mint border */
            font-size: 15px;
        }

        input[type="text"]:focus {
            outline: none;
            border: 1.5px solid #106EBE;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #106EBE; /* Blue */
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background: #0FFCBE; /* Mint */
            color: #000;
            transform: translateY(-3px);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
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
        <a href="about.jsp">About</a>
    </div>
</div>

<!-- Delete Form Box -->
<div class="delete-container">
    <h2>Delete Student</h2>

    <form action="delete" method="post">
        <label for="studentId">Enter Student ID:</label>
        <input type="text" id="studentId" name="id" placeholder="e.g., 101" required>

        <button type="submit">Delete Student</button>
    </form>
</div>

</body>
</html>
