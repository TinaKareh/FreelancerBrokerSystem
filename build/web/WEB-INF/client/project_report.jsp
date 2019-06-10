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
            <a href="" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/client/profile/view">Profile</a>
            <a href="/client/payment">Payment</a>
            <a href="/client/add/task">Post a Job</a>
            <a class="active" href="/dashboard">Dashboard</a>
        </div>
        <div class="container">
            <fieldset>
                <div class="card" style="margin-top: 50px;">
                    <form method="POST" action="">
                        <div class="card-header"><i class="fa fa-home">Project Report</i></div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="pname">Project Name</label>
                                <input type="text" class="form-control" name="pname" required="">
                            </div>
                            <div class="form-group">
                                <label for="fname">Freelancer Name</label>
                                <input type="text" class="form-control" name="fname" required="">
                            </div>
                            <div class="form-group">
                                <label for="account">Freelancer Account Number</label>
                                <input type="text" class="form-control" name="account" required="">
                            </div>
                            <div class="form-group">
                                <label for="amount">Amount to be paid</label>
                                <input type="text" class="form-control" name="amount" required="">
                            </div>
                            <div class="form-group">
                                <label for="feed">Feedback</label>
                                <select name="feed" class="form-control">
                                    <option>Satisfactory work</option>
                                    <option>Excellent work</option>
                                </select>
                            </div>
                            <div class="card-footer"> 
                                <div class="form-group">
                                    <button type="submit" class="btn btn-sm btn-primary" style=""  >Save</button>
                                    <a href="/dashboard" class="btn btn-sm btn-danger">Cancel</a>
                                </div>
                            </div>
                    </form>
                </div>
        </div>
    </fieldset>
</div>
</body>
</html>
