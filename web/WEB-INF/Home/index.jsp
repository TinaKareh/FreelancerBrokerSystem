<%-- 
    Document   : index
    Created on : Mar 19, 2019, 2:02:12 PM
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
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/fontawesome/css/fontawesome.min.css"
              <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <script src="${pageContext.request.contextPath}/resources/css/form.js"></script>
        <script  src="${pageContext.request.contextPath}/resources/js/image.js"></script>
        <title>Furistics | Home</title>

    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="${pageContext.request.contextPath}../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
            <img class="mySlides" src="${pageContext.request.contextPath}../../resources/mac_book.JPG" width="1370" height="350" alt="mac_book"/>
            <img class="mySlides" src="${pageContext.request.contextPath}../../resources/hardworking.JPG" width="1370" height="350" alt="hardworking"/>
            <img class="mySlides" src="${pageContext.request.contextPath}../../resources/man.JPG" width="1370" height="350" alt="man"/>
            <img class="mySlides" src="${pageContext.request.contextPath}../../resources/letter-f-logo-vector-4957605_1.jpg" width="1370" height="350" alt="letter-f-logo-vector-4957605_1"/>
        </div>
        <script>
            var myIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) {
                    myIndex = 1
                }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 5000); // Change image every 5 seconds
            }

        </script>
        <script type="text/javascript">
            function validateform() {
                var email = document.forms["myLogin"]["email"].value;
                var password = document.forms["myLogin"]["password"].value;

                if (email == null || email == "") {
                    alert("Email can't be blank");
                    return false;
                } else if (password.length < 8) {
                    alert("Password must be at least 8 characters long");
                    return false;
                }
            }

        </script>
        <div class="container" style="float: top;">
            <div class="login">
                <fieldset>
                    <legend style="margin-bottom: 40px; font-size: 30px; font-weight: 600;  color: #0069d9;">Log In</legend>
                    <form action="/login" method="POST" name="myLogin" onsubmit="return validateform()">
                        <div class="form-group">
                            <label for="email">Email Address</label><span style="color: #0069d9;">*</span><br>
                            <input name="email" class="form-control" type="email" id="email" style="width: 150%;" placeholder="Enter Email Address" required="">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label><span style="color: #0069d9;">*</span>
                            <input name="password" class="form-control" type="password" style="width: 150%;" id="password" placeholder="Enter Password" required="">
                        </div>
                        <div>
                            <h3><a href="" style="color: #0069d9; font-size: 17px;">forgot password?</a></h3>
                            <button class="btn btn-primary btn-sm" style="width: 150%; " type="submit">Submit</button>
                        </div>
                    </form>
                </fieldset>
            </div>
            <div class="register">
                <p style="color: #000; font-size: 15px;">You can either register as a client(to post a task)<br>or as a freelancer*</p>
                <h1 style="color: #000; font-size: 15px;">need an account? register here!</h1>
                <a href="/register/freelancer" style="width:100%;" class="btn btn-primary btn-sm">Register<a>
                        </div>
                        </div>
                        `</div>
                        <div class="footer">

                            <fieldset>
                                <div class="footer-list">
                                    <h6 style="font-size:25px; color: #0069d9;">FURISTICS</h6>
                                    <h7 class="list-tina"><span style="color: #0069d9;">|</span> CONTACT</h7>
                                    <ul class="list-tina"><br>
                                        <li>905-677-4848</li>
                                        <li><i class="fa fa-envelope" style="color: #0069d9;"></i><a href="">customercare@furistics.ca</a></li>

                                    </ul>
                                </div>
                                <div class="footer-list">
                                    <h7 class="list-tina"><span style="color: #0069d9;">|</span> CATEGORY</h7>
                                    <ul class="list-tina"><br>
                                        <li>Web Application Development</li>
                                        <li>Mobile Development</li>
                                        <li>Desktop Application Development</li>
                                        <li>Graphics Design</li>
                                        <li>Article Writing</li>
                                        <li>Website Design</li>
                                        <li>Content Writing</li>
                                    </ul>
                                </div>
                                <div class="footer-list">
                                    <h7 class="list-tina"><span style="color: #0069d9;">|</span> SKILLS</h7>
                                    <ul class="list-tina"><br>
                                        <li>HTML5</li>
                                        <li>WordPress</li>
                                        <li>Java</li>
                                        <li>Python</li>
                                        <li>Logo Design</li>
                                        <li>Android Development</li>
                                        <li>Angular JS</li>
                                    </ul>
                                </div>
                                <div class="footer-list">
                                    <h7 class="list-tina"><span style="color: #0069d9;">|</span> SKILLS</h7>
                                    <ul class="list-tina"><br>
                                        <li> CSS </li>
                                        <li>JavaScript</li>
                                        <li>React JS</li>
                                        <li>Ruby</li>
                                        <li>Node JS</li>
                                        <li>IOS Development</li>
                                        <li>Vue JS</li>
                                    </ul>
                                </div>
                            </fieldset>
                        </div>
                        </body>
                        </html>
