<%-- 
    Document   : view_reports
    Created on : Jun 4, 2019, 2:59:16 PM
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <title>Admin | Feedback Reports</title>
    </head>
    <body>
        <div>
            <h1 style="font-size: 50px; font-weight: 600; font-style: oblique; color: #0069d9;"> <img src="../../resources/letter-f-logo-vector-4957605_1.jpg" width="70" height="70" alt="logo"/>uristics</h1><span style="font-style: oblique; color: #0069d9; font-size:16px;">A world-class platform for Freelancing activities</span>
        </div>
        <div class="toppnav">
            <a href="/logout">Log out</a>
            <a href="/admin/profile/view">Profile</a>
            <a href="">Payment</a>
            <a href="" type="button"data-toggle="modal" data-target="#myModal">>Reports</a>
            <div class="container">
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog modal-lg">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Feedback Reports</h4>
                            </div>
                            <div class="modal-body">

                                <embed src="~/Content/Article List.pdf"
                                       frameborder="0" width="100%" height="400px">

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <a class="active" href="/dashboard/admin">Home</a>
        </div>
        <div>

        </div>
    </body>
</html>
