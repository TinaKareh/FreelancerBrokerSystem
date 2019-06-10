<%-- 
    Document   : admin_dashboard
    Created on : Mar 19, 2019, 2:03:47 PM
    Author     : GraceTina
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap-table/bootstrap-table.min.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap-table/bootstrap-table.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <title>Admin | Dashboard</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a href="/logout">Log out</a>
            <a href="/admin/profile/view">Profile</a>
            <a href="">Payment</a>
            <a href="">Reports</a>
            <a class="active" href="/dashboard/admin">Home</a>
        </div>
        <div style="margin-top: 50px;">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th style="color: #0069d9; font-style: oblique;">User ID</th>
                        <th style="color: #0069d9; font-style: oblique;">First Name</th>
                        <th style="color: #0069d9; font-style: oblique;">Last Name</th>
                        <th style="color: #0069d9; font-style: oblique;">User Name</th>
                        <th style="color: #0069d9; font-style: oblique;">Email Address</th>
                        <th style="color: #0069d9; font-style: oblique;">Phone Number</th>
                        <th style="color: #0069d9; font-style: oblique;">User Type</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items = "${persons}" var="person" >
                    <tr>
                        <td>${person.userId}</td>
                        <td>${person.firstName}</td> <!-- dummy data ==> alignment purposes -->
                        <td>${person.lastName}</td>
                        <td>${person.userName}</td>
                        <td>${person.emailAddress}</td>
                        <td>${person.phoneNumber}</td>
                        <td>${person.uType.uType}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
