<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Portal</title>

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
            0% { transform: translateY(-250px) rotate(0deg); opacity: 0; }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { transform: translateY(110vh) rotate(360deg); opacity: 0; }
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 50px;
            background: rgba(16, 110, 190, 0.92);
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            position: sticky;
            top: 0;
            z-index: 10;
            backdrop-filter: blur(6px);
        }

        .navbar h2 {
            margin: 0;
            color: #E8FFFF;
            font-size: 28px;
            letter-spacing: 1px;
        }

        .navbar a {
            color: #E8FFFF;
            margin-left: 25px;
            text-decoration: none;
            font-weight: 600;
            font-size: 17px;
            transition: 0.3s ease;
        }

        .navbar a:hover { opacity: 0.8; text-decoration: underline; }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 120px 20px 50px 20px;
            position: relative;
            z-index: 2;
        }

        .hero h1 {
            font-size: 48px;
            font-weight: 700;
            color: #073A63;
            margin-bottom: 20px;
            animation: fadeDown 1s ease-out;
        }

        .hero p {
            font-size: 18px;
            max-width: 650px;
            margin: auto;
            color: #093f6e;
            line-height: 1.6;
            margin-bottom: 40px;
            animation: fadeIn 1.3s ease-out;
        }

        /* Buttons */
        .btn {
            padding: 12px 28px;
            font-size: 16px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
            transition: 0.3s ease-in-out;
        }

        .btn-register { background: #106EBE; color: white; margin-right: 12px; }
        .btn-register:hover { background: #0c5aa0; transform: translateY(-3px); }

        .btn-about { background: #0FFCBE; color: #073A63; margin-right: 12px; }
        .btn-about:hover { background: #0cd7a4; transform: translateY(-3px); }

        .btn-fetch { background: #073A63; color: #0FFCBE; }
        .btn-fetch:hover { background: #052c4a; transform: translateY(-3px); }

        /* Why Choose Us Section */
        .why-choose {
            text-align: center;
            padding: 80px 20px;
            position: relative;
            z-index: 2;
        }

        .why-choose h2 {
            font-size: 36px;
            color: #073A63;
            margin-bottom: 30px;
        }

        .why-choose p {
            font-size: 18px;
            max-width: 750px;
            margin: auto;
            line-height: 1.8;
            color: #09476e;
        }

        @keyframes fadeDown { from { opacity: 0; transform: translateY(-20px); } to { opacity: 1; transform: translateY(0); } }
        @keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }

    </style>
</head>
<body>

<!-- Floating Boxes -->
<div class="float-box box1"></div>
<div class="float-box box2"></div>
<div class="float-box box3"></div>

<!-- Navbar -->
<div class="navbar">
    <h2>Student Portal</h2>
    <div>
        <a href="index.jsp">Home</a>
        <a href="register">Register</a>
        <a href="fetchAll">Fetch All</a>
        <a href="about">About</a>
    </div>
</div>

<!-- Hero Section -->
<div class="hero">
    <h1>Welcome to Student Portal</h1>
    <p>A modern and visually pleasing system for managing student information. Designed with clarity, performance, and a premium user experience.</p>

    <a href="register" class="btn btn-register">Register Now</a>
    <a href="about" class="btn btn-about">Learn More</a>
    <a href="fetchAll" class="btn btn-fetch">Fetch All Students</a>
</div>

<!-- Why Choose Us Section -->
<div class="why-choose">
    <h2>Why Choose Us?</h2>
    <p>
        We offer a professional and user-friendly student portal with a clean and intuitive interface.
        Smooth animations, fast performance, and accurate data handling ensure an efficient experience.
        Whether you are registering new students or managing existing records, our portal makes the process seamless and visually appealing.
    </p>
</div>

</body>
</html>
