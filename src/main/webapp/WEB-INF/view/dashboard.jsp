<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
    <title>User Table</title>
    <style>
        body {
            background-color: #f4f4f4;
             text-align: center;
        }
        .container {
            margin-top: 50px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
         .success-heading {
            font-size: 36px;
            color: #4CAF50;
        }
        .user-name {
            font-size: 24px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
        <h1 class="success-heading">Login Successful</h1>
        <hr>
        <h1 class="success-heading">Hello Welcome</h1>
        <hr>
        <%-- <h2 class="user-name">Name: ${user.name }</h2>
        <p class="back-link">Back to <a href="home">home</a> page</p> --%>
    </div>
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-10">
                <h2 class="text-center mb-4">User Table</h2>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">DOB</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Street Address</th>
                            <th scope="col">City</th>
                            <th scope="col">State</th>
                             <th scope="col">Login Id</th>
                            <th scope="col">Action</th>
                      <!--  <th scope="col">Password</th> -->
                          
                        </tr>
                    </thead>
                    <tbody>
                       
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.name}</td>
            <td>${user.dob}</td>
            <td>${user.gender}</td>
            <td>${user.streetAddress}</td>
            <td>${user.city}</td>
            <td>${user.state}</td>
            <td>${user.loginId}</td>
            <td>
                <c:url var="deleteUrl" value="/delete/${user.id}" />
                <a href="${deleteUrl}" class="btn btn-sm btn-danger">Delete</a>
            </td>
        </tr>
    </c:forEach>
</tbody>

                  
                </table>
                <div class="text-center">
                    <a href="home" class="btn btn-primary">Back to Home</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
