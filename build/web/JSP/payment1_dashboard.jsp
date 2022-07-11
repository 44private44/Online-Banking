<%-- 
    Document   : payment1_dashboard
    Created on : 05-Jul-2022, 10:35:50 pm
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
    <link rel="stylesheet" href="../CSS/payment1_style.css">
    <title>payment Dashboard</title>

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
                            <a href="login.jsp">
                            <i class="fa-solid fa-right-from-bracket"></i>                                
                            </a>
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
                            <ul> <i class="fa-solid fa-caret-up"></i> </ul>
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

        <section class="main_name_section">
            <div class="main_name_div">
                <p class="name_goodmorning"> Good Morning, SOHAMKUMAR... </p>
                <div class="welcome_dashboard_flex">
                    <p class="welcome_dashboard">Welcome to your</p>
                    <p class="dashboard_p"> Dashboard </p>
                </div>
            </div>
        </section>
        <section class="services_list_section">
            <div class="services_list_div">
                <div class="services_list1_flex">
                    <p class="last_login_text">Last login</p>
                    <p class="time_text"> 05/07/2022 05:05:22 PM IST </p>
                </div>
                <div class="services_list2_div">
                    <ul class="services_list2_flex">
                        <a href="#">Personalize Dashboard | </a>
                        <a href="#">Reset | </a>
                        <a href="#">Refresh Accounts</a>
                    </ul>
                </div>
            </div>
        </section>

        <section class="payment_option_main_section">
            <section class="payment_option_inside_section">
                <div class="payment_option_header_div">
                    <h4>What you want ? </h4>
                </div>
                <div class="payment_option_buttons_div">
                    <a href="trasfer_money.jsp"> <button>Deposit</button></a>
                    <a href="trasfer_money.jsp"> <button>Transfer Money</button></a>
                    <a href="../history_servlet"> <button>Show Payment History</button></a>
                </div>
            </section>
        </section>
</body>

</html>