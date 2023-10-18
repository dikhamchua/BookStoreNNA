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
    <body>
        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">
            <!-- Sidebar  -->
            <jsp:include page="../common/admin/sideBar.jsp"></jsp:include>

                <!-- TOP Nav Bar -->
            <jsp:include page="../common/admin/navbar.jsp"></jsp:include>

                <!-- TOP Nav Bar END -->
                <!-- Page Content  -->
                <div id="content-page" class="content-page ml-300">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="iq-card">
                                    <div class="iq-card-header d-flex justify-content-between">
                                        <div class="iq-header-title">
                                            <h4 class="card-title">Thêm sách</h4>
                                        </div>
                                    </div>
                                    <div class="iq-card-body">
                                        <form action="${pageContext.request.contextPath}/admin/book?action=add-book"
                                                onsubmit="return validateForm()"
                                                enctype="multipart/form-data"
                                                method="POST">
                                            <div class="form-group">
                                                <label>Tên sách:</label>
                                                <input type="text" class="form-control" id="bookName" name="name">
                                                <span id="bookNameError" style="color: red;"></span>
                                            </div>
                                            <div class="form-group">
                                                <label>Hình ảnh:</label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" accept="image/png, image/jpeg" onchange="displayImage(this)" name="image">
                                                    <label class="custom-file-label">Choose file</label>
                                                </div>
                                                <img id="previewImage" src="#" alt="Preview" style="display: none; max-width: 300px; max-height: 300px;">
                                            </div>

                                            <div class="form-group">
                                                <label>Giá sách:</label>
                                                <input type="text" class="form-control" id="bookPrice" name="price">
                                                <span id="bookPriceError" style="color: red;"></span>
                                            </div>
                                            <div class="form-group">
                                                <label>Số lượng sách:</label>
                                                <input type="text" class="form-control" id="bookQuantity" name="quantity">
                                                <span id="bookQuantityError" style="color: red;"></span>
                                            </div>
                                            <div class="form-group">
                                                <label>Miêu tả:</label>
                                                <textarea class="form-control" rows="4" name="description"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Gửi</button>
                                            <button type="reset" class="btn btn-danger">Trở lại</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Wrapper END -->
            <!-- Footer -->
        <jsp:include page="../common/admin/footer.jsp"></jsp:include>
            <!-- Footer END -->
            <!-- color-customizer -->

            <!-- color-customizer END -->
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

        <script>
            function validateForm() {
                var hasError = false;

                var bookName = document.getElementById("bookName").value;
                var bookPrice = document.getElementById("bookPrice").value;
                var bookQuantity = document.getElementById("bookQuantity").value;

                var bookNameError = document.getElementById("bookNameError");
                var bookPriceError = document.getElementById("bookPriceError");
                var bookQuantityError = document.getElementById("bookQuantityError");

                // Reset lỗi
                bookNameError.textContent = "";
                bookPriceError.textContent = "";
                bookQuantityError.textContent = "";

                // Kiểm tra tên sách
                if (bookName.trim() === "") {
                    bookNameError.textContent = "Tên sách không được để trống!";
                    hasError = true;
                }

                // Kiểm tra giá sách
                if (bookPrice.trim() === "" || isNaN(bookPrice) || Number(bookPrice) < 0) {
                    bookPriceError.textContent = "Giá sách không được để trống và phải là số không âm!";
                    hasError = true;
                }

                // Kiểm tra số lượng sách
                if (bookQuantity.trim() === "" || isNaN(bookQuantity) || Number(bookQuantity) < 0) {
                    bookQuantityError.textContent = "Số lượng sách không được để trống và phải là số không âm!";
                    hasError = true;
                }

                return !hasError;
            }
            
            function displayImage(input) {
                var previewImage = document.getElementById("previewImage");
                var file = input.files[0];

                if (file) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        previewImage.src = e.target.result;
                        previewImage.style.display = "block";
                    }

                    reader.readAsDataURL(file);
                } else {
                    // Hide the preview image if no file is chosen
                    previewImage.style.display = "none";
                }
            }

        </script>
    </body>
</html>
