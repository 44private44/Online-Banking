<%-- 
    Document   : success_message
    Created on : 07-Jul-2022, 6:42:26 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../CSS/login_error_style.css">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/success_message.css">
    <title>Success money transfer</title>
    
    </head>

<body>
    <section class="home">
        <header class="header">
            <nav class="navigation">
                <div class="nav-main">
                    <div class="nav-first">
                        <!-- <img src="images/logo.jpg" alt="logo"> -->
                        <img class="Error_page_logo" src="Images/Banking_logo_original.png" alt="">
                    </div>
                </div>
            </nav>
        </header>
        <section class="otp_session">
            <section class="otp_inside_session_main">

                <div class="otp_header_div1">
                    <H2>Successfully transfer your money.</H2>
                </div>
                <div class="otp_title_div2">
                    <h3>From : <label class="special_lable"> SM047yqwGJ812  </label> </h3>
                    <h3>To : <label class="special_lable"> ${account_no_to}  </label> </h3>
                    <h3>Transfer Money : <label class="special_lable"> ${money} rs </label></h3>
                    <h3>Now your Balance : <label class="special_lable"> ${rest_money} rs </label> </h3>
                </div>
                <section class="otp_buttons">

                    <div class="otp_from_next">
                        <a href="history_servlet"> <button type="button">OK</button> </a>
                    </div>

                </section>
            </section>
        </section>
    </section>
                
</body>

</html>