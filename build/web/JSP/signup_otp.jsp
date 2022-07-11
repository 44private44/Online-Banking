<%-- 
    Document   : signup_otp
    Created on : 09-Jul-2022, 4:27:11 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://kit.fontawesome.com/c620d8aece.js" crossorigin="anonymous"></script>
    <title>sign up otp page</title>
    <link rel="stylesheet" href="../CSS/style.css">
    <link rel="stylesheet" href="../CSS/otp.css">
    <link rel="stylesheet" href="../CSS/varify_otp.css">
    <link rel="stylesheet" href="../CSS/newuser.css">
    <link rel="stylesheet" href="../CSS/signup_otp.css"/>
    </head>
<body>
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
                                <a href="contactus.jsp">Contact Us</a>
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
    <section class="signup_out_section">
        <div class="signup_title">
            <h2 class="signup_title">Registration Form</h2>
        </div>
        <section class="signup_section_main">
            <form action="../signup_userdata_servlet" method="post">
                <section class="signup_section_flex_original">
                    <section class="signup_section_flex1">
                        <div>
                            <h5>User ID *</h5>
                            <input type="text" name="signup_userid" placeholder="Enter User ID" required>
                        </div>
                        <div>
                            <h5>Password *</h5>
                            <input type="password" name="signup_password1" id="signup_password1" placeholder="Enter your password" required>
                        </div>
                        <div>
                            <h5>Confirm Password *</h5>
                            <input type="password" name="signup_password2" id="signup_password2" placeholder="Again enter your password" required>
                        </div>
                        <div>
                            <h5>Email id*</h5>
                            <input type="email" name="signup_email" placeholder="Enter your email address" required>
                        </div>
                    </section>
                    <section class="signup_section_flex12">
                        <div>
                            <h5>Account No *</h5>
                            <input type="text" name="signup_accountno" placeholder="Enter your account number" required>
                        </div>
                        <div class="select_div">
                            <h5>Account type *</h5>
                            <select name="account_type" id="account_type">
                                <option value="Saving account">Saving account</option>
                                <option value="Current account">Current account</option>
                                <option value="FD/RD account">FD/RD account</option>
                                <option value="OD account">OD account</option>
                            </select>
                        </div>
                        <div>
                            <h5>IFSC code *</h5>
                            <input type="text" name="signup_ifsc" placeholder="Enter your ifsc code" required>
                        </div>
                        <div>
                            <h5>Mobile No *</h5>
                            <input type="text" name="signup_mobileno" placeholder="Enter Your mobile number" required>
                        </div>
                    </section>
                </section>
                <section class="signup_buttons">
                    <div class="signup_buttons_back"> <a href="login.jsp"> <button type="button">Back</button></a></div>
                    <div class="signup_buttons_submit"> <a href="#"> <button type="submit" onclick="confirm()" >Submit</button></a></div>
                    <div class="signup_buttons_reset"> <a href="#"> <button type="reset">Reset</button></a></div>
                </section>
            </form>
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
                    <form action="../signup_otp_varify_servlet" class="otp_form" method="post">
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
                                <a href="signup_otp.jsp"> <button type="button" id="otp_varify_button_cancle">Cancle</button> </a>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </section>
    
    <script>
        function confirm() 
        {
            var pass1 = document.getElementById("signup_password1").value;
            var pass2 = document.getElementById("signup_password2").value;

            if (pass1!= pass2) 
            {
                window.alert("please make sure both password are must same !");
            }
        }
    </script>
</body>
</html>
