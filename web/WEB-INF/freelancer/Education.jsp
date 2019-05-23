<%-- 
    Document   : Education
    Created on : May 10, 2019, 8:54:01 PM
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
            <fieldset>
                <div class="card" style="margin-top: 50px;">
                    <form method="POST" action="">
                        <div class="card-header"><i class="fa fa-home">Education</i></div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="country">Country</label><span style="color: #0069d9;">*</span><br>
                                <input name="country" class="form-control" type="text" id="country"value="" required="">
                            </div>
                            <div class="form-group">
                                <label for="degree">Degree</label><span style="color: #0069d9;">*</span><br>
                                <input name="degree" class="form-control" type="text" id="degree"  value="" required="">
                            </div>
                            <div class="form-group">
                                <label for="startYear">Start Year</label><span style="color: #0069d9;">*</span><br>
                                <input name="startYear" class="form-control" type="text" id="startYear"  value="" required="">
                            </div>
                            <div class="form-group">
                                <label for="endYear">End Year</label><span style="color: #0069d9;">*</span><br>
                                <input name="endYear" class="form-control" type="text" id="endYear"  value="" required="">
                            </div>
                             <div class="form-group">
                                 <input type="hidden" name="category" value="education">
                            </div>
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

</div>
</body>
</html>
