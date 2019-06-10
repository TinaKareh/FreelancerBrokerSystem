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
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css">
        <script src="${pageContext.request.contextPath}/resources/form.js"></script>
        <title>Register | Client</title>
        <script type="text/javascript">
            function matchpass() {
                var firstPass = document.forms["myForm"]["password"].value;
                var secondPass = document.forms["myForm"]["confirmPass"].value;

                if (firstPass == secondPass) {
                    return true;
                } else if{
                    alert("password must be same!");
                    return false;
                }else (firstPass.length < 8) {
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
            <a style="float: left; font-style: oblique; font-size: 17px;" href="">Register | Client</a>
            <a  href="/register/freelancer">Freelancer</a>
            <a class="active" href="/register/client">Client</a>
            <a href="/">Home</a>
        </div>
        <div class="container">
            <fieldset>
                <h2 style="font-size:14px; color: #000;">'*' indicates required fields</h2>
                <form method="POST" action="" name="myForm" onsubmit="return matchpass()">
                    <div class="top_nav" >
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
                    </div>
                    <div class="topnav"  >
                        <div class="form-group">
                            <label for="phoneNo">Phone Number</label><span style="color: #0069d9;">*</span><br>
                            <input name="phoneNo" class="form-control" type="tel" style="width: 150%;" id="phoneNo" required="">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label><span style="color: #0069d9;">*</span><br>
                            <input name="password" class="form-control" type="password" style="width: 150%;" id="password" required="">
                        </div>
                        <div class="form-group">
                            <label for="confirmPass">Confirm Password</label><span style="color: #0069d9;">*</span><br>
                            <input name="confirmPass" class="form-control" type="password" style="width: 150%;" id="confirmPass" required="">
                        </div>
                        <div>
                            <p>
                               To edit profile or view it, do it in your account.
                            </p>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-sm" style="width: 150%;" type="submit">Submit</button>
                        </div>
                    </div>
                </form>
            </fieldset>
        </div>
    </body>
</html>
