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
            <a href="" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/freelancer/profile/view">Profile</a>
            <a class="active" href="/dashboard/freelancer">Home</a>
            <a style="float: left;" href="">Available | Tasks</a>
            <input type="text" class="form-control" style="width: 20%" placeholder="Search..">
        </div>
        <div>
            <div class="container" >
                <h2 style="font-size: 16px; font-style: oblique; color: #000; margin-top: 20px;">To bid on a task click on the bid button on each task*</h2>
                <div class="task" style="float: left; margin-top: 20px;">
                    <fieldset>
                        <form action="" method="GET">
                            <c:forEach items="${tasks}" var="task">
                                <div class="form-group">
                                    <label style="color: #000;">Category:</label>
                                    <p>${task.category}</p>
                                </div>
                                <div class="form-group">
                                    <label style="color: #000;">Duration:</label>
                                    <p>${task.duration}</p>
                                </div>
                                <div class="form-group">
                                    <label style="color: #000;">Price Range:</label>
                                    <p>${task.rangeAmount}</p>
                                </div>
                                 <div class="form-group">
                                    <label style="color: #000;">Description:</label>
                                    <p>${task.description}</</p>
                                </div>
                                 <div class="form-group">
                                    <label style="color: #000;">Bid:</label>
                                <a href="/add/bids" style="margin-bottom: 5px;" class="btn btn-primary btn-sm">Add Bid</a>
                                </div>
                            </c:forEach>
                        </form>
                    </fieldset>
                </div>
                <div style="float: right;">
                    <fieldset>
                        <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="300" height="600" alt="letter-f-logo-vector-4957605_1" style="margin-top: 20px;"/>
                    </fieldset>
                </div>
                <div>

                </div>
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
                        <label style="color: #0069d9; for ="email">Your EmailAddr</label><span style="color: #0069d9;">*</span>
                        <input name="email" class="form-control" type="email" style="width: 150%;" id="duration"  required="">
                    </div>
                    <div class="form-group">
                        <label style="color: #0069d9; for ="phoneNo">Your PhoneN.O</label><span style="color: #0069d9;">*</span>
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
