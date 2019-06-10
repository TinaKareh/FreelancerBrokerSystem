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
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <title>Admin | Profile</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>

        </div>
        <div class="toppnav">
            <a href="/logout">Log out</a>
            <a class="active" href="/admin/profile/view">Profile</a>
            <a href="">Payment</a>
            <a href="">Reports</a>
           <a  href="/dashboard/admin">Home</a>
        </div>
        <div class="" >
            <div class="card" style="float: left; margin-top: 50px; margin-left: 200px;">
                <fieldset>
                    <legend style="font-size:30px; font-style: oblique;  color: #0069d9;"> Profile</legend>
                    <div class="card-header">
                        <img src="../../resources/avatar.jpg" width="130" height="130" alt="avatar" style="margin-left: 40px;"/><br>
                        <h9 style="font-size:30px; font-style: oblique; margin-left: 40px; color: #0069d9;"><span>*</span>${user.userName}</h9><br>
                        <h8 style="font-size:20px; font-style: oblique;  color: #0069d9;"><span>*</span>${user.emailAddress}</h8>

                    </div>
                    <div class="class-body">
                        <table>
                            <tr>
                                <td><b>Full Name:</b></td>
                                <td class="table_row">${user.firstName} ${user.lastName}</td>
                            </tr>

                            <tr>
                                <td><b>User Name:</b></td>
                                <td class="table_row">${user.userName}</td>
                            </tr>
                            <tr>
                                <td><b>Email Address:</b></td>
                                <td class="table_row">${user.emailAddress}</td>
                            </tr>
                            <tr>
                                <td><b>Phone Number:</b></td>
                                <td class="table_row">${user.phoneNumber}</td>
                            </tr>
                        </table>
                        <div class="card-footer">
                            <td><a href="/admin/edit/profile" class="btn btn-sm btn-primary" >Edit Profile</a></td>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </body>
</html>
