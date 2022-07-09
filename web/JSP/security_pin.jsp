<%-- 
    Document   : security_pin
    Created on : 06-Jul-2022, 12:29:07 pm
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
    <link rel="stylesheet" href="../CSS/signon_style.css">
    <link rel="stylesheet" href="../CSS/varify_otp.css">
    <link rel="stylesheet" href="../CSS/payment1_style.css">
    <link rel="stylesheet" href="../CSS/deposit_style.css">
    <link rel="stylesheet" href="../CSS/security_style.css">
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
                    <div class="nav-second">
                        <ul class="nav-items">
                            <li class="payment_help"> <i class="fa-solid fa-circle-question"></i>
                                <a href="#">Help</a>
                            </li>
                            <li class="payment_notification">
                                <i class="fa-regular fa-bell"></i>
                                <button>2</button>
                            </li>
                            <li class="payment_user"> <i class="fa-solid fa-user"></i>
                                <i id="special_i" class="fa fa-caret-down"></i>
                            </li>
                            <!-- <li class="Login_first_home"> <a href="../JSP/login.jsp" target="_blank">Login</a></li> -->
                        </ul>
                    </div>
                    <div class="signon_select_div">
                        <select name="select_signon" id="signon" class="signon_select">
                            <option value="india">India</option>
                            <option value="Australia">Australia</option>
                            <option value="USA">USA</option>
                            <option value="canada">Canada</option>
                            <option value="New Zealand">New Zealand</option>

                        </select>
                    </div>
                    <div class="nav-third">
                        <!-- <button class="nav-button">
                            <div class="nav-button-flex">
                                <div class="nav-button-flex1">
                                    <a href="#">Contact Us</a>
                                </div>
                                <div class="nav-button-flex2">
                                    <i class="fa fa-arrow-right"></i>
                                </div>
                            </div>
                        </button> -->
                        <div class="payment_logout">
                            <i class="fa-solid fa-right-from-bracket"></i>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <section class="helpline_section">
            <div class="helpline_div_move">
                <h4>24x7x365 Helpline 1800 258 44 55 / 1800 102 44 55</h4>
            </div>
        </section>
        <section class="payment_menus_section">
            <div class="payment_menus_div">
                <ul class="payment_menus_ulflex">
                    <li>
                        <a href="#"> <i class="fa-solid fa-house"></i></a>
                    </li>
                    <li class="payment_account_menus">
                        <a href="#"> Accounts </a>
                        <div class="payment_account_hover_menus">
                            <ul><i class="fa-solid fa-caret-up"></i> </ul>
                            <ul><a href="#">Operative Accounts</a></ul>
                            <ul><a href="#">Deposit Accounts</a></ul>
                            <ul><a href="#">Loan Accounts</a></ul>
                            <ul><a href="#">Account Access</a></ul>
                            <ul><a href="#">PPF Accounts</a></ul>
                            <ul><a href="#">SSY Accounts</a></ul>
                            <ul class="moredetails_submenus">
                                <a href="#">More Details
                                    <i class="fa-solid fa-caret-right" id="moredetails_arrow"></i>
                                </a>
                                <ul class="moredetails_div">
                                    <ul> <a href="#"> Account Summary</a></ul>
                                    <ul> <a href="#"> View Shift Messages</a></ul>
                                    <ul> <a href="#"> Account Transfer</a></ul>
                                </ul>
                            </ul>
                        </div>
                    </li>
                    <li class="payment_account_menus">
                        <a href=""> Transfers </a>
                        <div class="payment_account_hover_menus">
                            <ul> <i class="fa-solid fa-caret-up"></i> </ul>
                            <ul class="moredetails_submenus">
                                <a href="#">Intiate Payments
                                    <i class="fa-solid fa-caret-right" id="transfers_arrow1"></i>
                                </a>
                                <ul class="moredetails_div">
                                    <ul> <a href="#"> Own Account Transfer</a></ul>
                                    <ul> <a href="#"> Within Bank Transfer</a></ul>
                                    <ul> <a href="#"> Outside Bank Transfer</a></ul>
                                    <ul> <a href="#"> Credit to PPF account</a></ul>
                                    <ul> <a href="#"> Initiate From Template</a></ul>

                                </ul>
                            </ul>
                            <ul class="moredetails_submenus" id="transfer_special_case">
                                <a href="#">Inquire Payments
                                    <i class="fa-solid fa-caret-right" id="transfers_arrow2"></i>
                                </a>
                                <ul class="moredetails_div3">
                                    <ul> <a href="#"> View Recuring Instructions</a></ul>
                                    <ul> <a href="#"> View Scheduled Transactions</a></ul>
                                    <ul> <a href="#"> View Complete Transactions</a></ul>
                                    <ul> <a href="#"> View Incomplete Transactions</a></ul>
                                    <ul> <a href="#"> View All Transactions</a></ul>
                                </ul>
                            </ul>
                            <ul><a href="#">Personalize Limit</a></ul>
                            <ul><a href="#">Transaction Management</a></ul>
                            <ul class="moredetails_submenus">
                                <a href="#">Institutional Fee Payment
                                </a>
                                <ul class="moredetails_div">
                                    <ul>
                                        <i class="fa-solid fa-caret-left" id="transfers_arrow3"> </i>
                                        <a href="#"> Account Summary</a>
                                    </ul>
                                    <ul> <a href="#"> View Shift Messages</a></ul>
                                    <ul> <a href="#"> Account Transfer</a></ul>
                                </ul>
                            </ul>
                            <ul><a href="#">Quick Tranfers</a></ul>
                            <ul class="moredetails_submenus">
                                <a href="#">More Details
                                    <i class="fa-solid fa-caret-right" id="moredetails_arrow"></i>
                                </a>
                                <ul class="moredetails_div">
                                    <ul> <a href="#"> Account Summary</a></ul>
                                    <ul> <a href="#"> View Shift Messages</a></ul>
                                    <ul> <a href="#"> Account Transfer</a></ul>
                                </ul>
                            </ul>

                        </div>
                    </li>
                    <li>
                        <a href="#"> Bill Payments </a>
                    </li>
                    <li class="payment_account_menus">
                        <a href="#"> Investments</a>
                        <div class="payment_account_hover_menus">
                            <ul> <i class="fa-solid fa-caret-up"></i> </ul>
                            <ul><a href="#">IPO</a></ul>
                            <ul><a href="#">Sovereign Gold Bond</a></ul>
                            <ul><a href="#">Open Fixed Deposit Account</a></ul>
                            <ul><a href="#">Bisag-N Wealth</a></ul>
                            <ul><a href="#">DEMAT services</a></ul>
                        </div>
                    </li>
                    <li class="payment_account_menus">
                        <a href="#">Services</a>
                        <div class="payment_account_hover_menus">
                            <ul> <i class="fa-solid fa-caret-up"></i> </ul>
                            <ul><a href="#">Card Services</a></ul>
                            <ul><a href="#">Cheque Book</a></ul>
                            <ul><a href="#">Certificates</a></ul>
                            <ul><a href="#">Mobile Banking(BISAG)</a></ul>
                            <ul><a href="#">Apply for Locker</a></ul>
                            <ul><a href="#">View Dispute Status</a></ul>
                        </div>
                    </li>
                    <li>
                        <a href="#"> Snapshot </a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="quick_links_section">
            <section class="quick_inside_section">
                <div class="quick_div1">
                    <ul class="quick_links_flex1">
                        <a href="#">QUICK LINKS</a>
                        <i class="fa-solid fa-caret-down"></i>
                    </ul>
                </div>
                <div class="quick_div2">
                    <ul>
                        <a href="#"> Offers</a>
                    </ul>
                    <ul>
                        <a href=""> Offers </a>
                    </ul>
                    <ul>
                        <a href="#"> Within Bank Transfer</a>
                    </ul>
                    <ul>
                        <a href="#"> Certificates</a>
                    </ul>
                    <ul>
                        <a href="#"> TDS Certificate</a>
                    </ul>
                    <ul>
                        <a href="#"> Outside Bank Transfer</a>
                    </ul>
                    <ul>
                        <a href="#"> Request New Cheque Book</a>
                    </ul>
                </div>
            </section>
        </section>

        <section class="otp_session">
            <section class="otp_inside_session_main">

                <div class="otp_header_div1">
                    <H2>Withdraw Money</H2>
                </div>
                <!-- <div class="otp_title_div2">
                    <h3>Please enter proper details</h3>
                </div> -->
                <form action="" class="otp_form" method="post">
                    <div class="otp_form_div1">
                        <div class="otp_form_number">Account Number *</div>
                        <div class="otp_from_input_div"> <input type="text" name="otp_form_number_input"
                                placeholder="Enter Account no" required></div>
                    </div>
                    <div class="otp_form_div2">
                        <div class="otp_form_email">Money *</div>
                        <div> <input type="text" name="otp_email" class="otp_form_email_input"
                                placeholder="Enter money you want to withdraw" required></div>
                    </div>
                    <div class="otp_note_div">
                        <h5 class="note_first">Note : </h5>
                        <h5 class="note_second"> Before continue to process please read all </h5> <a href="#"
                            class="note_second_terms">Tearms &
                            Conditions</a>
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
    <section class="override_section">
        <section>
            <div class="varify_otp_header">
                <h3>Security Pin</h3>
            </div>
            <div class="varify_otp_note">
                <h5>Do not share your Security Pin with anyone !</h5>
            </div>
            <div>
                <form action="../securitypin_servlet" class="otp_form" method="post">
                    <div class="otp_form_div2">
                        <div class="otp_form_email">SECURITY PIN *</div>
                        <div> <input type="password" name="security_pin" class="otp_form_email_input"
                                placeholder="Enter here your secret code " required></div>
                    </div>
                    <div class="otp_buttons">
                        <div class="otp_from_next">
                            <a href="#"> <button type="submit" id="otp_varify_button_next">Continue</button> </a>
                        </div>
                        <div class="otp_from_cancle">
                            <a href="trasfer_money.jsp"> <button type="button" id="otp_varify_button_cancle">Cancle</button> </a>
                        </div>
                    </div>
                </form>
            </div>
        </section>
</body>

</html>
