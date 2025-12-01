
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>

    <style>
        body {
            margin: 0;
            height: 100vh;
            font-family: "Inter", sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #106EBE, #0FFCBE);
            overflow: hidden;
            position: relative;
        }

        /* Floating + Rotating boxes */
        .floating-box {
            position: absolute;
            backdrop-filter: blur(8px);
            background: rgba(255, 255, 255, 0.15);
            border: 1px solid rgba(255, 255, 255, 0.25);
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
            animation: fallRotate 14s linear infinite;
        }

        @keyframes fallRotate {
            0% { top: -150px; transform: rotate(0deg) scale(1); opacity: 0; }
            10% { opacity: 1; }
            50% { opacity: 1; }
            100% { top: 110vh; transform: rotate(360deg) scale(1.05); opacity: 0; }
        }

        /* Form container */
        .container {
            width: 420px;
            background: rgba(255, 255, 255, 0.4);
            backdrop-filter: blur(12px);
            padding: 35px 45px;
            border-radius: 18px;
            box-shadow: 0 15px 45px rgba(0,0,0,0.15);
            z-index: 20;
        }

        h2 {
            text-align: center;
            margin-bottom: 28px;
            font-size: 26px;
            font-weight: 700;
            color: #106EBE;
        }

        .form-group { margin-bottom: 18px; }

        label {
            font-weight: 600;
            font-size: 14px;
            display: block;
            margin-bottom: 6px;
            color: #0D2A4A;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 15px;
            outline: none;
        }

        input:focus {
            border-color: #106EBE;
            box-shadow: 0 0 6px rgba(16, 110, 190, 0.35);
        }

        .error {
            color: #d9534f;
            font-size: 13px;
            margin-top: 5px;
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            background: #106EBE;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: 600;
            border-radius: 10px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .submit-btn:hover {
            background: #0D5BA0;
            box-shadow: 0 6px 18px rgba(16, 110, 190, 0.35);
        }
    </style>
</head>

<body>

<!-- Floating Boxes -->
<div class="floating-box" style="width:90px; height:90px; left:10%; animation-duration:12s;"></div>
<div class="floating-box" style="width:110px; height:110px; left:35%; animation-duration:15s;"></div>
<div class="floating-box" style="width:95px; height:95px; left:60%; animation-duration:14s;"></div>
<div class="floating-box" style="width:80px; height:80px; left:82%; animation-duration:16s;"></div>

<!-- Registration Form -->
<div class="container">
    <h2>Student Registration</h2>

    <form:form modelAttribute="student" action="register" method="post">

        <div class="form-group">
            <label for="studentName">Full Name</label>
            <form:input path="studentName" id="studentName"/>
            <form:errors path="studentName" cssClass="error"/>
        </div>

        <div class="form-group">
            <label for="email">Email Address</label>
            <form:input path="email" id="email"/>
            <form:errors path="email" cssClass="error"/>
        </div>

        <div class="form-group">
            <label for="phoneNumber">Phone Number (+91XXXXXXXXXX)</label>
            <form:input path="phoneNumber" id="phoneNumber"/>
            <form:errors path="phoneNumber" cssClass="error"/>
        </div>

        <button type="submit" class="submit-btn">Register</button>

    </form:form>
</div>

</body>
</html>