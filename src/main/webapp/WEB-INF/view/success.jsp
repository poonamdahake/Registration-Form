<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .container {
            margin-top: 100px;
        }
        .success-heading {
            font-size: 36px;
            color: #4CAF50;
        }
        .user-name {
            font-size: 24px;
            margin-top: 20px;
        }
        .back-link {
            font-size: 16px;
            margin-top: 20px;
        }
        .back-link a {
            text-decoration: none;
            color: #007BFF;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="success-heading">Registration Successfully</h1>
        <hr>
     <h2 class="user-name">Name: ${user.name }</h2>
        <p class="back-link">Back to <a href="home">home</a> page</p>
    </div>
</body>
</html>
