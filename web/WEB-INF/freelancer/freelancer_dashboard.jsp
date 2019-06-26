<%-- 
    Document   : freelancer_dashboard
    Created on : Mar 19, 2019, 2:04:12 PM
    Author     : GraceTina
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <script src="/resources/css/bootstrap-table/bootstrap-table.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="/resources/css/bootstrap-table/bootstrap-table.min.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />
        <title>Freelancer | Dashboard</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>

        </div>
        <div class="toppnav">
            <a href="/get/online/help" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/freelancer/profile/view">Profile</a>
            <a href="/freelancer/assigned/tasks">Assigned Tasks</a>
            <a class="active" href="/dashboard/freelancer">Home</a>
            <a style="float: left;" href="">Available | Tasks</a>
        </div>
        <div class="container">
            <fieldset style="margin-right: 200px;">
                <h2 style="font-size: 16px; font-style: oblique; color: #000; margin-top: 20px;">To bid on a task click on the bid button on each task*</h2>
                <c:forEach items="${tasks}" var="task">
                    <div class="card" >
                        <div class="card-header">
                            <i class="fa fa-home">Task:<span style="font-style: oblique;">${task.taskId}</span></i>
                        </div>
                        <div class="card-body" style="float: left; margin-top: 20px;">
                            <form action="" method="GET">
                                <table>
                                    <tr>
                                        <td align="left" style="font-style: oblique;"><b>Project Name:</b></td>
                                        <td style="font-style: oblique;">${task.projectName}</td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-style: oblique;"><b>Category:</b></td>
                                        <td style="font-style: oblique;">${task.category}</td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-style: oblique;"><b>Duration:</b></td>
                                        <td style="font-style: oblique;">${task.duration}</td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-style: oblique;"><b>Price Range:</b></td>
                                        <td style="font-style: oblique;"> ${task.maxAmount} </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-style: oblique;"><b>Location:</b></td>
                                        <td style="font-style: oblique;">${task.location}  </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-style: oblique;"><b>Description:</b></td>
                                        <td style="font-style: oblique;">${task.description}</td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-style: oblique;"><b>Task Status:</b></td>
                                        <td style="font-style: oblique;">${task.status.status}</td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                        <div class="card-footer">
                            <div class="form-group">
                                <a href="/freelancer/add/bids?taskId=${task.taskId}" style="float: right;" class="btn btn-primary btn-sm" value="">Add Bid</a>
                            </div>
                        </div>
                    </div><br>
                </c:forEach>
            </fieldset>
        </div>
    </body>
</html>
