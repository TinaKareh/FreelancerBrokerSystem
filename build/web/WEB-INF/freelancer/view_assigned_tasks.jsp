<%-- 
    Document   : dashboard
    Created on : Mar 19, 2019, 2:03:18 PM
    Author     : GraceTina
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />

        <title>Freelancer | Assigned Tasks</title>
    </head>
    <body>
        <div class="header1">
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a href="/get/online/help" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/freelancer/profile/view">Profile</a>
            <a href="/freelancer/assigned/tasks">Assigned Tasks</a>
            <a class="active" href="/dashboard/freelancer">Home</a>
        </div>
        <div class="container">
            <div class="card" style="margin-top: 50px;">
                <div class="card-header">Assigned Tasks</div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th style="color: #0069d9; font-style: oblique;">Project Name</th>
                            <th style="color: #0069d9; font-style: oblique;">Category</th>
                            <th style="color: #0069d9; font-style: oblique;">Duration</th>
                            <th style="color: #0069d9; font-style: oblique;">Price</th>
                            <th style="color: #0069d9; font-style: oblique;">Description</th>
                            <th style="color: #0069d9; font-style: oblique;">Client Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items = "${tasks}" var="task" >
                            <tr>
                                <td>${task.projectName}</td>
                                <td>${task.category}</td> <!-- dummy data ==> alignment purposes -->
                                <td>${task.bestDeal.duration}</td>
                                <td>${task.bestDeal.bidAmount}</td>
                                <td>${task.description}</td>
                                <td>${task.appliedBy.user.firstName}&nbsp ${task.appliedBy.user.lastName}</td>
                                <td><a href="/freelancer/status/report?taskId=${task.taskId}" class="btn btn-sm btn-danger">Report</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
