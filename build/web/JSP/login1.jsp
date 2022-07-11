<%-- 
    Document   : login
    Created on : 25-Jun-2022, 2:01:52 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In page</title>
    <script src="https://kit.fontawesome.com/c620d8aece.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../CSS/login_page_style.css">
</head>
<body>
    <section class="signin-background">
        <section class="signin-header">
            <h2 class="welcome">WELCOME BACK!</h2>
            <div class="newuser" >
                <h4> New User ?</h4>
                 <!--<h4 class="signup"> Sign Up</h4>-->  
                 <a href="signup.jsp" class="signup_link" id="signup_button" style="text-decoration: none; color: white"  > <h4 class="signup"> Sign Up</h4> </a> 
            </div>
        </section>
        <section class="signin-page">
            <div class="signin-heading">
                <h1>Log In</h1>
                <p> Log In to continue</p>
            </div>
            <form action="../login_servlet" method="POST">
            <div class="signin-email">
                <i class="fa fa-envelope"></i>
                <input type="text" name="userid" id="user" placeholder="Enter Your User ID *" required>        
            </div>
            <div class="signin-password">
                <i class="fa fa-key"></i>
                <input type="password" name="userpassword" id="user" placeholder="Enter Your Password * " required>
            </div>
            <div class="signin-last">
                <button  <input type="submit" class="signin-button" > Log In</button>
<!--                <p class="forget-password"> Forget Password ?</p>-->
            </div>
            </form>
            <section class="signin-in">
                <div class="signin-images">
                    <h3>Continue with</h3>
                    <img  class="signin-google" src="../Images/google.webp" alt="google">
                    <img  class="signin-facebook" src="../Images/signin-facebook.webp" alt="facebook">
                    <img  class="signin-twitter" src="../Images/signin-twitter.webp" alt="twitter">
                </div>
            </section>
        </section>
                <section class="login_other_data_section">
            <div class="login_other_data_div">
                <ul class="login_other_data">

                    <li> <a href="signup.jsp"> Unlock User Id</a> </li>
                    <li> <a href="signup.jsp"> Reset Security Answers</a> </li>
                    <li> <a href="signup.jsp"> Forgot User ID</a> </li>
                    <li> <a href="#"> Online Registration using Debit Card</a> </li>
                    <li> <a href="signup.jsp"> Set Password/Forgot Password</a> </li>
                    <li> <a href="signup.jsp"> Mobile OTP Activation</a> </li>
                </ul>
            </div>
        </section>
    </section>
    
</body>
</html>
