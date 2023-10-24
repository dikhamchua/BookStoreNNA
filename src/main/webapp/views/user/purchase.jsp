<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dataTables.bootstrap4.min.css">
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
                            <div class="col-sm-12">
                                <div class="iq-card">
                                    <div class="iq-card-header d-flex justify-content-between">
                                        <div class="iq-header-title">
                                            <h4 class="card-title">Danh sách sách</h4>
                                        </div>
                                        <div class="iq-card-header-toolbar d-flex align-items-center">
                                            <a href="${pageContext.request.contextPath}/admin/book?action=add-book" class="btn btn-primary">Thêm sách</a>
                                    </div>
                                </div>
                                <div class="iq-card-body">
                                    <div class="table-responsive">
                                        <table class="data-tables table table-striped table-bordered" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th style="width: 30%;">STT</th>
                                                    <!--<th style="width: 12%;">Hình ảnh</th>-->
                                                    <!--<th style="width: 15%;">Tên sách</th>-->
                                                    <!--<th style="width: 8%;">Số lượng sách</th>-->
                                                    <!--<th style="width: 33%;">Mô tả sách</th>-->
                                                    <th style="width: 30%;">Số tiền</th>
                                                    <th style="width: 30%;">Thời gian mua</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${listOrder}" var="order" varStatus="status">
                                                <tr>
                                                    <!--No-->
                                                    <td>${status.index + 1}</td>
                                                    <!--Amount-->
                                                    <td name="price">${order.amount}VNĐ</td>
                                                    <!--Thời gian mua-->
                                                    <td><fmt:formatDate value="${order.createAt}" pattern="dd/MM/yyyy HH:mm:ss" /></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
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


            <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/dataTables.bootstrap4.min.js"></script>
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
