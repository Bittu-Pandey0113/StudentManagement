<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background */
        body {
            min-height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #e9f8ff, #d9fef3, #f0fbff);
            font-family: "Poppins", sans-serif;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding-top: 40px;
            overflow-x: hidden;
        }

        /* Main Card */
        .form-card {
            width: 100%;
            max-width: 560px;
            padding: 38px;
            border-radius: 18px;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(12px);
            box-shadow: 0 18px 40px rgba(0, 0, 0, 0.15);
            border: 1px solid rgba(16, 110, 190, 0.25);
            animation: fadeIn 0.9s ease-out;
            position: relative;
            z-index: 10;   /* form stays on TOP */
        }

        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(40px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        /* Heading */
        h2 {
            color: #106EBE;
            text-align: center;
            font-weight: 700;
            margin-bottom: 28px;
            font-size: 32px;
        }

        /* Input Styling */
        .form-control {
            border-radius: 10px;
            border: 1px solid #b8eaf1;
            padding: 12px;
        }
        .form-control:focus {
            border-color: #106EBE;
            box-shadow: 0 0 0 0.25rem rgba(16, 110, 190, 0.25);
        }

        /* Labels */
        .fw-semibold {
            color: #0a4370;
        }

        /* Checkbox Row */
        .check-row {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 6px;
        }
        .check-row label {
            font-size: 0.9rem;
            color: #555;
        }

        /* Error text */
        .error {
            color: #d9144c;
            font-size: 0.85rem;
            margin-top: 4px;
        }

        /* Primary Button */
        .btn-primary {
            background-color: #106EBE;
            border-color: #106EBE;
            padding: 12px;
            font-size: 1.08rem;
            border-radius: 12px;
            transition: 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #0b56a0;
            border-color: #0b56a0;
            transform: translateY(-2px);
        }

        /* Outline Buttons */
        .btn-outline-secondary {
            border-radius: 10px;
            border-color: #0FFCBE;
            color: #106EBE;
        }
        .btn-outline-secondary:hover {
            background: #0FFCBE;
            color: #000;
        }

        .btn-outline-dark {
            border-radius: 10px;
        }

        /* Floating Background Shapes */
        .floating {
            position: fixed;
            top: -5%;
            width: 20px;
            height: 20px;
            background: #0FFCBE;
            border-radius: 6px;
            filter: drop-shadow(0 6px 14px rgba(16, 110, 190, 0.25));
            animation: floatDown 12s linear infinite;
            opacity: 0.9;
            z-index: -1;   /* fall BEHIND the form */
        }

        @keyframes floatDown {
            0% { transform: translateY(-10vh) rotate(0); }
            100% { transform: translateY(110vh) rotate(360deg); }
        }
    </style>

    <script>
        function toggleField(checkbox, fieldId, hiddenId) {
            const field = document.getElementById(fieldId);
            const hidden = document.getElementById(hiddenId);

            field.disabled = !checkbox.checked;
            hidden.disabled = checkbox.checked;

            if (checkbox.checked) field.focus();
        }

        document.addEventListener("DOMContentLoaded", () => {
            const colors = ["#0FFCBE", "#8fffe6", "#7fffd4", "#b9ffea"];
            for (let i = 0; i < 18; i++) {
                const b = document.createElement("div");
                b.className = "floating";
                b.style.left = Math.random() * 100 + "vw";
                b.style.animationDuration = 10 + Math.random() * 12 + "s";
                b.style.width = 16 + Math.random() * 20 + "px";
                b.style.height = b.style.width;
                b.style.background = colors[Math.floor(Math.random() * colors.length)];
                b.style.animationDelay = -Math.random() * 20 + "s";
                document.body.appendChild(b);
            }
        });
    </script>

</head>
<body>

<div class="form-card">

    <h2>Update Student ✏️</h2>

    <form:form action="update" method="post" modelAttribute="student">

        <!-- NAME -->
        <div class="mb-4">
            <label class="fw-semibold">Student Name:</label>
            <div class="check-row">
                <input type="checkbox" id="chkName" onclick="toggleField(this, 'nameField', 'hiddenNameField')">
                <label for="chkName">Enable editing</label>
            </div>
            <form:input path="studentName" id="nameField" class="form-control" disabled="true"
                        placeholder="Enter updated name"/>
            <input type="hidden" id="hiddenNameField" name="studentName" value="${student.studentName}">
            <form:errors path="studentName" cssClass="error"/>
        </div>

        <!-- EMAIL -->
        <div class="mb-4">
            <label class="fw-semibold">Email Address:</label>
            <div class="check-row">
                <input type="checkbox" id="chkEmail" onclick="toggleField(this, 'emailField', 'hiddenEmailField')">
                <label for="chkEmail">Enable editing</label>
            </div>
            <form:input path="email" id="emailField" class="form-control" disabled="true"
                        placeholder="Enter updated email"/>
            <input type="hidden" id="hiddenEmailField" name="email" value="${student.email}">
            <form:errors path="email" cssClass="error"/>
        </div>

        <!-- PHONE -->
        <div class="mb-4">
            <label class="fw-semibold">Phone Number:</label>
            <div class="check-row">
                <input type="checkbox" id="chkPhone" onclick="toggleField(this, 'phoneField', 'hiddenPhoneField')">
                <label for="chkPhone">Enable editing</label>
            </div>
            <form:input path="phoneNumber" id="phoneField" class="form-control" disabled="true"
                        placeholder="Enter updated phone number"/>
            <input type="hidden" id="hiddenPhoneField" name="phoneNumber" value="${student.phoneNumber}">
            <form:errors path="phoneNumber" cssClass="error"/>
        </div>

        <button type="submit" class="btn btn-primary w-100 fw-bold mt-4">Update Details</button>

    </form:form>

    <div class="text-center mt-4">
        <a href="${pageContext.request.contextPath}/fetchAll" class="btn btn-outline-secondary btn-sm me-2">
            ← Back to List
        </a>
        <a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-outline-dark btn-sm">
            🏠 Home
        </a>
    </div>

</div>

</body>
</html>
