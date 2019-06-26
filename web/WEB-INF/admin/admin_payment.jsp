<%-- 
    Document   : admin_payment
    Created on : Mar 19, 2019, 2:11:28 PM
    Author     : GraceTina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | Payment</title>
    </head>
    <body>
         <div class="toppnav">
            <a href="/logout">Log out</a>
            <a href="/admin/profile/view">Profile</a>
            <a class="active" href="/admin/payment">Payment</a>
            <a href="/admin/view/project">Reports</a>
            <a  href="/dashboard/admin">Home</a>
        </div>
        <div class="container">
            <div class="card">
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
                                            value: '5000.00'
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
        </div>
    </body>
</html>
