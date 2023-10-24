/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bookhop.controller.user;

import com.bookhop.constant.Constant;
import com.bookhop.dal.impl.AccountDAO;
import com.bookhop.dal.impl.OrderDAO;
import com.bookhop.entity.Account;
import com.bookhop.entity.Order;
import java.io.IOException;
import java.util.List;
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
        //up    date lai account vao session
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute(Constant.SESSION_ACCOUNT);
        if (account.getRoleId() == Constant.ROLE_ADMIN) {
            response.sendRedirect("admin/book");
            return;
        }
        String page = request.getParameter("page") == null ? "" : request.getParameter("page");
        String url;
        switch (page) {
            case "profile-edit":
                url = "views/user/profile-edit.jsp";
                break;
            case "purchase":
                setListPurchase(request, account);
                url = "views/user/purchase.jsp";
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
                url = "views/user/profile-edit.jsp";
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
        //lay ve account tu trong session
        HttpSession session = request.getSession();
        Account accountSession = (Account) session.getAttribute(Constant.SESSION_ACCOUNT);
        //get về information
        String username = ((Account) session.getAttribute("account")).getUsername();
        String password = request.getParameter("password");
        String newPassword = request.getParameter("newPassword");

        //kiem tra xem password co = password o trong session
        if (password.equals(accountSession.getPassword())) {
            accountDAO.updatePassword(username, newPassword);
            accountSession.setPassword(password);
            session.setAttribute(Constant.SESSION_ACCOUNT, accountSession);
        } else {
            request.setAttribute("error", "Incorrect password");
        }
    }

    private void setListPurchase(HttpServletRequest request, Account account) {
        OrderDAO orderDAO = new OrderDAO();
        List<Order> listOrder = orderDAO.findsByAccountId(account.getId());
        HttpSession session = request.getSession();
        session.setAttribute("listOrder", listOrder);
    }

}
