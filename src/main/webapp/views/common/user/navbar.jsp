<%-- 
    Document   : navbar
    Created on : Oct 14, 2023, 7:48:56 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <nav class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/home">Trang chủ</a>
            </nav>
            <div class="iq-search-bar">
                <!--Search-->
                <form action="home" class="searchbox">
                    <input type="text" name="action" value="search" style="display: none" />
                    <div class="input-group-append">
                        <input type="text" class="text search-input" placeholder="Tìm kiếm sản phẩm..." name="keyword">
                        <button class="btn btn-outline-dark" type="submit"><i class="ri-search-line"></i></button>
                    </div>
                </form>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-label="Toggle navigation">
                <i class="ri-menu-3-line"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto navbar-list">
                    <c:if test="${sessionScope.account == null}">
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/authen?action=login">Sign in</a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/authen?action=register">Register</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.account != null}">
                        <li class="nav-item nav-icon search-content">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-search-line"></i>
                            </a>
                            <!--Search-->
                            <form action="home" class="search-box p-0">
                                <input type="text" name="action" value="search" style="display: none" />
                                <input type="text" class="text search-input" placeholder="Type here to search..." name="keyword">
                                <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                            </form>
                        </li>
                        <li class="nav-item nav-icon">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-notification-2-line"></i>
                                <span class="bg-primary dots"></span>
                            </a>
                        </li>
                        <li class="nav-item nav-icon dropdown">
                            <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-mail-line"></i>
                                <span class="bg-primary dots"></span>
                            </a>
                        </li>
                        <li class="nav-item nav-icon dropdown">
                            <a href="${pageContext.request.contextPath}/check-out" class="search-toggle iq-waves-effect text-gray rounded">
                                <i class="ri-shopping-cart-2-line"></i>
                                <span class="badge badge-danger count-cart rounded-circle">2</span>
                            </a>
                        </li>
                        <li class="line-height pt-3">
                            <a href="${pageContext.request.contextPath}/dashboard?action=profile-edit" class="search-toggle iq-waves-effect d-flex align-items-center">
                                <img src="${pageContext.request.contextPath}/images/user/1.jpg" class="img-fluid rounded-circle mr-3" alt="user">
                                <div class="caption">
                                    <h6 class="mb-1 line-height">${sessionScope.account.username}</h6>
                                    <p class="mb-0 text-primary">Tài Khoản</p>
                                </div>
                            </a>
                            <div class="iq-sub-dropdown iq-user-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                        <div class="bg-primary p-3">
                                            <h5 class="mb-0 text-white line-height">Xin Chào Ông Trần Thuận</h5>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/dashboard?action=profile-edit" class="iq-sub-card iq-bg-primary-hover">
                                            <div class="media align-items-center">
                                                <div class="rounded iq-card-icon iq-bg-primary">
                                                    <i class="ri-file-user-line"></i>
                                                </div>
                                                <div class="media-body ml-3">
                                                    <h6 class="mb-0 ">Tài khoản của tôi</h6>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="iq-sub-card iq-bg-primary-hover">
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
                                        <div class="d-inline-block w-100 text-center p-3">
                                            <a class="bg-primary iq-sign-btn" href="${pageContext.request.contextPath}/authen?action=logout" role="button">
                                                Sign out<i class="ri-login-box-line ml-2"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:if>
                </ul>
            </div>
        </nav>
    </div>
</div>
