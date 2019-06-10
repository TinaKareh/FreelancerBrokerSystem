<%-- 
    Document   : freelancer_dashboard
    Created on : Mar 19, 2019, 2:04:12 PM
    Author     : GraceTina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />

        <title>Freelancer | Add Bids</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>

        </div>
        <div class="toppnav">
            <a href="" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/freelancer/profile/view">Profile</a>
            <a class="active" href="/add/bids">Bid</a>
            <a href="/dashboard/freelancer">Home</a>
            <input type="text" class="form-control" style="width: 20%" placeholder="Search..">

        </div>
        <div class="container">
            <div style="float: left;">
                <fieldset>
                    <legend style="font-size: 20px; font-weight: 600; margin-bottom:50px;color: #0069d9;">Add Bid</legend>
                    <form>
                        <table>
                            <tr>
                                <td align="left"><b>Task ID:</b></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="left"><b>Category:</b></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="left"><b>Duration:</b></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="left"><b>Price Range:</b></td>
                                <td> </td>
                            </tr>
                            <tr>
                                <td align="left"><b>Description:</b></td>
                                <td></td>
                            </tr>
                        </table>
                        <div class="container">
                            <div class="form-group">
                                <label for="amount">Amount</label><span style="color: #0069d9;">(USD)*</span>
                                <input name="amount" class="form-control" type="text" style="width: 120%;" id="amount" placeholder="Enter Amount to bid" required="">
                            </div>
                            <div class="form-group">
                                <label for="duration">Duration</label><span style="color: #0069d9;">(days)*</span>
                                <input name="duration" class="form-control" type="text" style="width: 120%;" id="duration" placeholder="Enter duration " required="">
                            </div>
                            <div>
                                <button class="btn btn-primary btn-sm" style="width: 120%;" type="submit">Bid</button>
                            </div>
                        </div>
                    </form>
                </fieldset>
            </div>
            <div style="float: right;">
                <fieldset>
                    <img id="logo" src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="300" height="600" alt="letter-f-logo-vector-4957605_1"/>
                </fieldset>
            </div>
        </div>
        <div>
            <table>
                <c:forEach items = "${bids}" var="bid" >
                    <tr>

                        <td>${bid.bidId}</td>
                        <td></td>
                        <td></td>
                        <td>${bid.duration}</td>
                        <td>${bid.bidAmount}</td>
                    </tr>
                </c:foreach>
            </table>
        </div>
    </body>
</html>
