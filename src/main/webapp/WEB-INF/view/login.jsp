<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
</head>
<body>
    <div class="container pt-4">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-6">
                <c:if test="${not empty msg}">
                    <div class="alert alert-info">${msg}</div>
                </c:if>
                <c:remove var="msg" />
                <h1 class="text-center">Login</h1>
                <form action="verify" method="post">
                    <div class="mb-3">
                        <label for="loginId" class="form-label">Login Id</label>
                        <input type="text" class="form-control" id="loginId" name="loginId" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Remember me</label>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Login</button>
                    </div>
                </form>
                <div class="mt-3">
                    <span>Don't have an account? <a href="registration">Register here</a></span>
                </div>
                <div class="mt-3">
                    <span>Back to <a href="home">home</a> page</span>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
