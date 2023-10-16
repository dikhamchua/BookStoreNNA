package com.bookhop.controller;

import com.bookhop.dal.impl.BookDAO;
import com.bookhop.entity.Book;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class HomeServlet extends HttpServlet {
    BookDAO bookDAO = new BookDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //set enconding UTF-8
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        //tạo session
        HttpSession session = request.getSession();
        //get về listBook
        List<Book> listBook = findBookDoGet(request);
        //set list vào trong session
        session.setAttribute("listBook", listBook);
        //chuyển sang trang homePage.jsp
        request.getRequestDispatcher("views/user/homePage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    /**
     * Hàm này được gọi từ doGet.Hàm này sử dụng để get về các quyển sách tùy theo
     * nhu cầu: toàn bộ quyển sách, tìm kiếm sách
     * @param request
     * @return danh sách các quyển sách
     */
    private List<Book> findBookDoGet(HttpServletRequest request) {
        List<Book> listBook;
        //get về action:
        String action = request.getParameter("action") == null
                ? "defaultFindAll"
                : request.getParameter("action");
        //dựa theo giá trị action
        switch (action) {
            //tìm kiếm các quyển sách bằng từ khóa
            case "search":
                //get về keyword muốn tìm kiếm
                String keyword = request.getParameter("keyword");
                //tìm về các quyển sách dựa theo thuộc tính name và keyword muốn tìm kiếm
                listBook = bookDAO.findContainsByProperty("name", keyword);
                break;
            //tìm về toàn bộ các quyển sách
            default:
                listBook = bookDAO.findAll();
                break;
        }
        return listBook;
    }

}
