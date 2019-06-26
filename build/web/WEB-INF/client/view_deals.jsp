<%-- 
    Document   : view_deals
    Created on : Jun 22, 2019, 10:52:02 AM
    Author     : GraceTina
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <title>Suitable | Deals </title>
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
        <div class="card" style="margin-top: 30px;">
            <form action="" method="POST">
                <div class="card-header">
                    <table>
                        <tr>
                            <td align="left"><b>Project Name:</b></td>
                            <td>${task.projectName}</td>
                        </tr>
                        <tr>
                            <td align="left"><b>Category:</b></td>
                            <td>${task.category}</td>
                        </tr>
                        <tr>
                            <td align="left"><b>Duration:</b></td>
                            <td>${task.duration}</td>
                        </tr>
                        <tr>
                            <td align="left"><b>Price Range:</b></td>
                            <td>${task.maxAmount}</td>
                        </tr>
                        <tr>
                            <td align="left"><b>Location:</b></td>
                            <td>${task.location}</td>
                        </tr>
                        <tr>
                            <td align="left"><b>Description:</b></td>
                            <td>${task.description}</td>
                        </tr>
                    </table>
                </div>
            </form>
                <div class="card-body">
                   <table class="table table-striped">
                            <c:forEach items = "${deals}" var="deal" >
                                <tr>
                                    <td>${deal.bidId}</td>
                                    <td>${deal.task.projectName}</td>
                                    <td>${deal.duration}</td>
                                    <td>${deal.bidAmount}</td>
                                    <td>${deal.appliedBy.user.firstName}&nbsp ${deal.appliedBy.user.lastName}</td>
                                    <td>
                                        <form action="/client/approve/deal" method="post" class="form-inline">
                                            <input name="bidId" value="${deal.bidId}" type="hidden">
                                            <button class="btn btn-sm btn-danger" type="submit">Approve</button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                </div>   
        </div>
        </div>
    </body>
</html>
