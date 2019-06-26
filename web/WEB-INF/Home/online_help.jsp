<%-- 
    Document   : online_help
    Created on : Jun 12, 2019, 7:13:46 PM
    Author     : GraceTina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap-table/bootstrap-table.min.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap-table/bootstrap-table.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <title>Online | Help</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a style="float: left;" href="">User</a>
            <a style="float: left;">|</a>
            <a style="float: left;"  href="">Documentation</a>
            <a  href="/login">Home</a>
        </div>
        <div class="container">
            <div class="card" style="margin-top: 30px;">
                <div class="card-body">
                    <form action="" method="POST">
                        <div class="form-group">
                            <h1 style="font-style: oblique; font-size: x-large;"><b>How To Bid On A Task:</b></h1>
                            <p> Onclick of the bid button on a given task , you will be redirected to a page where you should add your bid. The add your bid form requires you to add the desired amount you would want to be paid and the time you will require to complete the task. Still on the same page you can be able to view all the bids pertaining to the given tasks as well as the Freelancers' details.</p>
                        </div>
                        <div class="form-group">
                            <h1 style="font-style: oblique; font-size: x-large;"><b>How To View Tasks Won:</b></h1>
                            <p>After bidding on tasks, the client who posted the task goes through all the favorable bids produced to him by the system before awarding the task to a certain Freelancer. To view if a given task has been awarded to you, click on the Assigned Task link on your dashboard.</p>
                        </div>
                        <div class="form-group">
                            <h1 style="font-style: oblique; font-size: x-large;"><b>How To Add A Status Report:</b></h1>
                            <p>After being awarded a task, as a Freelancer you are supposed to always add a Status Report until the completion of the task. The Status Report helps the client to keep track of the task's progress. So within the Assigned Task page there is a button labeled report that redirects you to a page where you add the status report.</p>
                        </div>
                        <div class="form-group">
                            <h1 style="font-style: oblique; font-size: x-large;"><b>How To Post A Task:</b></h1>
                            <p>Only a client can post a task, to post a task click on the post a Job link on your dashboard. The link will redirect you to a page with form, the form requires you to fill a number of fields all of them are required except the location field thats only applicable for local jobs and sales and marketing jobs. on click of the button your job will be submitted and you will be able to view it on your dashboard.</p>
                        </div>
                         <div class="form-group">
                            <h1 style="font-style: oblique; font-size: x-large;"><b>How To Add A Project Report:</b></h1>
                            <p>A project report is only added when a given task is done and is satisfactory to the Client. A Client is supposed to complete a project report after reviewing the status reports from Freelancer and after checking the job done. To add a report you click on the button named report for each task that will redirect you to a page will a slot to add the feedback.</p>
                        </div>
                         <div class="form-group">
                            <h1 style="font-style: oblique; font-size: x-large;"><b>How To View Suitable Deals And Choose One:</b></h1>
                            <p>Suitable deals are the best prices for a Client filtered by the system. For a Client to be able to access the deals he/she needs to click on the deals button to view them. To choose one the client clicks on the approve button to award the task to the given Freelancer.</p>
                        </div>
                    </form>
                </div>
            </div></br>
            <div class="card">
                <div class="card-header" style="font-style: oblique; color: #0069d9;">For more inquiries Contact Us:</div>
                <div class="card-body">
                    <form action="" method="POST">
                        <div class="form-group">
                            <label for="fname">Full Name:</label><span style="color: #0069d9; ">*</span>
                            <input type="text" class="form-control" name="fname" required="" placeholder="Enter Full Name:">
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address:</label><span style="color: #0069d9; ">*</span>
                            <input type="email" class="form-control" name="email" required="" placeholder="Enter Email Address:">
                        </div>
                        <div class="form-group">
                            <label for="phoneNo">Phone Number:</label><span style="color: #0069d9; ">*</span>
                            <input type="text" class="form-control" name="phoneNo" required="" placeholder="Enter Phone Number:">
                        </div>
                        <div class="form-group">
                            <label for="comment">Comment:</label><span style="color: #0069d9; ">*</span>
                            <textarea type="text" class="form-control" name="comment" required="" placeholder="Enter Comment:"></textarea>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-sm btn-primary" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
