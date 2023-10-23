<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>NHASACHTV - Pay Back Time</title>
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
    <body>

        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- TOP Nav Bar -->
            <jsp:include page="../common/user/navbar.jsp"></jsp:include>
                <!-- TOP Nav Bar END -->
                <!-- Page Content  -->
                <div id="content-page" class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                                    <div class="iq-card-header d-flex justify-content-between align-items-center">
                                        <h4 class="card-title mb-0">Thông tin</h4>
                                    </div>
                                    <div class="iq-card-body pb-0">
                                        <div class="description-contens align-items-top row">
                                            <div class="col-md-6">
                                                <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                                    <div class="iq-card-body p-0">
                                                        <div class="row align-items-center">
                                                            <div class="col-12">
                                                                <ul id="description-slider" class="list-inline p-0 m-0  d-flex align-items-center">
                                                                    <!--Image-->
                                                                    <li>
                                                                        <a href="javascript:void(0);">
                                                                            <img src="${book.image}" class="img-fluid w-80 rounded" alt="Lỗi">
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                                <form action="check-out?action=add-product" method="POST">
                                                    <div class="iq-card-body p-0">
                                                        <div style="display:none">
                                                            <input name="id" value="${book.id}">
                                                        </div>
                                                        <!--Name-->
                                                        <h3 class="mb-3">${book.name}</h3>
                                                        <!--Price-->
                                                        <div class="price d-flex align-items-center font-weight-500 mb-2">
                                                            <span class="font-size-24 text-dark">${book.price} ₫</span>
                                                        </div>
                                                        <div class="mb-3 d-block">
                                                            <span class="font-size-20 text-warning">
                                                                <i class="fa fa-star mr-1"></i>
                                                                <i class="fa fa-star mr-1"></i>
                                                                <i class="fa fa-star mr-1"></i>
                                                                <i class="fa fa-star mr-1"></i>
                                                                <i class="fa fa-star"></i>
                                                            </span>
                                                        </div>
                                                        <!--Quantity-->
                                                        <div class="input-group mb-3">
                                                            <!-- Minus button -->
                                                            <div class="input-group-prepend">
                                                                <button class="btn btn-outline-dark" type="button" onclick="decreaseQuantity()">
                                                                    <i class="fa fa-minus" aria-hidden="true"></i>
                                                                </button>
                                                            </div>
                                                            <!-- Input button -->
                                                            <input class="form-control text-center" id="inputQuantity"
                                                                   type="text" style="max-width: 3rem;" value="1" data-original-value="1" name="quantity">
                                                            <!-- Plus button -->
                                                            <div class="input-group-append">
                                                                <button class="btn btn-outline-dark" type="button" onclick="increaseQuantity()">
                                                                    <i class="fa fa-plus" aria-hidden="true"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <!--Description-->
                                                        <div class="mb-3 d-block">
                                                            <span class="text-dark mb-4 pb-4 iq-border-bottom d-block">
                                                                ${book.description}
                                                            </span>
                                                        </div>
                                                        <div class="mb-4 d-flex align-items-center">                                       
                                                            <a onclick="this.closest('form').submit()" class="btn btn-primary view-more mr-2 text-white">
                                                                Thêm vào giỏ hàng
                                                            </a>
                                                        </div>
                                                    </div>
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
        <jsp:include page="../common/user/footer.jsp"></jsp:include>
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

        <script>
            function decreaseQuantity() {
                const inputQuantity = document.getElementById('inputQuantity');
                let quantity = parseInt(inputQuantity.value);
                if (quantity > 1) {
                    quantity--;
                    inputQuantity.value = quantity;
                }
            }
            function increaseQuantity() {
                const inputQuantity = document.getElementById('inputQuantity');
                let quantity = parseInt(inputQuantity.value);
                quantity++;
                inputQuantity.value = quantity;
            }
            const inputQuantity = document.getElementById('inputQuantity');
            inputQuantity.addEventListener('input', function (e) {
                this.value = this.value.replace(/[^0-9]/g, '');
            });
            inputQuantity.addEventListener('mouseenter', function (e) {
                if (this.value === '') {
                    this.value = this.dataset.originalValue;
                }
            });
            inputQuantity.addEventListener('mouseleave', function (e) {
                this.dataset.originalValue = this.value;
                if (this.value === '') {
                    this.value = '1';
                }
            });
        </script>
    </body>
</html>
