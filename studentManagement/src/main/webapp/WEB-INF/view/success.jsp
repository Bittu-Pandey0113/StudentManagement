<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>

    <style>
        body {
            margin: 0;
            font-family: "Poppins", Arial, sans-serif;
            background: linear-gradient(135deg, #c9ffe5, #a4ffd4, #d0fff0);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .success-box {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 40px 50px;
            width: 380px;
            text-align: center;
            animation: fadeIn 0.9s ease-out;
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.18);
        }

        .success-icon {
            font-size: 60px;
            color: #1e8e3e;
            margin-bottom: 20px;
            animation: pop 0.6s ease-out;
        }

        .success-box h2 {
            font-size: 28px;
            color: #1e8e3e;
            margin-bottom: 15px;
        }

        .success-box p {
            font-size: 16px;
            color: #444;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        @keyframes pop {
            0%   { transform: scale(0.6); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }
    </style>

    <script>
        // Auto redirect after 3.5 seconds
        setTimeout(function() {
            window.location.href = '<c:out value="${redirectUrl}" />';
        }, 3500);
    </script>
</head>
<body>

<div class="success-box">
    <div class="success-icon">✔</div>
    <h2>Student Details Deleted!</h2>
    <p>You will be redirected shortly...</p>
</div>

</body>
</html>
