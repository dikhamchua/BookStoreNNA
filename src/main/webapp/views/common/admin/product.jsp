<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                        <th style="width: 3%;">STT</th>
                                        <th style="width: 12%;">Hình ảnh</th>
                                        <th style="width: 15%;">Tên sách</th>
                                        <th style="width: 15%;">Tác giả sách</th>
                                        <th style="width: 33%;">Mô tả sách</th>
                                        <th style="width: 7%;">Giá</th>
                                        <th style="width: 22%;">Hoạt động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listBook}" var="book" varStatus="status">
                                        <tr>
                                            <!--No-->
                                            <td>${status.index + 1}</td>
                                            <!--Image-->
                                            <td><img class="img-fluid rounded" src="${pageContext.request.contextPath}/images/browse-books/01.jpg" alt=""></td>
                                            <!--Name-->
                                            <td>${book.name}</td>
                                            <!--Author-->
                                            <td>Nguyễn Nhật Ánh</td>
                                            <!--Description-->
                                            <td>
                                                <p class="mb-0">
                                                    ${book.description}
                                                </p>
                                            </td>
                                            <!--Price-->
                                            <td>${book.price}VNĐ</td>
                                            <td>
                                                <div class="flex align-items-center list-user-action">
                                                    <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="admin-add-book.html"><i class="ri-pencil-line"></i></a>
                                                    <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Xoá" href="#"><i class="ri-delete-bin-line"></i></a>
                                                </div>
                                            </td>
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
