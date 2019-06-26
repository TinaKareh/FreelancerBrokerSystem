<%-- 
    Document   : register_freelancer
    Created on : Mar 29, 2019, 2:57:13 PM
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

        <title>Edit| Profile</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a href="/get/online/help" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a  class="active"href="/freelancer/profile/view">Profile</a>
            <a  href="/dashboard/freelancer">Home</a>
            <a style="float: left;" href="">Edit | Profile</a>

        </div>
        <div class="container">
            <div class="top_nav">
                <fieldset>
                    <form method="POST" action="/freelancer/profile/edit">
                        <div class="form-group">
                            <label for="fname">First Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="fname" class="form-control" type="text" id="fname"  style="width: 170%;"value="${user.user.firstName}" required="">
                        </div>
                        <div class="form-group">
                            <label for="lname">Last Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="lname" class="form-control" type="text" id="lname"  style="width: 170%;"value="${user.user.lastName}" required="">
                        </div>
                        <div class="form-group">
                            <label for="uname">User Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="uname" class="form-control" type="text" id="uname"  style="width: 170%;"value="${user.user.userName}" required="">
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address</label><span style="color: #0069d9;">*</span><br>
                            <input name="email" class="form-control" type="email" id="email" style="width: 170%;" value="${user.user.emailAddress}" required="">
                        </div>

                        <div class="form-group">
                            <label for="phoneNo">Phone Number</label><span style="color: #0069d9;">*</span><br>
                            <input name="phoneNo" class="form-control" type="text" id="phoneNo" style="width: 170%;" value="${user.user.phoneNumber}" required="">
                        </div>

                </fieldset>
            </div>
            <div class="topnav">
                <fieldset>
                    <div class="form-group">
                        <label for="password">Password</label><span style="color: #0069d9;">*</span><br>
                        <input name="password" class="form-control" type="password" id="password" style="width: 140%;" value="${user.user.password}" required="">
                    </div>
                    <div class="form-group">
                        <label for="confirmPass"> Confirm Password</label><span style="color: #0069d9;">*</span><br>
                        <input name="confirmPass" class="form-control" type="password" id="confirmPass" style="width: 140%;" value="${user.user.password}" required="">
                    </div>
                    
                    <div class="form-group">
                        <button class="btn btn-primary btn-sm" style="width: 140%;" type="submit">Submit</button>
                    </div>
                    </form>
                </fieldset>
            </div>

        </div>
    </body>
</html>
