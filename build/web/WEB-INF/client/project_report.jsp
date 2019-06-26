<%-- 
    Document   : project_report
    Created on : Jun 4, 2019, 2:58:30 PM
    Author     : GraceTina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />
        <title>Client | Feedback Report</title>
    </head>
    <body>
        <div class="header1">
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a href="/get/online/help" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/client/profile/view">Profile</a>
            <a class="active" href="/client/view/status">Report</a>
            <a href="/client/payment">Payment</a>
            <a href="/client/add/task">Post a Job</a>
            <a  href="/dashboard">Dashboard</a>
        </div>
        <div class="container">
            <fieldset>
                <div class="card" style="margin-top: 50px;">
                    <form method="POST" action="">
                        <div class="card-header">
                            <table>
                                <tr>
                                    <td align="left"><b>Project Name:</b></td>
                                    <td>${job.projectName}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Category:</b></td>
                                    <td>${job.category}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Duration:</b></td>
                                    <td>${job.duration}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Price Range:</b></td>
                                    <td> ${job.maxAmount}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Location:</b></td>
                                    <td>${job.location}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Description:</b></td>
                                    <td>${job.description}</td>
                                </tr>
                            </table>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="jobId">Task ID</label><span style="color: #0069d9;">*</span>
                                <input name="jobId" class="form-control" type="text"  id="jobId" value="${job.taskId}" required="" readonly="">
                            </div>
                            <div class="form-group">
                                <label for="fname">Freelancer Name:</label><span style="color: #0069d9;">*</span>
                                <input name="fname" class="form-control" type="text"  id="fname" value="${job.bestDeal.appliedBy.user.firstName}${job.bestDeal.appliedBy.user.lastName}" required="" readonly="">
                            </div>
                            <div class="form-group">
                                <label for="feed">Feedback</label>
                                <textarea class="form-control" type="text" name="feed"></textarea>
                            </div>
                            <div class="card-footer"> 
                                <div class="form-group">
                                    <button type="submit" class="btn btn-sm btn-primary" style=""  >Save</button>
                                    <button type=reset" class="btn btn-sm btn-danger">Cancel</button>
                                </div>
                            </div>
                    </form>
                </div>
        </div>
    </fieldset>
</div>
</body>
</html>
