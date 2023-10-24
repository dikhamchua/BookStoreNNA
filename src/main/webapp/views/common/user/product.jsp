<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="pageSize" value="8" />
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
                            <c:forEach items="${listBook}"
                                       var="book"
                                       begin="${(pageControl.page - 1) * pageSize}"
                                       end="${pageControl.page * pageSize - 1}">
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                        <div class="iq-card-body p-0">
                                            <div class="d-flex align-items-center">
                                                <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                    <!--Image-->
                                                    <a href="javascript:void();"><img class="img-fluid rounded w-100" src="${book.image}" alt=""></a>
                                                    <div class="view-book">
                                                        <a href="${pageContext.request.contextPath}/product-details?id=${book.id}" class="btn btn-sm btn-white">Mua Ngay</a>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="mb-2">
                                                        <!--Name-->
                                                        <h6 class="mb-1">${book.name}</h6>
                                                        <!--Author-->
                                                        <p class="font-size-13 line-height mb-1">Nguyễn Ngọc Ánh</p>
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
                                                    <!--Price-->
                                                    <div class="price d-flex align-items-center">
                                                        <h6><b>${book.price} đ</b></h6>
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
                            </c:forEach>
                        </div>
                    </div>
                    <div class="pagination-container">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item ${pageControl.page <= 1 ? 'disabled' : ''}">
                                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                                </li>
                                <c:forEach var="pageNumber" begin="1" end="${pageControl.totalPage}">
                                    <li class="page-item ${pageNumber == pageControl.page ? 'active' : ''}">
                                        <a class="page-link" href="?page=${pageNumber}">${pageNumber}</a>
                                    </li>
                                </c:forEach>
                                <li class="page-item ${pageControl.page >= pageControl.totalPage ? 'disabled' : ''}" >
                                    <a class="page-link" href="?page=${pageControl.page + 1}">Next</a>
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
