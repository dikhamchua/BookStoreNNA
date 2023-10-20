<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>NHASACHTV - Nhà sách trực tuyến</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="images/favicon.ico" />
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
        <!-- Style CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
    </head>
    <body class="sidebar-main-active right-column-fixed">
        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- Sidebar  -->
            <jsp:include page="../common/user/dashboard/sideBar.jsp"></jsp:include>
                <!-- TOP Nav Bar -->
            <jsp:include page="../common/user/dashboard/navbar.jsp"></jsp:include>
                <!-- TOP Nav Bar END -->
                <!-- Page Content  -->
                <div id="content-page" class="content-page ml-300">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="iq-card">
                                    <div class="iq-card-body p-0">
                                        <div class="iq-edit-list">
                                            <ul class="iq-edit-profile d-flex nav nav-pills">
                                                <li class="col-md-6 p-0">
                                                    <a class="nav-link active" data-toggle="pill" href="#personal-information">
                                                        Thông tin cá nhân
                                                    </a>
                                                </li>
                                                <li class="col-md-6 p-0">
                                                    <a class="nav-link" data-toggle="pill" href="#chang-pwd">
                                                        Đổi mật khẩu
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="iq-edit-list-data">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active show" id="personal-information" role="tabpanel">
                                            <div class="iq-card">
                                                <div class="iq-card-header d-flex justify-content-between">
                                                    <div class="iq-header-title">
                                                        <h4 class="card-title">Thông tin cá nhân</h4>
                                                    </div>
                                                </div>
                                                <div class="iq-card-body">
                                                    <form action="dashboard?page=profile-edit&action=profile-edit" method="POST">
                                                        <div class="form-group row align-items-center">
                                                            <div class="col-md-12">
                                                                <div class="profile-img-edit">
                                                                    <img class="profile-pic" src="images/user/1.jpg" alt="profile-pic">
                                                                    <div class="p-image">
                                                                        <i class="ri-pencil-line upload-button"></i>
                                                                        <input class="file-upload" type="file" accept="image/*"/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=" row align-items-center">
                                                            <div class="form-group col-sm-6">
                                                                <label for="username">Tên tài khoản:</label>
                                                                <input type="text" class="form-control" id="username" value="${sessionScope.account.username}" name="username">
                                                        </div>
                                                        <div class="form-group col-sm-6">
                                                            <label for="email">Email:</label>
                                                            <input type="email" class="form-control" id="email" value="${sessionScope.account.email}" name="email">
                                                        </div>
                                                        <div class="form-group col-sm-12">
                                                            <label>Địa chỉ:</label>
                                                            <textarea class="form-control" name="address" rows="5" style="line-height: 22px;">${sessionScope.account.address}</textarea>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary mr-2">Gửi</button>
                                                    <button type="reset" class="btn iq-bg-danger">Hủy bỏ</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="chang-pwd" role="tabpanel">
                                        <div class="iq-card">
                                            <div class="iq-card-header d-flex justify-content-between">
                                                <div class="iq-header-title">
                                                    <h4 class="card-title">Đổi mật khẩu</h4>
                                                </div>
                                            </div>
                                            <div class="iq-card-body">
                                                <form action="dashboard?page=profile-edit&action=change-password"
                                                      method="POST"
                                                      onsubmit="return validateForm(this);">
                                                    <!--Current password-->
                                                    <div class="form-group">
                                                        <label for="cpass">Mật khẩu hiện tại:</label>
                                                        <a href="#" class="float-right">Quên mật khẩu</a>
                                                        <input type="Password" class="form-control" id="cpass" value="" name="password">
                                                    </div>
                                                    <!--New Password-->
                                                    <div class="form-group">
                                                        <label for="newPassword">Mật khẩu mới:</label>
                                                        <input type="Password" class="form-control" id="newPassword" value="" name="newPassword">
                                                    </div>
                                                    <!--Re-enter password-->
                                                    <div class="form-group">
                                                        <label for="newPassword2">Xác nhận lại mật khẩu:</label>
                                                        <input type="Password" class="form-control" id="newPassword2" value="">
                                                    </div>
                                                    <!--Error-->
                                                    <div class="form-group row">
                                                        <div class="col-6">
                                                            <div id="errorDiv" style="color: red;">${error}</div> <!-- Thông báo lỗi ở đây -->
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary mr-2">Gửi</button>
                                                    <button type="reset" class="btn iq-bg-danger">Hủy bỏ</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper END -->
        <!-- Footer -->
        <jsp:include page="../common/user/dashboard/footer.jsp"></jsp:include>
            <!-- Footer END -->
            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            
        <script>
            function validateForm(form) {
                console.log(form);
                const newPassword = form.newPassword.value;
                const newPassword2 = form.newPassword2.value;
                console.log(newPassword);
                console.log(newPassword2);
                var errorDiv = document.getElementById('errorDiv');
                if (!errorDiv) {
                    errorDiv = document.createElement('div');
                    errorDiv.id = 'errorDiv';
                    errorDiv.style.color = 'red';
                    form.insertBefore(errorDiv, form.querySelector('button[name="submit"]'));
                }

                if (newPassword !== newPassword2) {
                    errorDiv.textContent = 'Mật khẩu mới và mật khẩu nhập lại không trùng khớp!';
                    console.log("khong trung nhau")
                    return false; // This prevents the form from submitting
                } else {
                    errorDiv.textContent = ''; // Clears the error message
                    console.log(" trung nhau")

                    return true; // Allows the form to submit
                }
            }

        </script>        
            
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
        <!-- Style Customizer -->
        <script src="${pageContext.request.contextPath}/js/style-customizer.js"></script>
        <!-- Chart Custom JavaScript -->
        <script src="${pageContext.request.contextPath}/js/chart-custom.js"></script>
        <!-- Custom JavaScript -->
        <script src="${pageContext.request.contextPath}/js/custom.js"></script>
    </body>
</html>
