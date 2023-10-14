<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>NHASACHTV - Nhà sách trực tuyến</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <!-- Typography CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/typography.css">
        <!-- Remix icon-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.0.0/fonts/remixicon.css" rel="stylesheet"> 
        <!-- Line awesome-->
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <!-- Font Awesome-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    </head>
    <body>
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- Sidebar  -->
            <div class="iq-sidebar">
                <div class="iq-sidebar-logo d-flex justify-content-between">
                    <a href="index.html" class="header-logo">
                        <img src="${pageContext.request.contextPath}/images/logo.png" class="img-fluid rounded-normal" alt="">
                        <div class="logo-title">
                            <span class="text-primary text-uppercase">NHASACHTV</span>
                        </div>
                    </a>
                </div>
                <div id="sidebar-scrollbar">
                    <nav class="iq-sidebar-menu">
                        <ul id="iq-sidebar-toggle" class="iq-menu">
                            <li class="active active-menu">
                                <a href="#dashboard" class="iq-waves-effect" data-toggle="collapse" aria-expanded="true"><span class="ripple rippleEffect"></span><i class="las la-home iq-arrow-left"></i><span>Trang Chủ</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="dashboard" class="iq-submenu collapse show" data-parent="#iq-sidebar-toggle">
                                </ul>
                            </li>
                            <li>
                                <a href="#ui-elements" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="lab la-elementor iq-arrow-left"></i><span>Danh mục sản phẩm</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="ui-elements" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                                    <li class="elements">
                                        <a href="#sub-menu" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-play-circle-line"></i><span>Sách Trong Nước</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                    </li>
                                    <li class="elements">
                                        <a href="#sub-menu" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-play-circle-line"></i><span>Sách Kinh Tế</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                    </li>
                                    <li class="elements">
                                        <a href="#sub-menu" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-play-circle-line"></i><span>Sách Ngoại Ngữ</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                    </li>
                                    <li class="elements">
                                        <a href="#sub-menu" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-play-circle-line"></i><span>Sách Văn Học</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                    </li>                                                   
                                </ul>
                            </li>
                            <li>
                                <a href="#pages" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="las la-file-alt iq-arrow-left"></i><span>Admin Dashboard</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                <ul id="pages" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                                    <li><a href="admin-dashboard.html"><i class="ri-question-answer-line"></i>Dashboard</a></li>

                                    <li>
                                        <a href="#extra-pages" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="ri-pantone-line"></i><span>Extra Pages</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                                        <ul id="extra-pages" class="iq-submenu collapse" data-parent="#pages">
                                            <li><a href="pages-invoice.html"><i class="ri-question-answer-line"></i>Invoice</a></li>
                                            <li><a href="pages-comingsoon.html"><i class="ri-mastercard-line"></i>Login</a></li>
                                            <li><a href="pages-faq.html"><i class="ri-compasses-line"></i>Register</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="book-page.html"><i class="ri-book-line"></i>Yêu Thích</a></li>
                            <li><a href="book-pdf.html"><i class="ri-book-line"></i>Sách PDF</a></li>
                            <li><a href="sign-in.html"><i class="ri-book-line"></i>Logout</a></li>

                        </ul>
                    </nav>
                </div>
            </div>
            <!-- TOP Nav Bar -->
            <div class="iq-top-navbar">
                <div class="iq-navbar-custom">
                    <nav class="navbar navbar-expand-lg navbar-light p-0">
                        <div class="iq-menu-bt d-flex align-items-center">
                            <div class="wrapper-menu">
                                <div class="main-circle"><i class="las la-bars"></i></div>
                            </div>
                            <div class="iq-navbar-logo d-flex justify-content-between">
                                <a href="index.html" class="header-logo">
                                    <img src="${pageContext.request.contextPath}/images/logo.png" class="img-fluid rounded-normal" alt="">
                                    <div class="logo-title">
                                        <span class="text-primary text-uppercase">img01</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="navbar-breadcrumb">
                            <h5 class="mb-0">Trang Chủ</h5>
                        </div>
                        <div class="iq-search-bar">
                            <form action="#" class="searchbox">
                                <input type="text" class="text search-input" placeholder="Tìm kiếm sản phẩm...">
                                <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                            </form>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-label="Toggle navigation">
                            <i class="ri-menu-3-line"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto navbar-list">
                                <li class="nav-item nav-icon search-content">
                                    <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                        <i class="ri-search-line"></i>
                                    </a>
                                    <form action="#" class="search-box p-0">
                                        <input type="text" class="text search-input" placeholder="Type here to search...">
                                        <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                                    </form>
                                </li>
                                <li class="nav-item nav-icon">
                                    <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                        <i class="ri-notification-2-line"></i>
                                        <span class="bg-primary dots"></span>
                                    </a>
                                    <div class="iq-sub-dropdown">
                                        <div class="iq-card shadow-none m-0">
                                            <div class="iq-card-body p-0">
                                                <div class="bg-primary p-3">
                                                    <h5 class="mb-0 text-white">Thông Báo<small class="badge  badge-light float-right pt-1">4</small></h5>
                                                </div>
                                                <a href="#" class="iq-sub-card" >
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/1.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Đơn hàng giao thành công</h6>
                                                            <small class="float-right font-size-12">Just Now</small>
                                                            <p class="mb-0">95.000đ</p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card" >
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/02.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Đơn hàng giao thành công</h6>
                                                            <small class="float-right font-size-12">5 days ago</small>
                                                            <p class="mb-0">255.000đ</p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card" >
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/03.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Đơn hàng giao thành công</h6>
                                                            <small class="float-right font-size-12">2 days ago</small>
                                                            <p class="mb-0">79.000đ</p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card" >
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/04.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Đơn hàng #7979 giao không thành công</h6>
                                                            <small class="float-right font-size-12">3 days ago</small>
                                                            <p class="mb-0">100.000đ</p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item nav-icon dropdown">
                                    <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                        <i class="ri-mail-line"></i>
                                        <span class="bg-primary dots"></span>
                                    </a>
                                    <div class="iq-sub-dropdown">
                                        <div class="iq-card shadow-none m-0">
                                            <div class="iq-card-body p-0 ">
                                                <div class="bg-primary p-3">
                                                    <h5 class="mb-0 text-white">Tin Nhắn<small class="badge  badge-light float-right pt-1">5</small></h5>
                                                </div>
                                                <a href="#" class="iq-sub-card">
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/01.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">QT Shop</h6>
                                                            <small class="float-left font-size-12">13 Jun</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card">
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/02.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Tran Thuan Store</h6>
                                                            <small class="float-left font-size-12">20 Apr</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card">
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/03.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Hoang Vu Book</h6>
                                                            <small class="float-left font-size-12">30 Jun</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card">
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/04.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Quang Minh Book</h6>
                                                            <small class="float-left font-size-12">12 Sep</small>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card">
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="avatar-40 rounded" src="${pageContext.request.contextPath}/images/user/05.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">TV Team</h6>
                                                            <small class="float-left font-size-12">5 Dec</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item nav-icon dropdown">
                                    <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                        <i class="ri-shopping-cart-2-line"></i>
                                        <span class="badge badge-danger count-cart rounded-circle">2</span>
                                    </a>
                                    <div class="iq-sub-dropdown">
                                        <div class="iq-card shadow-none m-0">
                                            <div class="iq-card-body p-0 toggle-cart-info">
                                                <div class="bg-primary p-3">
                                                    <h5 class="mb-0 text-white">Giỏ Hàng<small class="badge  badge-light float-right pt-1">2</small></h5>
                                                </div>
                                                <a href="#" class="iq-sub-card">
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="rounded" src="${pageContext.request.contextPath}/images/cart/01.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Night People book</h6>
                                                            <p class="mb-0">$32</p>
                                                        </div>
                                                        <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card">
                                                    <div class="media align-items-center">
                                                        <div class="">
                                                            <img class="rounded" src="${pageContext.request.contextPath}/images/cart/02.jpg" alt="">
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">The Sin Eater Book</h6>
                                                            <p class="mb-0">$40</p>
                                                        </div>
                                                        <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                                                    </div>
                                                </a>
                                                <div class="d-flex align-items-center text-center p-3">
                                                    <a class="btn btn-primary mr-2 iq-sign-btn" href="checkout.html" role="button">Giỏ Hàng</a>
                                                    <a class="btn btn-primary iq-sign-btn" href="checkout.html" role="button">Thanh Toán</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="line-height pt-3">
                                    <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center">
                                        <img src="${pageContext.request.contextPath}/images/user/1.jpg" class="img-fluid rounded-circle mr-3" alt="user">
                                        <div class="caption">
                                            <h6 class="mb-1 line-height">Ông Trần Thuận</h6>
                                            <p class="mb-0 text-primary">Tài Khoản</p>
                                        </div>
                                    </a>
                                    <div class="iq-sub-dropdown iq-user-dropdown">
                                        <div class="iq-card shadow-none m-0">
                                            <div class="iq-card-body p-0 ">
                                                <div class="bg-primary p-3">
                                                    <h5 class="mb-0 text-white line-height">Xin Chào Ông Trần Thuận</h5>
                                                </div>
                                                <a href="profile-edit.html" class="iq-sub-card iq-bg-primary-hover">
                                                    <div class="media align-items-center">
                                                        <div class="rounded iq-card-icon iq-bg-primary">
                                                            <i class="ri-file-user-line"></i>
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Tài khoản của tôi</h6>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="profile-edit.html" class="iq-sub-card iq-bg-primary-hover">
                                                    <div class="media align-items-center">
                                                        <div class="rounded iq-card-icon iq-bg-primary">
                                                            <i class="ri-profile-line"></i>
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Sổ địa chỉ</h6>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card iq-bg-primary-hover">
                                                    <div class="media align-items-center">
                                                        <div class="rounded iq-card-icon iq-bg-primary">
                                                            <i class="ri-account-box-line"></i>
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Đơn hàng của tôi</h6>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="iq-sub-card iq-bg-primary-hover">
                                                    <div class="media align-items-center">
                                                        <div class="rounded iq-card-icon iq-bg-primary">
                                                            <i class="ri-heart-line"></i>
                                                        </div>
                                                        <div class="media-body ml-3">
                                                            <h6 class="mb-0 ">Yêu Thích</h6>
                                                        </div>
                                                    </div>
                                                </a>
                                                <div class="d-inline-block w-100 text-center p-3">
                                                    <a class="bg-primary iq-sign-btn" href="sign-in.html" role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- TOP Nav Bar END -->
            <!-- Page Content  -->
            <div id="content-page" class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height rounded">
                                <div class="newrealease-contens">
                                    <ul id="newrealease-slider" class="list-inline p-0 m-0 d-flex align-items-center">
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/img01.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/07.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/img05.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/img04.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/img05.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/01.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/07.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/08.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="javascript:void(0);">
                                                <img src="${pageContext.request.contextPath}/images/new_realeases/09.jpg" class="img-fluid w-100 rounded" alt="">
                                            </a>                              
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                                    <div class="iq-header-title">
                                        <h4 class="card-title mb-0">Gợi ý cho bạn</h4>
                                    </div>
                                    <div class="iq-card-header-toolbar d-flex align-items-center">                              
                                        <a href="category.html" class="btn btn-sm btn-primary view-more">Xem Thêm</a>
                                    </div>
                                </div> 
                                <div class="iq-card-body">  
                                    <div class="row">
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/img01.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">Bí Quyết Làm Giàu Của Napoleon Hill (Tái Bản 2019)</h6>
                                                                <p class="font-size-13 line-height mb-1">Napoleon Hill</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>79.000 đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/02.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">Trên Đỉnh Phố Wall(Tái bản 2019)</h6>
                                                                <p class="font-size-13 line-height mb-1">Fritz Wold</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>79.000 đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/03.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">Đến Starbucks Mua Cà Phê Cốc Lớn</h6>
                                                                <p class="font-size-13 line-height mb-1">John Klok</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>79.000 đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/04.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">Kinh Tế Học Viking</h6>
                                                                <p class="font-size-13 line-height mb-1">George Strong</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>68.000 đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/05.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">Cha Giàu Cha Nghèo</h6>
                                                                <p class="font-size-13 line-height mb-1">Ichae Semos</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>39.000đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/06.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">Find The Wave Book</h6>
                                                                <p class="font-size-13 line-height mb-1">Fidel Martin</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>79.000đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/07.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">See the More Story</h6>
                                                                <p class="font-size-13 line-height mb-1">Jules Boutin</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>79.000đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/08.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">The Wikde Book</h6>
                                                                <p class="font-size-13 line-height mb-1">Kusti Franti</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>79.390đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent mb-lg-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/09.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">Conversion Erik Routley</h6>
                                                                <p class="font-size-13 line-height mb-1">Argele Intili</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>79.000đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent mb-md-0 mb-lg-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/10.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">The Leo Dominica</h6>
                                                                <p class="font-size-13 line-height mb-1">Henry Jurk</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>79.000đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent mb-sm-0 mb-md-0 mb-lg-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/11.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">By The Editbeth Jat</h6>
                                                                <p class="font-size-13 line-height mb-1">David King</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>68.6080đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3">
                                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent mb-0 mb-sm-0 mb-md-0 mb-lg-0">
                                                <div class="iq-card-body p-0">
                                                    <div class="d-flex align-items-center">
                                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                            <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${pageContext.request.contextPath}/images/browse-books/12.jpg" alt=""></a>
                                                            <div class="view-book">
                                                                <a href="book-page.html" class="btn btn-sm btn-white">Mua Ngay</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-2">
                                                                <h6 class="mb-1">The Crucial Decade</h6>
                                                                <p class="font-size-13 line-height mb-1">Attilio Marzi</p>
                                                                <div class="d-block line-height">
                                                                    <span class="font-size-11 text-warning">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </span>                                             
                                                                </div>
                                                            </div>
                                                            <div class="price d-flex align-items-center">
                                                                <h6><b>179.000đ</b></h6>
                                                            </div>
                                                            <div class="iq-product-action">
                                                                <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                            </div>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pagination-container">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </ul>
                                    </nav>

                                </div>
                            </div>

                        </div>
                        <div class="col-lg-12">
                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                                    <div class="iq-header-title">
                                        <h4 class="card-title mb-0">Sách yêu thích</h4>
                                    </div>
                                    <div class="iq-card-header-toolbar d-flex align-items-center">
                                        <a href="category.html" class="btn btn-sm btn-primary view-more">Xem thêm</a>
                                    </div>
                                </div>                         
                                <div class="iq-card-body favorites-contens">
                                    <ul id="favorites-slider" class="list-inline p-0 mb-0 row">
                                        <li class="col-md-4">
                                            <div class="d-flex align-items-center">
                                                <div class="col-5 p-0 position-relative">
                                                    <a href="javascript:void();">
                                                        <img src="${pageContext.request.contextPath}/images/favorite/01.jpg" class="img-fluid rounded w-100" alt="">
                                                    </a>                                
                                                </div>
                                                <div class="col-7">
                                                    <h5 class="mb-2">D. Trump - Nghệ Thuật Đàm Phán</h5>
                                                    <p class="mb-2">Tác giả : Pedro Araez</p>                                          
                                                    <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                                        <span>Đã bán</span>
                                                        <span class="mr-4">69</span>
                                                    </div>
                                                    <div class="iq-progress-bar-linear d-inline-block w-100">
                                                        <div class="iq-progress-bar iq-bg-primary">
                                                            <span class="bg-primary" data-percent="65"></span>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="text-dark">Đọc ngay<i class="ri-arrow-right-s-line"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-md-4">
                                            <div class="d-flex align-items-center">
                                                <div class="col-5 p-0 position-relative">
                                                    <a href="javascript:void();">
                                                        <img src="${pageContext.request.contextPath}/images/favorite/02.jpg" class="img-fluid rounded w-100" alt="">
                                                    </a>                                
                                                </div>
                                                <div class="col-7">
                                                    <h5 class="mb-2">Một Đời Quản Trị</h5>
                                                    <p class="mb-2">Tác giả : Michael klock</p>                                          
                                                    <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                                        <span>Đã bán</span>
                                                        <span class="mr-4">450</span>
                                                    </div>
                                                    <div class="iq-progress-bar-linear d-inline-block w-100">
                                                        <div class="iq-progress-bar iq-bg-danger">
                                                            <span class="bg-danger" data-percent="45"></span>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="text-dark">Đọc ngay<i class="ri-arrow-right-s-line"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-md-4">
                                            <div class="d-flex align-items-center">
                                                <div class="col-5 p-0 position-relative">
                                                    <a href="javascript:void();">
                                                        <img src="${pageContext.request.contextPath}/images/favorite/03.jpg" class="img-fluid rounded w-100" alt="">
                                                    </a>                                
                                                </div>
                                                <div class="col-7">
                                                    <h5 class="mb-2">Người Bán Hàng Vĩ Đại Nhất Thế Giới</h5>
                                                    <p class="mb-2">Tác giả : Daniel Ace</p>                                          
                                                    <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                                        <span>Đã bán</span>
                                                        <span class="mr-4">79</span>
                                                    </div>
                                                    <div class="iq-progress-bar-linear d-inline-block w-100">
                                                        <div class="iq-progress-bar iq-bg-info">
                                                            <span class="bg-info" data-percent="78"></span>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="text-dark">Đọc ngay<i class="ri-arrow-right-s-line"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-md-4">
                                            <div class="d-flex align-items-center">
                                                <div class="col-5 p-0 position-relative">
                                                    <a href="javascript:void();">
                                                        <img src="${pageContext.request.contextPath}/images/favorite/04.jpg" class="img-fluid rounded w-100" alt="">
                                                    </a>                                
                                                </div>
                                                <div class="col-7">
                                                    <h5 class="mb-2">Economix- Các Nền Kinh Tế Vận Hành</h5>
                                                    <p class="mb-2">Tác giả : Luka Afton</p>                                          
                                                    <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                                        <span>Đã bán</span>
                                                        <span class="mr-4">900</span>
                                                    </div>
                                                    <div class="iq-progress-bar-linear d-inline-block w-100">
                                                        <div class="iq-progress-bar iq-bg-success">
                                                            <span class="bg-success" data-percent="90"></span>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="text-dark">Đọc ngay<i class="ri-arrow-right-s-line"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper END -->
        <!-- Footer -->
        <footer class="iq-footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                            <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-6 text-right">
                        Copyright 2020 <a href="#">NHASACHTV</a> All Rights Reserved.
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer END -->
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <!-- Appear JavaScript -->
        <script src="${pageContext.request.contextPath}/js/jquery.appear.js"></script>
        <!-- Countdown JavaScript -->
        <script src="${pageContext.request.contextPath}/js/countdown.min.js"></script>
        <!-- Counterup JavaScript -->
        <script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>
        <!-- Wow JavaScript -->
        <script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
        <!-- Apexcharts JavaScript -->
        <script src="${pageContext.request.contextPath}/js/apexcharts.js"></script>
        <!-- Slick JavaScript -->
        <script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
        <!-- Select2 JavaScript -->
        <script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
        <!-- Owl Carousel JavaScript -->
        <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
        <!-- Magnific Popup JavaScript -->
        <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
        <!-- Smooth Scrollbar JavaScript -->
        <script src="${pageContext.request.contextPath}/js/smooth-scrollbar.js"></script>
        <!-- lottie JavaScript -->
        <script src="${pageContext.request.contextPath}/js/lottie.js"></script>
        <!-- am core JavaScript -->
        <script src="${pageContext.request.contextPath}/js/core.js"></script>
        <!-- am charts JavaScript -->
        <script src="${pageContext.request.contextPath}/js/charts.js"></script>
        <!-- am animated JavaScript -->
        <script src="${pageContext.request.contextPath}/js/animated.js"></script>
        <!-- am kelly JavaScript -->
        <script src="${pageContext.request.contextPath}/js/kelly.js"></script>
        <!-- am maps JavaScript -->
        <script src="${pageContext.request.contextPath}/js/maps.js"></script>
        <!-- am worldLow JavaScript -->
        <script src="${pageContext.request.contextPath}/js/worldLow.js"></script>
        <!-- Raphael-min JavaScript -->
        <script src="${pageContext.request.contextPath}/js/raphael-min.js"></script>
        <!-- Morris JavaScript -->
        <script src="${pageContext.request.contextPath}/js/morris.js"></script>
        <!-- Morris min JavaScript -->
        <script src="${pageContext.request.contextPath}/js/morris.min.js"></script>
        <!-- Flatpicker Js -->
        <script src="${pageContext.request.contextPath}/js/flatpickr.js"></script>
        <!-- Style Customizer -->
        <script src="${pageContext.request.contextPath}/js/style-customizer.js"></script>
        <!-- Chart Custom JavaScript -->
        <script src="${pageContext.request.contextPath}/js/chart-custom.js"></script>
        <!-- Custom JavaScript -->
        <script src="${pageContext.request.contextPath}/js/custom.js"></script>
    </body>
</html>
