<%-- 
    Document   : view_profile
    Created on : Apr 11, 2019, 7:35:21 PM
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
        <title>Freelancer | Profile</title>
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
        <div class="" style="" >
            <div class="card" style="float: left; margin-top: 50px; margin-left: 50px;">
                <fieldset>
                    <legend style="font-size:30px; font-style: oblique;  color: #0069d9;"> Profile</legend>
                    <div class="card-header">
                        <img src="../../resources/avatar.jpg" width="130" height="130" alt="avatar" style="margin-left: 40px;"/><br>
                        <h9 style="font-size:25px; font-style: oblique; color: #0069d9;"><span>*</span>${free.user.userName}</h9><br>
                        <h8 style="font-size:15px; font-style: oblique; color: #0069d9;"><span>*</span>${free.user.emailAddress}</h8>

                    </div>
                    <div class="card-body">
                        <table>
                            <tr>
                                <td><b>Full Name:</b></td>
                                <td class="table_row">${user.user.firstName} ${user.user.lastName}</td>
                            </tr>

                            <tr>
                                <td><b>User Name:</b></td>
                                <td class="table_row">${user.user.userName}</td>
                            </tr>
                            <tr>
                                <td><b>Email Address:</b></td>
                                <td class="table_row">${user.user.emailAddress}</td>
                            </tr>
                            <tr>
                                <td><b>Phone Number:</b></td>
                                <td class="table_row">${user.user.phoneNumber}</td>
                            </tr>

                        </table>
                        <div class="card-footer"> 
                            <a href="/freelancer/profile/edit" class="btn btn-sm btn-primary" >Edit Profile</a>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="" style="margin-top: 50px; margin-right: 50px; margin-left: 600px;"> 
                <fieldset>

                    <div class="card" style=" ">
                        <div class="card-header"><i class="fa fa-home">Education</i></div>
                        <div class="card-body">
                            <table>
                                <td>Egerton University 2017-2021</td>
                            </table>
                        </div>
                        <div class="card-footer"> 
                            <a href="/freelancer/education" class="btn btn-sm btn-primary" style="float: right;"  >+ Education</a>
                        </div>
                    </div>
                    <div class="card" style="margin-top: 50px; ">
                        <div class="card-header"><i class="fa fa-home">Experience</i></div>
                        <div class="card-body">
                            <table>
                                <td></td>
                            </table>
                        </div>
                        <div class="card-footer"> 
                            <a href="/freelancer/experience" class="btn btn-sm btn-primary" style="float: right;" >+ Experience</a>
                        </div>
                    </div>
                    <div class="card" style="margin-top: 50px; ">
                        <div class="card-header"><i class="fa fa-home">Skills</i></div>
                        <div class="card-body">
                            <table>
                                <td></td>
                            </table>
                        </div>
                        <div class="card-footer"> 
                            <a href="/freelancer/add/skills" class="btn btn-sm btn-primary" style="float: right;" >+Skills</a>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </body>
</html>
