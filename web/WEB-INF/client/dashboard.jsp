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
            <a class="active" href="/dashboard">Home</a>
        </div>
        <div class="container">
            <div style="float: left; margin-left: 50px; margin-top: 50px;">
                <fieldset>
                    <legend style="font-size: 30px; font-weight: 600; margin-bottom:50px;color: #0069d9;">Post | Task</legend>
                    <h2 style="font-size:14px; color: #000;">'*' indicates required fields</h2>
                    <form method="POST" action="">
                        <div class="form-group">
                            <label for="category">Category</label><span style="color: #0069d9">*</span><br>
                            <select name="category" style="width: 150%;">
                                <option>Web Development</option>
                                <option>Mobile Development</option>
                                <option>Desktop Application Development</option>
                                <option> Article Writing</option>
                                <option> Graphic Design</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="duration">Duration</label><span style="color: #0069d9">(days)*</span><br>
                            <input name="duration" class="form-control" type="text" id="duration" style="width: 150%;" required="">
                        </div>
                        <div class="form-group">
                            <label for="price">Price Range</label><span style="color: #0069d9">(USD)*</span><br>
                            <input name="price" class="form-control" type="text" id="price" style="width: 150%;" required="">
                        </div>
                        <div class="form-group">
                            <label for="desc">Description</label><span style="color: #0069d9">*</span><br>
                            <textarea name="desc"  class="form-control" id="desc" style="width: 150%;" required=""></textarea>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-sm" style="width: 150%;" type="submit">Send</button> 
                        </div>
                    </form>
                </fieldset>
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
