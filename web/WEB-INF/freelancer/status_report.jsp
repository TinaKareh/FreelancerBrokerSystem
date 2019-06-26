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
            <a href="/get/online/help" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/freelancer/profile/view">Profile</a>
            <a  href="/dashboard/freelancer">Home</a>
        </div>
        <div class="container">
            <fieldset>
                <div class="card" style="margin-top: 50px;">
                    <form>
  <div class="card-header">
                            <table>
                                <tr>
                                    <td align="left"><b>Project Name:</b></td>
                                    <td>${task.projectName}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Category:</b></td>
                                    <td>${task.category}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Duration:</b></td>
                                    <td>${task.bestDeal.duration}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Price Range:</b></td>
                                    <td> ${task.bestDeal.bidAmount}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Location:</b></td>
                                    <td>${task.location}</td>
                                </tr>
                                <tr>
                                    <td align="left"><b>Description:</b></td>
                                    <td>${task.description}</td>
                                </tr>
                            </table>
                        </div>                    
                                <div class="card-body">
                            <div class="form-group">
                                <label for="jobId">Task ID</label><span style="color: #0069d9;">*</span>
                                <input name="jobId" class="form-control" type="text"  id="jobId" value="${task.taskId}" required="" readonly="">
                            </div>
                               <div class="form-group">
                                <label for="clientId">Client ID</label><span style="color: #0069d9;">*</span>
                                <input name="clientId" class="form-control" type="text"  id="clientId" value="${task.appliedBy.clientId}" required="" readonly="">
                            </div>
                            <div class="form-group">
                                <label for="status">Project Status</label><span style="color: #0069d9;">*</span>
                                <textarea name="status" class="form-control" type="text"  id="status"  required=""></textarea>
                            </div>
                            <div class="form-group">
                                <label for="sdate">Status Date</label><span style="color: #0069d9;">*</span>
                                <input name="sdate" class="form-control" type="date"  id="sdate"  required="">
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="form-group">
                                <button class="btn btn-primary btn-sm"  type="submit" style="width: 10%; float: right;">Submit</button>
                            </div>
                        </div>

                    </form>
                </div>
            </fieldset>
        </div>

    </body>
</html>
