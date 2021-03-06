<%-- 
    Document   : register_freelancer
    Created on : Mar 29, 2019, 2:57:13 PM
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
        <script src="${pageContext.request.contextPath}/resources/form.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css">
        <title>Register | Freelancer</title>
        <script type="text/javascript">
            
            function matchpass() {
                var firstPass = document.forms["myForm"]["password"].value;
                var secondPass = document.forms["myForm"]["confirmPass"].value;

                if (firstPass == secondPass) {
                    return true;
                } else if{
                    alert("password must be same!");
                    return false;
                } 
                else(firstPass.length < 8) {
                    alert("Password must be at least 8 characters long");
                    return false;
            }
        }
        </script>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="${pageContext.request.contextPath}../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a style="float: left; font-style: oblique; font-size: 17px;" href="">Register | Freelancer</a>
            <a class="active" href="/register/freelancer">Freelancer</a>
            <a  href="/register/client">Client</a>
            <a href="/">Home</a>
        </div>
        <div class="container">
            <div class="top_nav">
                <fieldset>
                    <h2 style="font-size:14px; color: #000;">'*' indicates required fields</h2>

                    <form method="POST" action="" name="myForm" onsubmit="return matchpass()">
                        <div class="form-group">
                            <label for="fname">First Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="fname" class="form-control" type="text" style="width: 200%;" id="fname" required="">
                        </div>
                        <div class="form-group">
                            <label for="lname">Last Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="lname" class="form-control" type="text" style="width: 200%;" id="lname" required="">
                        </div>
                        <div class="form-group">
                            <label for="uname">User Name</label><span style="color: #0069d9;">*</span><br>
                            <input name="uname" class="form-control" type="text" style="width: 200%;" id="uname" required="">
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address</label><span style="color: #0069d9;">*</span><br>
                            <input name="email" class="form-control" type="email" style="width: 200%;" id="email" required="">
                        </div>
                        <div class="form-group">
                            <label for="phoneNo">Phone Number</label><span style="color: #0069d9;">*</span><br>
                            <input name="phoneNo" class="form-control" type="tel" style="width: 200%;" id="phoneNo" required="">
                        </div>
                </fieldset>
            </div>
            <div class="topnav">
                <fieldset>

                    <div class="form-group">
                        <label for="password">Password</label><span style="color: #0069d9;">*</span><br>
                        <input name="password" class="form-control" type="password" style="width: 190%;" id="password" required="">
                    </div>
                    <div class="form-group">
                        <label for="confirmPass">Confirm Password</label><span style="color: #0069d9;">*</span><br>
                        <input name="confirmPass" class="form-control" type="password" style="width: 190%;" id="confirmPass" required="">
                    </div>
                    <div class="form-group">
                        <label for="skill">Select your skills</label><span style="color: #0069d9;">*</span><br>
                        <select multiple name="skill" class="form-control"  style="width: 190%;"><c:forEach items="${skills}" var="skill">
                                <option value="${skill.skillId}">${skill.name}</option>
                            </c:forEach></select>
                    </div>

                    <div class="form-group">
                        <button class="btn btn-primary btn-sm" style="width: 190%; margin-top: 60px;" type="submit">Submit</button>
                    </div>
                    </form>
                </fieldset>
            </div>

        </div>
    </body>
</html>
