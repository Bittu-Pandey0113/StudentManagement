<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Delete Success</title>

    <!-- Redirect after 2.5s -->
    <meta http-equiv="refresh" content="2.5; URL=fetchAll"/>

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
            background: #E8F8F4; /* Soft mint background */
            font-family: "Poppins", Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Falling boxes */
        .box {
            position: absolute;
            width: 20px;
            height: 20px;
            background: #0FFCBE; /* Mint box */
            opacity: 0.7;
            animation: fall 6s linear infinite;
            border-radius: 6px;
        }

        @keyframes fall {
            0% { transform: translateY(-100px) rotate(0deg); }
            100% { transform: translateY(110vh) rotate(360deg); }
        }

        /* Message container */
        .container {
            background: #F2FBFF; /* Light pastel blue */
            padding: 40px 55px;
            border-radius: 18px;
            box-shadow: 0 8px 25px rgba(16, 110, 190, 0.25);
            text-align: center;
            z-index: 10;
        }

        h2 {
            color: #106EBE; /* Blue heading */
            font-size: 26px;
            margin-bottom: 15px;
        }

        p {
            color: #0B4A7C; /* Darker blue text */
            font-size: 17px;
            line-height: 1.5;
            margin-bottom: 20px;
        }

        .loader {
            margin: 0 auto;
            border: 5px solid #0FFCBE; /* Mint */
            border-top: 5px solid #106EBE; /* Blue */
            border-radius: 50%;
            width: 40px;
            height: 40px;
            animation: spin 1.5s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>

</head>
<body>

<!-- Falling mint-colored boxes -->
<%
    for (int i = 0; i < 20; i++) {
%>
<div class="box" style="
        left: <%= (int)(Math.random() * 100) %>vw;
        animation-duration: <%= 3 + Math.random() * 2 %>s;
        animation-delay: <%= Math.random() * 3 %>s;">
</div>
<%
    }
%>

<div class="container">
    <h2>Student Record Deleted</h2>

    <p>
        The student record has been deleted successfully.<br>
        You will be redirected shortly.
    </p>

    <div class="loader"></div>
</div>

</body>
</html>
