<%-- 
    Document   : transaction_history
    Created on : 07-Jul-2022, 11:00:23 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://kit.fontawesome.com/c620d8aece.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/943da7b5db.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/943da7b5db.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/history_style.css">
    <title>Show Payment History</title>
    </head>
    
<body>
    <section>
        <section class="details_main_section">
            <div class="details_header_div">
            <div class="logo_main">
                <img src="Images/Banking_logo_original.png" alt="">
            </div>
                <h3>
                    Your Account Details
                </h3>
            </div>
            <div class="user_details_div">
                <h3> Your Account Number : <label for="" class="label_user_details"> SM047yqwGJ812 </label> </h3>
                <h3> Your Current Balance : <label for="" class="label_user_details"> ${rest_money} rs</label> </h3>
                <h3> Your Security Pin : <label for="" class="label_user_details"> 123456</label> </h3>
            </div>
            <div class="back_main_div">
                <a href="JSP/payment1_dashboard.jsp"> <button>Back <i class="fa fa-arrow-right"></i> </button> </a>
            </div>
        </section>
        <div class="details_table_main_div">
            <table id="customers">
                <caption class="caption_table">Transaction History</caption>
                <tr>
                    <th>From</th>
                    <th>To</th>
                    <th>Money Transfer (rs)</th>
                    <th>Current Balance</th>
                </tr>
                <tr>
                    <td> SM047yqwGJ812</td>
                    <td> ${account_no_to}</td>
                    <td> ${money}</td>
                    <td> ${rest_money}</td>
                </tr>
        </div>
    </section>
</body>
</html>
