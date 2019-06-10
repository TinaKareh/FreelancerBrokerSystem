<%-- 
    Document   : payment_gateway
    Created on : Mar 19, 2019, 2:09:12 PM
    Author     : GraceTina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src=”https://www.paypalobjects.com/api/checkout.js”>& lt;</script>
         <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/index.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/form.css" />
        <title>Client | Payment</title>
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
        <div>
            <script
                src="https://www.paypal.com/sdk/js?client-id=AdRX4l91wPn8BV5rMz7oJJA4sCGxIauUZlTWa20AcrVGy2jOUk8MwgLLEKhSERdU-6dNWm3nUDQ4gVzs">
            </script>
            <div id="paypal-button-container">
                <script>
                    paypal.Buttons({
                        createOrder: function (data, actions) {
                            return actions.order.create({
                                purchase_units: [{
                                        amount: {
                                            value: '0.01'
                                        }
                                    }]
                            });
                        },
                        onApprove: function (data, actions) {
                            // Capture the funds from the transaction
                            return actions.order.capture().then(function (details) {
                                // Show a success message to your buyer
                                alert('Transaction completed by ' + details.payer.name.given_name);
                            });
                        }
                    }).render('#paypal-button-container');
                </script>
            </div>
        </div>
    </body>
</html>
