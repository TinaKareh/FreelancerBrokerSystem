<%-- 
    Document   : post_task
    Created on : May 14, 2019, 11:17:19 AM
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
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />

        <title>Client | Post Task</title>
    </head>
    <body>
        <div class="header1">
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a href="/get/online/help" class="btn btn-sm btn-lg">Help!</a>
            <a href="/logout">Log out</a>
            <a href="/client/profile/view">Profile</a>
            <a  href="/client/view/status">Report</a>
            <a href="/client/payment">Payment</a>
            <a class="active" href="/client/add/task">Post a Job</a>
            <a  href="/dashboard">Dashboard</a>
        </div>
        <div class="container">
            <fieldset>
                <div class="card" style="margin-top: 50px;">
                    <form method="POST" action="">
                        <div class="card-header"><i class="fa fa-home">Post Task</i></div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="project">Project Name</label><br>
                                <input name="project" class="form-control" type="text" id="project"  required="">
                            </div>
                            <div class="form-group">
                                <label for="category" >Category</label><span style="color: #0069d9">*</span><br>
                                <select name="category" class="form-control" >
                                    <option>Websites,IT &Software</option>
                                    <option>Mobile phones&Computing</option>
                                    <option>Writing&Content</option>
                                    <option> Design,Media&Architecture</option>
                                    <option>Data Entry& Admin</option>
                                    <option>Engineering&Science</option>
                                    <option>Translation&Languages</option>
                                    <option>Local Jobs & Services</option>
                                    <option>Sales & Marketing</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="skill">Skills</label><span style="color: #0069d9">*</span>
                                <select  multiple name="skill" class="form-control"><c:forEach items="${skills}" var="skill">
                                        <option value="${skill.skillId}">${skill.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="duration">Duration</label><span style="color: #0069d9">(days)*</span><br>
                                <input name="duration" class="form-control" type="text" id="duration"  required="">
                            </div>

                            <div class="form-group">
                                <label for="maxprice">Suitable Price</label><span style="color: #0069d9">(Kshs)*</span><br>
                                <input name="maxprice" class="form-control" type="text" id="maxprice"  required="">
                            </div>
                            <div class="form-group">
                                <label for="location">Location</label><span style="color: #0069d9">(applicable for physical jobs)</span><br>
                                <input name="location" class="form-control" type="text" id="location"  >
                            </div>
                            <div class="form-group">
                                <label for="desc">Description</label><span style="color: #0069d9">*</span><br>
                                <textarea name="desc"  class="form-control" id="desc" rows="5" cols="5" required=""></textarea>
                            </div>
                            <div class="card-footer"> 
                                <div class="form-group">
                                    <button type="submit" class="btn btn-sm btn-primary" style=""  >Save</button>
                                    <button type="reset" class="btn btn-sm btn-danger" style=""  >Cancel</button>
                                </div>
                            </div>
                    </form>

                </div>
        </div>
    </fieldset>
</body>
</html>
