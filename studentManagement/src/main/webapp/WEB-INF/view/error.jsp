<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error | Student Not Found</title>

    <style>
        body {
            margin: 0;
            font-family: "Poppins", Arial, sans-serif;
            background: linear-gradient(135deg, #E8F8F4, #C6FDF0, #B9EFFF); /* Mint + soft blue */
            overflow-x: hidden;
            position: relative;
        }

        /* Floating Boxes */
        .float-box {
            position: absolute;
            border-radius: 18px;
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(8px);
            box-shadow: 0 10px 25px rgba(16, 110, 190, 0.25);
            animation: fall 10s linear infinite;
        }

        .box1 { width: 160px; height: 160px; left: 10%; animation-delay: 0s; }
        .box2 { width: 210px; height: 210px; left: 45%; animation-delay: 2s; }
        .box3 { width: 130px; height: 130px; left: 78%; animation-delay: 4s; }

        @keyframes fall {
            0% { transform: translateY(-250px) rotate(0deg); opacity: 0; }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { transform: translateY(110vh) rotate(25deg); opacity: 0; }
        }

        /* Error Card */
        .card {
            width: 420px;
            padding: 35px;
            margin: 130px auto;
            background: rgba(255,255,255,0.7);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            box-shadow: 0 10px 35px rgba(16, 110, 190, 0.25);
            text-align: center;
            position: relative;
            z-index: 2;
            animation: fadeIn 1.2s ease;
        }

        h2 {
            color: #106EBE; /* Blue */
            font-size: 28px;
            font-weight: 800;
        }

        p {
            color: #0B4A7C; /* Dark blue */
            font-size: 17px;
            margin: 15px 0 30px;
        }

        .btn {
            display: inline-block;
            padding: 12px 26px;
            background: #0FFCBE; /* Mint */
            color: #06355F;      /* Contrast dark-blue */
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
            font-size: 16px;
        }

        .btn:hover {
            background: #0DE7AC; /* Slightly darker mint */
            transform: translateY(-3px);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(25px); }
            to { opacity: 1; transform: translateY(0); }
        }

    </style>
</head>

<body>

<!-- Floating Boxes -->
<div class="float-box box1"></div>
<div class="float-box box2"></div>
<div class="float-box box3"></div>

<!-- Error Card -->
<div class="card">
    <h2>Invalid Student ID</h2>

    <p>The student ID you entered does not exist.<br>
       Please check again and retry.</p>

    <a href="updateRequest" class="btn">Try Again</a>
</div>

</body>
</html>
