package com.bookhop.controller;

import com.bookhop.dal.impl.BookDAO;
import com.bookhop.entity.Book;
import java.io.IOException;
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
        HttpSession session = request.getSession();
        //get về toàn bộ book trong database
        List<Book> listBook = bookDAO.findAll();
        //set list vào trong session
        session.setAttribute("listBook", listBook);
        //chuyển sang trang homePage.jsp
        request.getRequestDispatcher("views/user/homePage.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
