<%-- 
    Document   : contactus
    Created on : 01-Jul-2022, 10:33:22 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <script src="https://kit.fontawesome.com/c620d8aece.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/943da7b5db.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../CSS/style.css">
    <link rel="stylesheet" href="../CSS/contactus_style.css">
    </head>
    <body>
        <section class="main_body_outside">
            <header class="header">
                <nav class="navigation">
                    <div class="nav-main">
                        <div class="nav-first">
                            <!-- <img src="images/logo.jpg" alt="logo"> -->
                            <img class="Error_page_logo" src="../Images/Banking_logo_original.png" alt="Logo">
                        </div>
                        <div class="nav-second">
                            <ul class="nav-items">
                                <li> <a href="#">Portfolio </a></li>
                                <li> <a href="#">Services</a>
                                    <i class="fa fa-caret-down"></i>
                                </li>
                                <li> <a href="#">About Us</a></li>
                                <li> <a href="#">Blog</a></li>
                                <li class="Login_first_home"> <a href="../JSP/login.jsp" target="_blank">Login</a></li>
                            </ul>
                        </div>
                        <div class="nav-third">
                            <button class="nav-button">
                                <div class="nav-button-flex">
                                    <div class="nav-button-flex1">
                                        <a href="..\HTML\home.html">Go Back</a>
                                    </div>
                                    <div class="nav-button-flex2">
                                        <i class="fa fa-arrow-right"></i>
                                    </div>
                                </div>
                            </button>
                        </div>
                    </div>
                </nav>
            </header>
            <section class="contact-us">
                <h1>Contact Us</h1>
                <form action="../contactus_servlet" method="post">
                    <div class="contact-input">
                        <div>
                            <i class="fa fa-user"></i>
                            <input type="text" name="contactus_user" id="user" placeholder="Enter your name *" required>
                        </div>
                        <div>
                            <i class="fa fa-phone"></i>
                            <input type="text" name="contactus_number" id="number" minlength="10" maxlength="10" required
                                placeholder="Enter your phone-number *">
                        </div>
                        <div>
                            <i class="fa fa-envelope"></i>
                            <input type="email" name="contactus_email" id="email" required placeholder="Enter your email *">
                        </div>
                        <div class="message_div">
                            <i class="fa-solid fa-message"></i>
                            <input type="text" name="contactus_message" id="message" placeholder="Enter message here ">
                        </div>
                    </div>
                    <button type="submit" class="submit-button">Submit</button>
                </form>
            </section>
            <section class="login_error_color_line_section">
                <div class="login_error_color_line">
                </div>
            </section>
        </section>
    </body>
</html>
