<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
    <style>
        body {
            background-color: #f4f4f4;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        .card-header {
            background-color: #007BFF;
            color: #fff;
            text-align: center;
            font-size: 24px;
        }
        .card-body {
            padding: 20px;
        }
        .form-label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-header">Register Page</div>
                   <%--  <p class="fs-bold text-center">${msg }</p> --%>
                    <c:if test="${not empty error}">
                    <div class="alert alert-info">${error}</div>
                </c:if>
                <c:remove var="error" />
                    <div class="card-body">
                        <form action="createUser" method="post">
                            <div class="mb-3">
                                <label for="name" class="form-label">Full Name</label>
                                <input type="text" class="form-control" name="name" id="name" required>
                            </div>
                            <div class="mb-3">
                                <label for="dob" class="form-label">Date of Birth</label>
                                <input type="date" class="form-control" name="dob" id="dob" required>
                            </div>
                            <div class="form-group mb-3">
                                <label>Gender:</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="male" value="male" required>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="female" value="female">
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="streetAddress" class="form-label">Street Address</label>
                                <input type="text" class="form-control" name="streetAddress" id="streetAddress">
                            </div>
                            <div class="mb-3">
                                <label for="city" class="form-label">City</label>
                                <input type="text" class="form-control" name="city" id="city">
                            </div>
                            <div class="mb-3">
                                <label for="state" class="form-label">State</label>
                                <input type="text" class="form-control" name="state" id="state">
                            </div>
                            <div class="mb-3">
                                <label for="loginId" class="form-label">Login Id</label>
                                <input type="text" class="form-control" name="loginId" id="loginId" required>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                <input type="password" class="form-control" name="password" id="exampleInputPassword1" required>
                            </div>
                            <button type="submit" class="btn btn-primary col-md-12">Register</button>
                            
                            
                        </form>
                    </div>
                </div>
                <span class="d-block text-center mt-3">Back to <a href="home">home</a> page</span>
            </div>
        </div>
    </div>
</body>
</html>
