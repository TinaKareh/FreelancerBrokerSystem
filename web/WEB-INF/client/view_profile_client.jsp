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
        <title>Client | Profile</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>

        </div>
        <div class="toppnav">
            <a href="" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/client/profile/view">Profile</a>
            <a href="/client/payment">Payment</a>
            <a class="active" href="/dashboard">Home</a>
        </div>
        <div class="" >
            <div class="card" style="float: left; padding-left: 490px; padding-top: 80px;">
                <div class="card-header" style="align-content: center; padding-left:150px; padding-right: 150px;">
                    <img src="../../resources/avatar.jpg" width="130" height="130" alt="avatar"/><br>
                    <h9 style="font-size:25px; font-style: oblique; color: #0069d9;"><span>*</span>${client.user.userName}</h9><br>
                    <h8 style="font-size:15px; font-style: oblique; color: #0069d9;"><span>*</span>${client.user.emailAddress}</h8>

                </div>
                <div class="class-body">
                    <table>
                        <tr>
                            <td align="left" ><b>Full Name:</b></td>
                            <td class="table_row">${user.user.firstName} ${user.user.lastName}</td>
                        </tr>
                        <tr>
                            <td align="left" style="color: #000;"><b>User Name:</b></td>
                            <td class="table_row">${user.user.userName}</td>
                        </tr>
                        <tr>
                            <td align="left" style="color: #000;"><b>Email Address:</b></td>
                            <td class="table_row"> ${user.user.emailAddress}</td>
                        </tr>
                        <tr>
                            <td align="left" style="color: #000;"><b>Phone Number:</b></td>
                            <td class="table_row">${user.user.phoneNumber}</td>
                        </tr>
                    </table>
                        <div class="card-footer">
                        <td><a href="/client/profile/edit" class="btn btn-sm btn-primary" >Edit Profile</a></td>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
