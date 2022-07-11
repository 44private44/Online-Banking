<%-- 
    Document   : login.jsp
    Created on : 06-Jul-2022, 11:36:16 pm
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
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="../CSS/style.css">
    <link rel="stylesheet" href="../CSS/media.css">
    <link rel="stylesheet" href="../CSS/login_style.css">
    <title>loginpage</title>
      
<body>
    <section class="home">
        <header class="header">
            <nav class="navigation">
                <div class="nav-main">
                    <div class="nav-first">
                        <!-- <img src="images/logo.jpg" alt="logo"> -->
                        <img class="Error_page_logo" src="../Images/Banking_logo_original.png" alt="Logo">
                    </div>
                    <div class="login_page_welcome_div">
                        <h2 class="login_page_welcome">WELCOME BACK !</h2>
                    </div>

                    <div class="newuser_div">
                        <h4> New User ?</h4>
                        <!--<h4 class="signup"> Sign Up</h4>-->
                        <a href="signup.jsp" class="signup_link_div" id="signup_button">
                            <h4 class="signup_main"> Sign Up</h4>
                        </a>
                    </div>

                    <!-- <div class="nav-second">
                        <ul class="nav-items">
                            <li> <a href="#">Portfolio </a></li>
                            <li> <a href="#">Services</a>
                                <i class="fa fa-caret-down"></i>
                            </li>
                            <li> <a href="#">About Us</a></li>
                            <li> <a href="#">Blog</a></li>
                            <li class="Login_first_home"> <a href="../JSP/login.jsp" target="_blank">Login</a></li> 
                        </ul>
                    </div> -->
                </div>
                <!-- <div class="signon_select_div">
                    <select name="select_signon" id="signon" class="signon_select">
                        <option value="india">India</option>
                        <option value="Australia">Australia</option>
                        <option value="USA">USA</option>
                        <option value="canada">Canada</option>
                        <option value="New Zealand">New Zealand</option>

                    </select>
                </div> -->
                <!-- <div class="nav-third">
                    <button class="nav-button">
                        <div class="nav-button-flex">
                            <div class="nav-button-flex1">
                                <a href="#">Contact Us</a>
                            </div>
                            <div class="nav-button-flex2">
                                <i class="fa fa-arrow-right"></i>
                            </div>
                        </div>
                    </button>
                </div> -->
                </div>
            </nav>
        </header>
        <section class="helpline_section">
            <div class="helpline_div_move">
                <h4>24x7x365 Helpline 1800 258 44 55 / 1800 102 44 55</h4>
            </div>
        </section>

        <section class="signon_main_section_body_flex">
            <section class="signon_main_section_body_flex1">
                <div class="signon_main_section_body_flex1_image">
                    <img src="../Images/Banking_logo_original.png" alt="logo">
                </div>
                <div>
                    <form action="../login_servlet" method="post">
                        <div class="signon_main_section_body_flex1_menus">
                            <h4>User ID *</h4>
                            <i class="fa fa-envelope"></i>
                            <input type="text" name="userid" id="user" placeholder="Enter Your User ID *" required>
                        </div>
                        <div class="signon_main_section_body_flex1_menus">
                            <h4>Sign On Password *</h4>
                            <i class="fa fa-key"></i>
                            <input type="password" name="userpassword" id="user" placeholder="Enter Your Password * "
                                required>
                        </div>
                        <!-- <div class="signon_main_section_body_flex1_menus">
                            <h4>Name *</h4>
                            <input type="text" placeholder="Enter here your name  *" required>
                        </div>
                        <div class="signon_main_section_body_flex1_menus_captcha">
                            <h4>Captcha *</h4>
                            <button> 1 2 Q 5 Z M </button>
                            <a href="#"><i class="fa-solid fa-arrow-rotate-right"></i></a>
                        </div>
                        <div class="signon_main_section_body_flex1_menus" id="captcha_input">
                            <input type="text" placeholder="Enter above captcha  *" required>
                        </div> -->
                        <div class="buttons_signon">
                            <a href="#" class="signon_login"> <button type="submit">Login</button></a>
                            <a href="../HTML/home.html" class="signon_clancle"> <button type="button">Cancle</button></a>
                        </div>
                        <section class="signin-in_section">
                            <div class="signin-images_div">
                                <h3>Continue with</h3>
                                <!-- <div class="signin_image_div"> -->
                                <img class="signin-google" src="../Images/google.webp" alt="google">
                                <img class="signin-facebook" src="../Images/signin-facebook.webp" alt="facebook">
                                <img class="signin-twitter" src="../Images/signin-twitter.webp" alt="twitter">
                                <!-- </div> -->
                            </div>
                        </section>
                        <div class="signon_forget">
                            <a href="signup.jsp">Set Password/Forgot Password</a>
                        </div>
                    </form>
                </div>
            </section>
            <section class="signon_main_section_body_flex2">
                <section class="main_slider">
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
<!--                            <div class="swiper-slide"><img src="../Images/home_slider4.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/home_slider1.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/home_slider3.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/home_slider5.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/home_slider6.jpg" alt="#"></div>-->
                            <!-- <div class="swiper-slide"><img src="../Images/home_slide10.jpg" alt="#"></div> -->
                            
                            <div class="swiper-slide"><img src="../Images/first_home.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/five_home.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/first_home.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/five_home.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/first_home.jpg" alt="#"></div>
                            <div class="swiper-slide"><img src="../Images/five_home.jpg" alt="#"></div>
                            
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>

                    </div>
                </section>
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
        <section class="signon_main_section_body_flex3">
            <div class="notice_scroll_main">
                <i class="fa-solid fa-bullhorn"></i> <br><br><br>
                <div class="move_notice_main">
                    <div class="move_notice">
                        <h4>Bill Payment Migration Information</h4> <br>
                        <ul>
                            <li>•
                                As one time exercise, please log in to net banking and enable AUTOPAY (under Bill
                                Payment
                                >>My Billers) if you wish to pay that biller automatically on the due date. Please
                                note
                                this
                                will enable autopay from the next cycle of bill presentment
                            </li> <br>
                            <li>•
                                To avoid duplicate bill payment, the auto pay instruction has been disabled in the
                                earlier
                                version. Therefore, the current presented bill will have to be paid manually.
                            </li> <br>
                            <li>• In case any earlier and unused biller is migrated then please de-register the same
                                to
                                avoid
                                any confusion.</li> <br>
                            <li>• In case any biller registered by you is not available kindly register the same.
                            </li>
                            <br>
                        </ul>
                        <h4>Caution</h4> <br>
                        <ul>
                            <li>
                                • In case your mobile is deactivated without your request or you get a call in this
                                regard, somebody may be trying to get a duplicate SIM/ steal your credentials like
                                OTP (One time password), Tracker ID for beneficiary registration etc

                            </li> <br>
                            <li>
                                • Our bank does not ask for the details of your account like /PIN/ Password/ mobile
                                numbers etc. Therefore any one pretending to be asking you for information may be
                                fraudulent entities.
                            </li> <br>
                            <li>• Any caller pretending to be from our Bank / Contact Centre may persuade you to
                                reveal your credentials like User Id and password stating that password sent to you
                                is erroneous and correct password needs to be sent. Please do not entertain such
                                requests as they are fraudulent entities.</li> <br>
                            <li>• In case any unauthorized access to your information, accounts or disputed
                                transactions, using internet Banking service, please check immediately with telecom
                                service provider and contact the Bank on 1800 258 44 55/1800 102 44 55.</li>
                            <br>
                            <li>• Change Passwords immediately on any such suspected activity/ as frequently as
                                possible.</li>
                            <br>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </section>
    </section>
</body>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script>
    const swiper = new Swiper('.swiper', {
        // Optional parameters
        // direction: 'vertical',
        autoplay: {
            delay: 3000,
            disableOnInteration: false,
        },
        loop: true,
        // If we need pagination
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },

        // Navigation arrows
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

        // And if we need scrollbar

    });
</script>


</html>
