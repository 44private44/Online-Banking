<%-- 
    Document   : signup
    Created on : 30-Jun-2022, 12:52:12 am
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/c620d8aece.js" crossorigin="anonymous"></script>
    <title>Registration From</title>
    <link rel="stylesheet" href="../CSS/style.css">
    <link rel="stylesheet" href="../CSS/newuser.css">
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