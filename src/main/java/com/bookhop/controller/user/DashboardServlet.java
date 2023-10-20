/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bookhop.controller.user;

import com.bookhop.constant.Constant;
import com.bookhop.dal.impl.AccountDAO;
import com.bookhop.entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PHAM KHAC VINH
 */
public class DashboardServlet extends HttpServlet {
    AccountDAO accountDAO = new AccountDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //set enconding UTF-8
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String page = request.getParameter("page") == null ? "" : request.getParameter("page");
        String url;
        switch (page) {
            case "profile-edit":
                url = "views/user/profile-edit.jsp";
                break;
            case "purchase":
                url = "";
                break;
            default:
                url = "views/user/profile-edit.jsp";
                break;
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //set enconding UTF-8
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String url = "";
        String action = request.getParameter("action") == null ? "" : request.getParameter("action");
        switch (action) {
            case "profile-edit":
                updateProfileDoPost(request);
                url = "views/user/profile-edit.jsp";
                break;
            case "change-password":
                changePassword(request);
                url = "";
                break;
            default:
                url = "dashboard";
                break;
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void updateProfileDoPost(HttpServletRequest request) {
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        //update lai account vao session
        HttpSession session = request.getSession();
        Account accountNew = (Account) session.getAttribute(Constant.SESSION_ACCOUNT);
        
        //tạo đối tượng account
        Account account = Account.builder()
                .username(username)
                .address(address)
                .email(email)
                .build();
        //update thong tin vào trong database
        accountDAO.updateProfile(account);
        //set mới lại thông tin
        accountNew.setEmail(email);
        accountNew.setAddress(address);
        //set account mới vào trong session
        session.setAttribute(Constant.SESSION_ACCOUNT, accountNew);
    }

    private void changePassword(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
