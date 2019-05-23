<%-- 
    Document   : dashboard
    Created on : Mar 19, 2019, 2:03:18 PM
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
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />

        <title>Client | Dashboard</title>
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
            <a class="active" href="/dashboard">Home</a>
        </div>
        <div class="container">
          <div style="margin-top: 50px; float: left;">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th style="color: #0069d9; font-style: oblique;">Task ID</th>
                        <th style="color: #0069d9; font-style: oblique;">Category</th>
                        <th style="color: #0069d9; font-style: oblique;">Duration</th>
                        <th style="color: #0069d9; font-style: oblique;">Price</th>
                        <th style="color: #0069d9; font-style: oblique;">Description</th>
                        <th style="color: #0069d9; font-style: oblique;">Status</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items = "${items}" var="item" >
                    <tr>
                        <td>${item.taskId}</td>
                        <td>${item.category}</td> <!-- dummy data ==> alignment purposes -->
                        <td>${item.duration}</td>
                        <td>${item.rangeAmount}</td>
                        <td>${item.description}</td>
                        <td>${item.status.status}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
            <div style="float: right;">
                <fieldset>
                    <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="300" height="600" alt="letter-f-logo-vector-4957605_1" style="margin-top: 50px;"/>
                </fieldset>
            </div>
        </div>
        <div class="footer2">
            <fieldset>
                <div class="footer-list">
                    <h6 style="font-size:25px; color: #0069d9;">FURISTICS</h6>
                    <h7 class="list-tina"><span style="color: #0069d9;">|</span> CONTACT</h7>
                    <ul class="list-tina"><br>
                        <li>905-677-4848</li>
                        <li> <a href="">customercare@furistics.ca</a></li>

                    </ul>
                </div>
                <div class="footer-list2" >
                    <h6 style="font-size:25px; color: #0069d9;">Talk to Us</h6>

                    <div class="form-group">
                        <label style="color: #0069d9; for ="name">Your Name</label><span style="color: #0069d9;">*</span>
                        <input name="name" class="form-control" type="text" style="width: 150%;" id="name"  required="">
                    </div>
                    <div class="form-group">
                        <label style="color: #0069d9; for ="email">Your EmailAddress</label><span style="color: #0069d9;">*</span>
                        <input name="email" class="form-control" type="email" style="width: 150%;" id="duration"  required="">
                    </div>
                    <div class="form-group">
                        <label style="color: #0069d9; for ="phoneNo">Your PhoneN.o</label><span style="color: #0069d9;">*</span>
                        <input name="phoneNo" class="form-control" type="text" style="width: 150%;" id="name"  required="">
                    </div>
                    <div   class ="form-group">
                        <label style="color: #0069d9; for="message">Your Message</label><span style="color: #0069d9;">*</span>
                        <input name="message" class="form-control" type="text" style="width: 150%;" id="name"  required="">
                    </div>
                    <div>
                        <button class="btn btn-primary btn-sm" style="width: 150%;" type="submit">Send</button>
                    </div>
                </div>
                </body>
                </html>
