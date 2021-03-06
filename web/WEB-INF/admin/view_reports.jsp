<%-- 
    Document   : view_reports
    Created on : Jun 4, 2019, 2:59:16 PM
    Author     : GraceTina
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <title>Admin | Feedback Reports</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a href="/logout">Log out</a>
            <a href="/admin/profile/view">Profile</a>
            <a href="/admin/payment">Payment</a>
            <a  class="active"href="/admin/view/project">Reports</a>
            <a  href="/dashboard/admin">Home</a>
        </div>
        <div class="container" style="margin-top: 50px;">
            <div class="form-group">
                <button type="submit" class="btn btn-sm btn-danger" onclick="window.print()">Print PDF</button>
            </div>
            <div class="card" >
                <div class="card-header">Project Reports</div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th style="color: #0069d9; font-style: oblique;">Report ID</th>
                            <th style="color: #0069d9; font-style: oblique;">Project Name</th>
                            <th style="color: #0069d9; font-style: oblique;">Freelancer Name</th>
                            <th style="color: #0069d9; font-style: oblique;">Feedback</th>
                            <th style="color: #0069d9; font-style: oblique">Client Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${reports}" var="report" >
                            <tr>
                                <td>${report.reportId}</td>
                                <td>${report.task.projectName}</td>
                                <td>${report.freelancerName}</td>
                                <td>${report.feedback}</td>
                                <td>${report.appliedBy.user.firstName} &nbsp ${report.appliedBy.user.lastName}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
