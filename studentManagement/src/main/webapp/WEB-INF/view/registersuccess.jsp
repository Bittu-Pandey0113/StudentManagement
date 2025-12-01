<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>

    <style>

        /* Background + Layout */
        body {
            margin: 0;
            height: 100vh;
            font-family: 'Inter', Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #106EBE, #0FFCBE);
            overflow: hidden;
            position: relative;
        }

        /* Floating Decorative Boxes */
        .floating-box {
            position: absolute;
            backdrop-filter: blur(10px);
            background: rgba(255, 255, 255, 0.18);
            border: 1px solid rgba(255, 255, 255, 0.35);
            border-radius: 22px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.12);
            animation: floatDown 14s linear infinite;
        }

        @keyframes floatDown {
            0% { top: -120px; opacity: 0; transform: rotate(0deg); }
            10% { opacity: 1; }
            50% { opacity: 1; }
            100% { top: 110vh; opacity: 0; transform: rotate(360deg); }
        }

        /* Card */
        .card {
            background: rgba(255, 255, 255, 0.40);
            backdrop-filter: blur(14px);
            padding: 40px 50px;
            border-radius: 22px;
            max-width: 500px;
            width: 90%;
            text-align: center;
            box-shadow: 0 18px 50px rgba(0,0,0,0.18);
            animation: fadeIn 0.6s ease-in-out;
            z-index: 20;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .checkmark {
            font-size: 70px;
            color: #0A8F45;
            margin-bottom: 12px;
            animation: pop 0.4s ease-out;
            font-weight: bold;
        }

        @keyframes pop {
            0% { transform: scale(0.3); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }

        h2 {
            color: #03396C;
            margin-bottom: 12px;
            font-size: 28px;
            font-weight: 700;
        }

        p {
            color: #0A2A4A;
            font-size: 15px;
            margin-bottom: 22px;
        }

        /* Details Box */
        .details {
            text-align: left;
            background: rgba(255, 255, 255, 0.55);
            padding: 15px 20px;
            border-radius: 12px;
            margin-bottom: 28px;
            border: 1px solid rgba(255, 255, 255, 0.65);
        }

        .details p {
            margin: 8px 0;
            font-size: 14px;
            color: #01405A;
            font-weight: 500;
        }

        /* Button */
        .btn-home {
            padding: 14px 20px;
            background: linear-gradient(135deg, #106EBE, #0FFCBE);
            border: none;
            color: white;
            border-radius: 12px;
            font-size: 17px;
            font-weight: 700;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            transition: 0.3s ease;
        }

        .btn-home:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 22px rgba(0,0,0,0.20);
        }

    </style>
</head>

<body>

<!-- Floating Boxes -->
<div class="floating-box" style="width:90px;height:90px;left:10%;animation-duration:12s;"></div>
<div class="floating-box" style="width:110px;height:110px;left:35%;animation-duration:15s;"></div>
<div class="floating-box" style="width:95px;height:95px;left:60%;animation-duration:14s;"></div>
<div class="floating-box" style="width:80px;height:80px;left:82%;animation-duration:16s;"></div>


<div class="card">

    <div class="checkmark">✔</div>

    <h2>Registration Successful</h2>
    <p>Your information has been successfully submitted.</p>

    <div class="details">
        <p><strong>Name:</strong> <c:out value="${student.studentName}" /></p>
        <p><strong>Email:</strong> <c:out value="${student.email}" /></p>
        <p><strong>Phone:</strong> <c:out value="${student.phoneNumber}" /></p>
    </div>

    <a href="index.jsp" class="btn-home">Go to Home</a>

</div>

</body>
</html>
