<%-- 
    Document   : register_client
    Created on : Mar 29, 2019, 2:57:51 PM
    Author     : GraceTina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css">

        <title>Edit Profile | Client</title>
    </head>
    <body>
        <div>
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
            <fieldset>
                <h2 style="font-size:14px; color: #000;">'*' indicates required fields</h2>
                <form method="POST" action="/client/profile/edit">
                    <div class="top_nav">
                        <div class="form-group">
                            <label for="fname">First Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="fname" class="form-control" type="text" style="width: 200%;" value="${user.user.firstName}" id="fname" required="">
                        </div>
                        <div class="form-group">
                            <label for="lname">Last Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="lname" class="form-control" type="text" style="width: 200%;" value="${user.user.lastName}" id="lname" required="">
                        </div>
                        <div class="form-group">
                            <label for="uname">User Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="uname" class="form-control" type="text" style="width: 200%;" value="${user.user.userName}" id="uname" required="">
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address</label><span style="color: #0069d9;">*</span><br>
                            <input name="email" class="form-control" type="email" style="width: 200%;" value="${user.user.emailAddress}" id="email" required="">
                        </div>
                    </div>
                    <div class="topnav" >
                        <div class="form-group">
                            <label for="phoneNo">Phone Number</label><span style="color: #0069d9;">*</span><br>
                            <input name="phoneNo" class="form-control" type="text" style="width: 120%;"  value="${user.user.phoneNumber}" id="phoneNo" required="">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label><span style="color: #0069d9;">*</span><br>
                            <input name="password" class="form-control" type="password" style="width: 120%;" value="${user.user.password}" id="password" required="">
                        </div>
                        <div class="form-group">
                            <label for="confirmPass">Confirm Password</label><span style="color: #0069d9;">*</span><br>
                            <input name="confirmPass" class="form-control" type="password" style="width: 120%;" value="${user.user.confirmPass}" id="confirmPass" required="">
                        </div>
                        <div>
                            <p>
                                information added will be updated accordily.
                            </p>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-sm" style="width: 120%;" type="submit">Submit</button>
                        </div>
                    </div>
                </form>
            </fieldset>
        </div>
    </body>
</html>
