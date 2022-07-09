<%-- 
    Document   : login3
    Created on : 29-Jun-2022, 4:43:28 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Varify OTP</title>
    <link rel="stylesheet" href="../CSS/login_error_style.css">
    <link rel="stylesheet" href="../CSS/style.css">
    <link rel="stylesheet" href="../CSS/otp.css">
    <link rel="stylesheet" href="../CSS/varify_otp.css">

</head>  
    <body>
        <section class="home">
            <header class="header">
                <nav class="navigation">
                    <div class="nav-main">
                        <div class="nav-first">
                            <!-- <img src="images/logo.jpg" alt="logo"> -->
                            <img class="Error_page_logo" src="../Images/Banking_logo_original.png" alt="Logo">
                        </div>
                    </div>
                </nav>
            </header>
            <section class="otp_session">
                <section class="otp_inside_session_main">
                    <div class="otp_header_div1">
                        <H2>One Time Password</H2>
                    </div>
                    <div class="otp_title_div2">
                        <h3>For security reasons provide additional credentials to proceed</h3>
                    </div>
                    <form action="" class="otp_form" method="post">
                        <div class="otp_form_div1">
                            <div class="otp_form_number">Mobile Number *</div>
                            <div class="otp_from_input_div"> <input type="text" name="otp_form_number_input"
                                    placeholder="Enter your mobile no" required></div>
                        </div>
                        <div class="otp_form_div2">
                            <div class="otp_form_email">Email Address *</div>
                            <div> <input type="email" name="otp_email" class="otp_form_email_input"
                                    placeholder="Enter your email" required></div>
                        </div>
                        <div class="otp_note_div">
                            <h5 class="note_first">Note : </h5>
                            <h5 class="note_second">Please enter mobile number prefix with country code. For E.g 91 for
                                India</h5>
                            <h5 class="note_third">Please enter proper email address like example@gmail.com</h5>
                        </div>
                        <section class="otp_buttons">
                            <div class="otp_from_logout">
                                <a href=""> <button type="button">Logout</button> </a>
                            </div>
                            <div class="otp_from_next">
                                <a href=""> <button type="button">Continue</button> </a>
                            </div>
                            <div class="otp_from_cancle">
                                <a href=""> <button type="button">Cancle</button> </a>
                            </div>
                        </section>
                    </form>
                </section>
            </section>
        </section>
        <section class="override_section ">
            <section>
                <div class="varify_otp_header">
                    <h3>One Time Password</h3>
                </div>
                <div class="varify_otp_note">
                    <h5>Please enter One Time Password sent on your registered mobile number and Email ID</h5>
                </div>
                <div>
                    <form action="../otp_varify_servlet" class="otp_form" method="post">
                        <div class="otp_form_div1">
                            <div class="otp_form_number" >Ref id *</div>
                            <div class="otp_from_input_div"> <input type="text" name="otp_varify_form_refid_input"
                                    placeholder="Enter your reference id" required></div>
                        </div>
                        <div class="otp_form_div2">
                            <div class="otp_form_email">OTP *</div>
                            <div> <input type="password" name="otp_varify" class="otp_form_email_input"
                                    placeholder="Enter here otp " required></div>
                        </div>
                        <div class="otp_buttons">
                            <div class="otp_from_next">
                                <a href="#"> <button type="submit" id="otp_varify_button_next">Continue</button> </a>
                            </div>
                            <div class="otp_from_cancle">
                                <a href="login2.jsp"> <button type="button" id="otp_varify_button_cancle">Cancle</button> </a>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </section>
          
        <%
            if(session.getAttribute("userid")==null)
            {
                response.sendRedirect("login.jsp");
            }
            
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 
        %>  
          
    </body>
</html>
