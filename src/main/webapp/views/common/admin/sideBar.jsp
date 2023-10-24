<%-- 
    Document   : sideBar
    Created on : Oct 17, 2023, 4:33:09 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="iq-sidebar">
    <div class="iq-sidebar-logo d-flex justify-content-between">
        <a href="${pageContext.request.contextPath}/home" class="header-logo">
            <img src="${pageContext.request.contextPath}/images/logo.png" class="img-fluid rounded-normal" alt="">
            <div class="logo-title">
                <span class="text-primary text-uppercase">NHASACHTV</span>
            </div>
        </a>
        <div class="iq-menu-bt-sidebar">
            <div class="iq-menu-bt align-self-center">
                <div class="wrapper-menu">
                    <div class="main-circle"><i class="las la-bars"></i></div>
                </div>
            </div>
        </div>
    </div>
    <div id="sidebar-scrollbar">
        <nav class="iq-sidebar-menu">
            <ul id="iq-sidebar-toggle" class="iq-menu">
                <li><a href="admin-dashboard.html"><i class="las la-home iq-arrow-left"></i>Bảng Điều Khiển</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/book"><i class="ri-record-circle-line"></i>Sách</a></li>
                <li><a href="${pageContext.request.contextPath}/authen?action=logout"><i class="ri-record-circle-line"></i>Đăng Xuất</a></li>
            </ul>
        </nav>
        <div id="sidebar-bottom" class="p-3 position-relative">
            <div class="iq-card">
                <div class="iq-card-body">
                    <div class="sidebarbottom-content">
                        <div class="image"><img src="${pageContext.request.contextPath}/images/page-img/side-bkg.png" alt=""></div>                           
                        <button type="submit" class="btn w-100 btn-primary mt-4 view-more">NhasachTV</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
