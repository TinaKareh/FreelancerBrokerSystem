<%-- 
    Document   : skills
    Created on : May 11, 2019, 9:54:35 AM
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <title>Freelancer | Education</title>
    </head>
    <body>

        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>

        </div>
        <div class="toppnav">
            <a href="" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a class="active" href="/freelancer/profile/view">Profile</a>
            <a  href="/dashboard/freelancer">Home</a>
            <input type="text" class="form-control" style="width: 20%" placeholder="Search..">
        </div>
        <div class="container">
            <div class="card" style="margin-top: 50px;">
                <div class="card-header">
                    <div class="card-title">Select your skills and expertise</div>
                    <input type="search" class="form-control"  placeholder="Search.."><i class="fa fa-caret-square-o-down"></i>
                </div>
                <div class="card-body">
                    <div class="card-columns">
                        <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Websites,IT&Software</a>
                                <input type="hidden" name="category" value="WS">
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Mobile phones&Computing</a>
                                <input type="hidden" name="category" value="MC">
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Writing&Content</a>
                                <input type="hidden" name="category" value="WC">
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Design,Media&Architecture</a>
                                <input type="hidden" name="category" value="DA">
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Data Entry& Admin</a>
                                <input type="hidden" name="category" value="DE">
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Engineering&Science</a>
                                <input type="hidden" name="category" value="ES">
                            </div>
                        </div>
                         <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Translation&Languages</a>
                                <input type="hidden" name="category" value="TL">
                            </div>
                        </div>
                         <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Local Jobs & Services</a>
                                <input type="hidden" name="category" value="LJ">
                            </div>
                        </div>
                         <div class="card">
                            <div class="card-body">
                                <i class="fa fa-product-hunt"></i>
                                <a href="" class="btn btn-light stretched-link">Sales & Marketing</a>
                                <input type="hidden" name="category" value="SM">
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    
                </div>
            </div>
            
        </div>
    </body>
</html>
