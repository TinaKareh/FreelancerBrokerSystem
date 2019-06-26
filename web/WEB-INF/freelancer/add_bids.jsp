<%-- 
    Document   : freelancer_dashboard
    Created on : Mar 19, 2019, 2:04:12 PM
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
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />

        <title>Freelancer | Add Bids</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>

        </div>
        <div class="toppnav">
            <a href="/get/online/help" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/freelancer/profile/view">Profile</a>
            <a class="active" href="/dashboard/freelancer">Home</a>
        </div>
        <div class="container">
            <fieldset style="margin-right: 200px;" >
                <legend style="font-size: 20px; font-weight: 600; margin-bottom:50px;color: #0069d9;">Add Bid</legend>
                <div class="card">
                    <form action="/freelancer/add/bids" method="POST">
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
                                    <td> ${task.maxAmount}</td>
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
                        <div class="card-body">
                            <div class="form-group">
                                <label for="jobId">Task ID</label><span style="color: #0069d9;">*</span>
                                <input name="jobId" class="form-control" type="text"  id="jobId" value="${task.taskId}" required="">
                            </div>
                            <div class="form-group">
                                <label for="amount">Amount</label><span style="color: #0069d9;">(USD)*</span>
                                <input name="amount" class="form-control" type="text"  id="amount" placeholder="Enter Amount to bid" required="">
                            </div>
                            <div class="form-group">
                                <label for="duration">Duration</label><span style="color: #0069d9;">(days)*</span>
                                <input name="duration" class="form-control" type="text"  id="duration" placeholder="Enter duration " required="">
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="form-group">
                                <button class="btn btn-primary btn-sm"  type="submit" style="width: 30%; float: right;">Bid</button>
                            </div>
                        </div>
                    </form>
                </div><br>
                <div class="card">
                    <div class="card-header">Bids:</div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th style="color: #0069d9; font-style: oblique;">Bid ID:</th>
                                <th style="color: #0069d9; font-style: oblique;">Project Name</th>
                                <th style="color: #0069d9; font-style: oblique;">Duration</th>
                                <th style="color: #0069d9; font-style: oblique;">Price</th>
                                <th style="color: #0069d9; font-style: oblique;">Freelancer Name</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items = "${bids}" var="bid" >
                                <tr>
                                    <td><c:out value="${bid.bidId}" /></td>
                                    <td><c:out value="${bid.task.projectName}" /></td>
                                    <td><c:out value="${bid.duration}" /></td>
                                    <td><c:out value="${bid.bidAmount}" /></td>
                                    <td>
                                        <c:out value="${bid.appliedBy.user.firstName}" /> &nbsp <c:out value="${bid.appliedBy.user.lastName}" />
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </fieldset>
        </div>
    </body>
</html>
