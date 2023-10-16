<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="iq-sidebar">
    <div class="iq-sidebar-logo d-flex justify-content-between">
        <a href="index.html" class="header-logo">
            <img src="${pageContext.request.contextPath}/images/logo.png" class="img-fluid rounded-normal" alt="">
            <div class="logo-title">
                <span class="text-primary text-uppercase">Hau Shop</span>
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