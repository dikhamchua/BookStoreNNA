/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bookhop.controller.admin;

import com.bookhop.dal.impl.BookDAO;
import com.bookhop.entity.Book;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author ADMIN
 */
@MultipartConfig
public class BookAdminServlet extends HttpServlet {

    BookDAO bookDAO = new BookDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Book> list;
        String url;
        //get action
        String action = request.getParameter("action") == null
                ? ""
                : request.getParameter("action");;
        //dựa trên action chuyển trang
        switch (action) {
            case "add-book":
                url = "../views/admin/add-Book.jsp";
                break;
            default:
                list = bookDAO.findAll();
                url = "../views/admin/admin-books.jsp";
                break;
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") == null
                ? ""
                : request.getParameter("action");
        switch (action) {
            case "add-book":
                addBook(request);
                break;

        }
        request.getRequestDispatcher("../views/admin/admin-books.jsp").forward(request, response);
    }

    private void addBook(HttpServletRequest request) {
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String description = request.getParameter("description");
        String imagePath = null;
        try {
            Part part = request.getPart("image");

            //đường dẫn lưu ảnh
            String path = request.getServletContext().getRealPath("/imagesProduct");
            File dir = new File(path);
            //ko có đường dẫn => tự tạo ra
            if (!dir.exists()) {
                dir.mkdirs();
            }

            File image = new File(dir, part.getSubmittedFileName());
            part.write(image.getAbsolutePath());
            imagePath = "/BookShop/imagesProduct/" + image.getName();
        } catch (IOException | ServletException e) {
            System.out.println(e.getMessage());
        }
        Book book = Book.builder()
                .name(name)
                .price(price)
                .quantity(quantity)
                .description(description)
                .image(imagePath)
                .build();
        //insert book vào DB
        bookDAO.insert(book);
    }

}
