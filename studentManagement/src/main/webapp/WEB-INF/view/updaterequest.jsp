<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>

    <style>
        body {
            margin: 0;
            font-family: "Poppins", Arial, sans-serif;
            background: linear-gradient(135deg, #106EBE, #0FFCBE);
            overflow-x: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
        }

        /* Floating Aesthetic Shapes */
        .float-shape {
            position: absolute;
            border-radius: 22px;
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(8px);
            box-shadow: 0 12px 28px rgba(0,0,0,0.10);
            animation: floatDown 12s linear infinite;
        }

        .shape1 { width: 160px; height: 160px; left: 10%; animation-delay: 0s; }
        .shape2 { width: 230px; height: 230px; left: 45%; animation-delay: 3s; }
        .shape3 { width: 140px; height: 140px; left: 80%; animation-delay: 6s; }

        @keyframes floatDown {
            0% { transform: translateY(-220px) rotate(0deg); opacity: 0; }
            10% { opacity: 1; }
            85% { opacity: 1; }
            100% { transform: translateY(110vh) rotate(40deg); opacity: 0; }
        }

        /* Main Form Box */
        .form-box {
            width: 420px;
            padding: 40px 36px;
            background: rgba(255, 255, 255, 0.70);
            border-radius: 18px;
            backdrop-filter: blur(12px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.18);
            animation: fadeIn 1.2s ease-out;
            z-index: 3;
            border: 1px solid rgba(16,110,190,0.25);
        }

        h2 {
            text-align: center;
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 28px;
            color: #0A4F8A;
        }

        label {
            font-size: 15px;
            font-weight: 600;
            color: #053B74;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px 14px;
            margin-top: 8px;
            margin-bottom: 25px;
            border-radius: 10px;
            border: 1px solid #98e7d5;
            background: rgba(255,255,255,0.85);
            font-size: 15px;
            transition: 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #0FFCBE;
            box-shadow: 0 0 0 0.25rem rgba(15, 252, 190, 0.25);
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #106EBE;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s ease;
            letter-spacing: 0.5px;
        }

        button:hover {
            background: #0A4F8A;
            transform: translateY(-3px);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>

<!-- Floating Shapes -->
<div class="float-shape shape1"></div>
<div class="float-shape shape2"></div>
<div class="float-shape shape3"></div>

<!-- Main Form Box -->
<div class="form-box">
    <h2>Update Student Details ✏️</h2>

    <form action="update" method="get">
        <label for="studentId">Enter Student ID:</label>
        <input type="text" name="id" id="studentId" placeholder="e.g., 101" required>

        <button type="submit">Proceed to Update</button>
    </form>
</div>

</body>
</html>
