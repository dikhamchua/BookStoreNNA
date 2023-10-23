<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Booksto - Responsive Bootstrap 4 Admin Dashboard Template</title>
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
        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- TOP Nav Bar -->
            <jsp:include page="../common/user/navbar.jsp"></jsp:include>
            <!-- TOP Nav Bar END -->
            <!-- Page Content  -->
            <div id="content-page" class="content-page">
                <div class="container-fluid checkout-content">
                    <div class="row">
                        <div id="cart" class="card-block show p-0 col-12">
                            <div class="row align-item-center">
                                <div class="col-lg-8">
                                    <div class="iq-card">
                                        <div class="iq-card-header d-flex justify-content-between iq-border-bottom mb-0">
                                            <div class="iq-header-title">
                                                <h4 class="card-title">Giỏ hàng</h4>
                                            </div>
                                        </div>
                                        <div class="iq-card-body">
                                            <ul class="list-inline p-0 m-0">
                                                <c:forEach items="${sessionScope.cart.listOrderDetails}" var="orderDetails" varStatus="status">
                                                    <c:forEach items="${listBook}" var="bookInList">
                                                        <c:if test="${bookInList.id == orderDetails.bookId}">
                                                            <c:set var="currentBook" value="${bookInList}"></c:set>
                                                        </c:if>
                                                    </c:forEach>
                                                    <li class="checkout-product">
                                                        <div class="row align-items-center product-item">
                                                            <!--Image-->
                                                            <div class="col-sm-2">
                                                                <span class="checkout-product-img">
                                                                    <a href="javascript:void();"><img class="img-fluid rounded" src="${currentBook.image}" alt="Loi"></a>
                                                                </span>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="checkout-product-details">
                                                                    <!--Name-->
                                                                    <h5>${currentBook.name}</h5>
                                                                    <p class="text-success">Còn hàng</p>
                                                                    <!--Price-->
                                                                    <div class="price">
                                                                        <h5 class="product-single-price">${currentBook.price} ₫</h5>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="row">
                                                                    <div class="col-sm-10">
                                                                        <form action="check-out?action=change-quantity" method ="POST">
                                                                            <div class="row align-items-center mt-2">
                                                                                <input type="hidden"
                                                                                       name="id" 
                                                                                       value="${currentBook.id}" />
                                                                                <div class="col-sm-7 col-md-6">
                                                                                    <button type="button" class="fa fa-minus qty-btn"  onclick="adjustQuantity(this, -1)"></button>
                                                                                    <input type="text" class="quantity" value="${orderDetails.quantity}" name="quantity">
                                                                                    <button type="button" class="fa fa-plus qty-btn" onclick="adjustQuantity(this, 1)"></button>
                                                                                </div>
                                                                                <!--Amount-->
                                                                                <div class="col-sm-5 col-md-6">
                                                                                    <span class="product-total-price">${currentBook.price * orderDetails.quantity} ₫</span>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                    <!--Delete Action-->
                                                                    <form action="check-out?action=delete&id=${currentBook.id}" method="POST">
                                                                        <div class="col-sm-2">
                                                                            <a onclick="this.closest('form').submit()" class="text-dark font-size-20">
                                                                                <i class="ri-delete-bin-7-fill"></i>
                                                                            </a>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            <c:if test="${cart.listOrderDetails.isEmpty() == false}">
                                <div class="col-lg-4">
                                    <div class="iq-card">
                                        <div class="iq-card-body">
                                            <p><b>Chi tiết</b></p>
                                            <div class="d-flex justify-content-between mb-1">
                                                <span>Tổng</span>
                                                <span class="total-price-element">${currentBook.price * orderDetails.quantity}đ</span>
                                            </div>
                                            <div class="d-flex justify-content-between">
                                                <span>Phí vận chuyển</span>
                                                <span class="text-success">Miễn phí</span>
                                            </div>
                                            <hr>
                                            <div class="d-flex justify-content-between">
                                                <span class="text-dark"><strong>Tổng</strong></span>
                                                <span class="text-dark total-price-element"><strong>300đ</strong></span>
                                            </div>
                                            <!--Purchase-->
                                            <form class="form-customer" action="check-out?action=purchase" method="POST">
                                                <a id="place-order"
                                                   onclick="this.closest('form').submit()"
                                                   class="btn btn-primary d-block mt-3 next">
                                                    Đặt hàng
                                                </a>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="iq-card ">
                                        <div class="card-body iq-card-body p-0 iq-checkout-policy">
                                            <ul class="p-0 m-0">
                                                <li class="d-flex align-items-center">
                                                    <div class="iq-checkout-icon">
                                                        <i class="ri-checkbox-line"></i>
                                                    </div>
                                                    <h6>Chính sách bảo mật (Thanh toán an toàn và bảo mật.)</h6>
                                                </li>
                                                <li class="d-flex align-items-center">
                                                    <div class="iq-checkout-icon">
                                                        <i class="ri-truck-line"></i>
                                                    </div>
                                                    <h6>Chính sách giao hàng (Giao hàng tận nhà.)</h6>
                                                </li>
                                                <li class="d-flex align-items-center">
                                                    <div class="iq-checkout-icon">
                                                        <i class="ri-arrow-go-back-line"></i>
                                                    </div>
                                                    <h6>Chính sách hoàn trả</h6>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
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
            window.addEventListener('DOMContentLoaded', function () {
                updateTotalPrice();
            });
            function adjustQuantity(button, adjustment) {
                let productItem = button.closest('.product-item');
                let quantityInput = productItem.querySelector('.quantity');

                let currentQuantity = parseInt(quantityInput.value, 10) || 0;

                // Điều chỉnh số lượng
                currentQuantity += adjustment;

                // Đảm bảo số lượng luôn lớn hơn 0
                currentQuantity = Math.max(currentQuantity, 0);
                quantityInput.value = currentQuantity;
               
                //lấy ra form
                let form = button.closest("form");
                form.submit();
                //submit form
            }
            
            function updateTotalPrice() {
                // Lấy tất cả các phần tử có giá của từng sản phẩm
                let individualPrices = document.querySelectorAll('.product-total-price');

                // Khởi tạo tổng giá tiền
                let total = 0;

                // Duyệt qua mỗi giá và cộng dồn
                individualPrices.forEach(priceElement => {
                    let price = parseFloat(priceElement.textContent.replace('₫', '').replace(/\./g, '').trim());
                    total += price;
                });

                // Cập nhật tổng giá tiền lên giao diện
                let totalElements = document.querySelectorAll('.total-price-element');
                totalElements.forEach(totalElement => {
                    totalElement.textContent = total.toLocaleString('vi-VN', {
                        style: 'currency',
                        currency: 'VND'
                    });
                });
            }


        </script>
    </body>
</html>
