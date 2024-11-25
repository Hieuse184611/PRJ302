<%-- 
    Document   : profile
    Created on : Oct 5, 2024, 9:51:43 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>MultiShop - Online Shop Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">     
        <style>
            .change-password-link {
                position: absolute; 
                bottom: 10px; 
                right: 0; 
                text-decoration: none !important;
                font-weight: bold; 
            }

            @media (max-width: 576px) { 
                .change-password-link {
                    position: static; 
                    text-align: right; 
                    margin-top: 10px; 
                }
            }

        </style>
    </head>
    <body>
        <!-- Topbar Start -->
        <div class="container-fluid">
            <div class="row bg-secondary py-1 px-xl-5">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="d-inline-flex align-items-center h-100">
                        <a class="text-body mr-3" href="MGR_Dashboard.jsp">MANAGER</a>
                        <a class="text-body mr-3" href="">Contact</a>
                        <a class="text-body mr-3" href="">Help</a>
                        <a class="text-body mr-3" href="">FAQs</a>
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <div class="btn-group">
                            <!-- Hiển thị khi chưa đăng nhập -->
                            <c:choose>
                                <c:when test="${sessionScope.CUSTOMER == null}">
                                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">${sessionScope.CUSTOMER.name}</button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item btn" type="button" href="signin.jsp">Sign in</a>
                                            <a class="dropdown-item btn" type="button" href="signup.jsp">Sign up</a>
                                        </div>
                                </c:when>
                                <!-- Hiển thị khi đã đăng nhập -->
                                <c:otherwise>
                                    <a class="dropdown-item btn" type="button" href="MainController?action=Sign out">Sign out</a>
                                    <a class="dropdown-item btn" type="button" href="profile.jsp">Profile</a>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>                                                  
                    </div>
                    <div class="d-inline-flex align-items-center d-block d-lg-none">
                        <a href="" class="btn px-0 ml-2">
                            <i class="fas fa-heart text-dark"></i>
                            <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                        </a>
                        <a href="" class="btn px-0 ml-2">
                            <i class="fas fa-shopping-cart text-dark"></i>
                            <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
                <div class="col-lg-4">
                    <a href="home.jsp" class="text-decoration-none">
                        <span class="h1 text-uppercase text-primary bg-dark px-2">IS</span>
                        <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Perfume</span>
                    </a>
                </div>
                <div class="col-lg-4 col-6 text-left">
                    <form action="">
                        <div class="input-group">
                            <form action="MainController" method="POST">
                                <input type="text" class="form-control" placeholder="Search for products" name="search">
                                <div class="input-group-append">
                                    <span class="input-group-text bg-transparent text-primary" style="padding-bottom: 5px ">                                 
                                        <button name="action" value="Seacrh" type="submit" class="btn btn-block" style="padding: 0"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </form>
                </div>
                <div class="col-lg-4 col-6 text-right">
                    <p class="m-0">Customer Service</p>
                    <h5 class="m-0">+012 345 6789</h5>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <div class="container-fluid bg-dark mb-30">
            <div class="row px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                        <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                        <div class="navbar-nav w-100">                         
                            <a href="" class="nav-item nav-link">Shirts</a>
                            <a href="" class="nav-item nav-link">Jeans</a>
                            <a href="" class="nav-item nav-link">Jackets</a>
                            <a href="" class="nav-item nav-link">Shoes</a>
                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span>
                            <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="home.jsp" class="nav-item nav-link">Home</a>
                                <a href="shopping.jsp" class="nav-item nav-link">Shop</a>
                                <a href="productDetail.jsp" class="nav-item nav-link">Shop Detail</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down mt-1"></i></a>
                                    <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
                                        <a href="cart.jsp" class="dropdown-item">Shopping Cart</a>
                                        <a href="checkout.jsp" class="dropdown-item">Checkout</a>
                                    </div>
                                </div>
                                <a href="blog.jsp" class="nav-item nav-link">Blog</a>
                                <a href="orderStatus.jsp" class="nav-item nav-link">Order Status</a>
                            </div>
                            <div class="navbar-nav ml-auto py-0 d-none d-lg-block">                            
                                <a href="cart.jsp" class="btn px-0 ml-3">
                                    <i class="fas fa-shopping-cart text-primary"></i>
                                    <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                                </a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->

        <!-- Breadcrumb Start -->
        <div class="container-fluid">
            <div class="row px-xl-5">
                <div class="col-12">
                    <nav class="breadcrumb bg-light mb-30">
                        <a class="breadcrumb-item text-dark" href="home.jsp">Home</a>
                        <span class="breadcrumb-item active">Profile</span>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->


        <!--Profile form Start-->
        <div class="container-fluid">
            <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Profile</span></h2>
            <form action="MainController" method="get">
                <div class="row px-xl-5">
                    <div class="container mb-5"> 
                        <div class="row h-100 align-items-center justify-content-between">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-10 col-xl-10">
                                <div class="bg-light rounded p-4 my-4">
                                    <div class="row justify-content-around">
                                        <div class="col-lg-5 col-md-5 col-sm-12">
                                            <label for="floatingInput1" class="form-label">Username</label>

                                            <div class="input-group">
                                                <input type="text" class="form-control" id="floatingInput1" value="${sessionScope.CUSTOMER.name}" placeholder="Enter username" name="userName">
                                                <span class="input-group-text" style="cursor: pointer;" onclick="enableEdit('floatingInput1')">
                                                    <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-12">
                                            <label for="floatingInput2" class="form-label">Email</label>
                                            <div class="input-group">
                                                <input type="email" class="form-control" id="floatingInput2" value="${sessionScope.CUSTOMER.email}" placeholder="Enter email" name="email">
                                                <span class="input-group-text" style="cursor: pointer;" onclick="enableEdit('floatingInput2')">
                                                    <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row justify-content-around">

                                        <div class="col-lg-5 col-md-5 col-sm-12">
                                            <label for="floatingInput3" class="form-label">Address</label> 
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="floatingInput3" value="${sessionScope.CUSTOMER.detailAddress}" placeholder="Enter address" name="address">
                                                <span class="input-group-text" style="cursor: pointer;" onclick="enableEdit('floatingInput3')">
                                                    <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>  
                                        <div class="col-lg-5 col-md-5 col-sm-12">
                                            <label for="floatingInput3" class="form-label">Area</label> 
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="floatingInput3" value="${sessionScope.CUSTOMER.area}" placeholder="Enter area" name="area">
                                                <span class="input-group-text" style="cursor: pointer;" onclick="enableEdit('floatingInput3')">
                                                    <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>  
                                        <div class="col-lg-5 col-md-5 col-sm-12">
                                            <label for="floatingInput3" class="form-label">District</label> 
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="floatingInput3" value="${sessionScope.CUSTOMER.district}" placeholder="Enter district" name="district">
                                                <span class="input-group-text" style="cursor: pointer;" onclick="enableEdit('floatingInput3')">
                                                    <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>  
                                        <div class="col-lg-5 col-md-5 col-sm-12">
                                            <label for="floatingInput3" class="form-label">Ward</label> 
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="floatingInput3" value="${sessionScope.CUSTOMER.ward}" placeholder="Enter ward" name="ward">
                                                <span class="input-group-text" style="cursor: pointer;" onclick="enableEdit('floatingInput3')">
                                                    <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>  

                                        <div class="col-lg-5 col-md-5 col-sm-12">
                                            <label for="floatingInput4" class="form-label">Birthday</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" id="floatingInput4" value="${sessionScope.CUSTOMER.dayOfBirth}" placeholder="Enter birthday" name="birthday">
                                                <span class="input-group-text" style="cursor: pointer;" onclick="enableEdit('floatingInput4')">
                                                    <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row justify-content-around">

                                        <div class="col-lg-5 col-md-5 col-sm-12">
                                            <label for="floatingInput3" class="form-label">Phone</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="floatingInput3" value="${sessionScope.CUSTOMER.phone}" placeholder="Enter phone" name="phone">
                                                <span class="input-group-text" style="cursor: pointer;" onclick="enableEdit('floatingInput3')">
                                                    <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>
                                        ${requestScope.MESSAGE}
                                        <div class="col-lg-5 col-md-5 col-sm-12 position-relative">
                                            <a href="changePassword.jsp" class="change-password-link">Change Password</a>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between mt-4">
                                        <input type="hidden" name="userID" value="${sessionScope.CUSTOMER.id}">
                                        <button type="submit" name="action" value="Signout" class="btn btn-primary py-3 w-20 h-6"style="border-radius: 10px; padding: 5px 20px;">Sign out</button>
                                        <button type="submit" name="action" value="UpdateProfile" class="btn btn-primary py-3 w-20" style="border-radius: 10px; padding: 5px 20px;">Update</button>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!--Pròile in form End-->

            <!-- Footer Start -->
            <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
                <div class="row px-xl-5 pt-5">
                    <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                        <h5 class="text-secondary text-uppercase mb-4">Get In Touch</h5>
                        <p class="mb-4">No dolore ipsum accusam no lorem. Invidunt sed clita kasd clita et et dolor sed dolor. Rebum tempor no vero est magna amet no</p>
                        <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                        <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                        <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                    </div>
                    <div class="col-lg-8 col-md-12">
                        <div class="row">
                            <div class="col-md-4 mb-5">
                                <h5 class="text-secondary text-uppercase mb-4">Quick Shop</h5>
                                <div class="d-flex flex-column justify-content-start">
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                                    <a class="text-secondary" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                                </div>
                            </div>
                            <div class="col-md-4 mb-5">
                                <h5 class="text-secondary text-uppercase mb-4">My Account</h5>
                                <div class="d-flex flex-column justify-content-start">
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                                    <a class="text-secondary" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                                </div>
                            </div>
                            <div class="col-md-4 mb-5">
                                <h5 class="text-secondary text-uppercase mb-4">Newsletter</h5>
                                <p>Duo stet tempor ipsum sit amet magna ipsum tempor est</p>
                                <form action="">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Your Email Address">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary">Sign Up</button>
                                        </div>
                                    </div>
                                </form>
                                <h6 class="text-secondary text-uppercase mt-4 mb-3">Follow Us</h6>
                                <div class="d-flex">
                                    <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                                    <a class="btn btn-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row border-top mx-xl-5 py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
                    <div class="col-md-6 px-xl-0">
                        <p class="mb-md-0 text-center text-md-left text-secondary">
                            &copy; <a class="text-primary" href="#">Domain</a>. All Rights Reserved. Designed
                            by
                            <a class="text-primary" href="https://htmlcodex.com">HTML Codex</a>
                        </p>
                    </div>
                    <div class="col-md-6 px-xl-0 text-center text-md-right">
                        <img class="img-fluid" src="img/payments.png" alt="">
                    </div>
                </div>
            </div>
            <!-- Footer End -->

            <!-- JavaScript Libraries -->
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>

            <!-- Contact Javascript File -->
            <script src="mail/jqBootstrapValidation.min.js"></script>
            <script src="mail/contact.js"></script>

            <!-- Template Javascript -->
            <script src="js/main.js"></script>
            <script>
                                                    function enableEdit(inputId) {
                                                        var inputElement = document.getElementById(inputId);
                                                        inputElement.removeAttribute('readonly');
                                                        inputElement.focus();
                                                    }
            </script>
    </body>
</html>
