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

        <title>Client | Dashboard</title>
    </head>
    <body>
        <div class="header1">
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a href="/get/online/help" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/client/profile/view">Profile</a>
            <a  href="/client/view/status">Report</a>
            <a href="/client/payment">Payment</a>
            <a href="/client/add/task">Post a Job</a>
            <a class="active" href="/dashboard">Dashboard</a>
        </div>
        <div class="container">
            <div class="card" style="margin-top: 50px;">
                <div class="card-header">Active Tasks</div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th style="color: #0069d9; font-style: oblique;">Task ID</th>
                            <th style="color: #0069d9; font-style: oblique;">Project Name</th>
                            <th style="color: #0069d9; font-style: oblique;">Category</th>
                            <th style="color: #0069d9; font-style: oblique;">Duration</th>
                            <th style="color: #0069d9; font-style: oblique;">Price</th>
                            <th style="color: #0069d9; font-style: oblique;">Location</th>
                            <th style="color: #0069d9; font-style: oblique;">Description</th>
                            <th style="color: #0069d9; font-style: oblique;">Client Name</th>
                            <th style="color: #0069d9; font-style: oblique;">Status</th>
                            <th style="color: #0069d9; font-style: oblique;">Suitable Deals</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items = "${tasks}" var="task" >
                            <tr>
                                <td>${task.taskId}</td>
                                <td>${task.projectName}</td>
                                <td>${task.category}</td> 
                                <td>${task.duration}</td>
                                <td>${task.maxAmount}</td>
                                <td>${task.location}</td>
                                <td>${task.description}</td>
                                <td>${task.appliedBy.user.firstName}&nbsp ${task.appliedBy.user.lastName}</td>
                                <td>${task.status.status}</td>
                                <td><a href="/client/view/deals?taskId=${task.taskId}" class="btn btn-sm btn-primary">Deals</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="card" style="margin-top: 50px;">
                <div class="card-header">InActive Tasks</div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th style="color: #0069d9; font-style: oblique;">Task ID</th>
                            <th style="color: #0069d9; font-style: oblique;">Project Name</th>
                            <th style="color: #0069d9; font-style: oblique;">Category</th>
                            <th style="color: #0069d9; font-style: oblique;">Duration</th>
                            <th style="color: #0069d9; font-style: oblique;">Price</th>
                            <th style="color: #0069d9; font-style: oblique;">Location</th>
                            <th style="color: #0069d9; font-style: oblique;">Description</th>
                            <th style="color: #0069d9; font-style: oblique;">Client Name</th>
                            <th style="color: #0069d9; font-style: oblique;">Report</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items = "${jobs}" var="job" >
                            <tr>
                                <td>${job.taskId}</td>
                                <td>${job.projectName}</td>
                                <td>${job.category}</td> 
                                <td>${job.duration}</td>
                                <td>${job.maxAmount}</td>
                                <td>${job.location}</td>
                                <td>${job.description}</td>
                                <td>${job.appliedBy.user.firstName}&nbsp ${task.appliedBy.user.lastName}</td>
                                <td>
                                    <form action="/client/project/report" method="POST" class="form-inline">
                                        <input name="taskId" value="${job.taskId}" type="hidden">
                                        <a href="/client/project/report?taskId=${job.taskId}" class="btn btn-sm btn-danger">Report</a>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
