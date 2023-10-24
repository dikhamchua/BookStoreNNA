
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="iq-sidebar">
    <div class="iq-sidebar-logo d-flex justify-content-between">
        <a href="${pageContext.request.contextPath}/home" class="header-logo">
            <img src="images/logo.png" class="img-fluid rounded-normal" alt="">
            <div class="logo-title">
                <span class="text-primary text-uppercase">NHASACHTV</span>
            </div>
        </a>
    </div>
    <div id="sidebar-scrollbar">
        <nav class="iq-sidebar-menu">
            <ul id="iq-sidebar-toggle" class="iq-menu">
<!--                <li class="active active-menu">
                    <a href="#dashboard" class="iq-waves-effect" data-toggle="collapse" aria-expanded="true"><span class="ripple rippleEffect"></span><i class="las la-home iq-arrow-left"></i><span>Trang Chủ</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                    <ul id="dashboard" class="iq-submenu collapse show" data-parent="#iq-sidebar-toggle">
                    </ul>
                </li>-->
                <li>
                </li>
                <li><a href="${pageContext.request.contextPath}/dashboard?page=profile-edit"><i class="ri-book-line"></i>Profile</a></li>
                <li><a href="${pageContext.request.contextPath}/dashboard?page=purchase"><i class="ri-book-line"></i>Purchase</a></li>
                <li><a href="${pageContext.request.contextPath}/authen?action=logout"><i class="ri-book-line"></i>Logout</a></li>

            </ul>
        </nav>
    </div>
</div>