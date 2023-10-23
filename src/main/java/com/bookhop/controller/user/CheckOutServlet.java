/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package com.bookhop.controller.user;

import com.bookhop.constant.Constant;
import com.bookhop.dal.impl.BookDAO;
import com.bookhop.dal.impl.OrderDAO;
import com.bookhop.dal.impl.OrderDetailsDAO;
import com.bookhop.entity.Account;
import com.bookhop.entity.Book;
import com.bookhop.entity.Order;
import com.bookhop.entity.OrderDetails;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckOutServlet extends HttpServlet {
    BookDAO bookDAO = new BookDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("views/user/check-out.jsp").forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getParameter("action") == null
                ? ""
                : request.getParameter("action");
        switch (action) {
            case "add-product":
                addProduct(request, response);
                response.sendRedirect("check-out");
                break;
            case "change-quantity":
                changeQuantity(request, response);
                response.sendRedirect("check-out");
                break;    
            case "delete":
                deleteItem(request, response);
                response.sendRedirect("check-out");
                break;
            case "purchase":
                purchase(request, response);
                response.sendRedirect("home");
                break;
            default:
                throw new AssertionError();
        }
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) {
        //get ve session
        HttpSession session = request.getSession();
        //get ve book id
        int id = Integer.parseInt(request.getParameter("id"));
        //get ve quantity
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        //get ve book
        List<Book> list = (List<Book>) session.getAttribute("listBook");
        Book book = findBookById(list, id);
        //tao ra doi tuong OrderDetails
        OrderDetails orderDetails = OrderDetails.builder()
                .bookId(id)
                .quantity(quantity)
                .build();
        //get ve cart tu session
        Order cart = (Order) session.getAttribute("cart");
        //neu cart == null => cart chua tung ton tai => tao moi
        if (cart == null) {
            cart = new Order();
        }
        //them orderDetails vao trong cart
        addOrderDetails(orderDetails, cart);
        //luu tru cart len session
        session.setAttribute("cart", cart);
    }

    private void addOrderDetails(OrderDetails orderDetails, Order cart) {
        boolean isAdd = false;
        for (OrderDetails od : cart.getListOrderDetails()) {
            if (od.getBookId() == orderDetails.getBookId()) {
                od.setQuantity(od.getQuantity() + orderDetails.getQuantity());
                isAdd = true;
                break;
            }
        }
        //kiem tra xem da add chua, neu ma chua add => orderDetals chua tung ton tai trong Order
        if (isAdd == false) {
            cart.getListOrderDetails().add(orderDetails);
        }
    }

    private Book findBookById(List<Book> list, int id) {
        for (Book book : list) {
            if (book.getId() == id) {
                return book;
            }
        }
        return null;
    }

    private void changeQuantity(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        //get ve cart tu session
        HttpSession session = request.getSession();
        Order cart = (Order) session.getAttribute("cart");

        //lap qua danh sach trong cart, tim ra order details co book id = id parameter
        // neu tim ra thi set quantity moi cho order details
        for (OrderDetails od : cart.getListOrderDetails()) {
            if (od.getBookId() == id) {
                od.setQuantity(quantity);
            }
        }
        //luu lai vao session
        session.setAttribute("cart", cart);
    }

    private void deleteItem(HttpServletRequest request, HttpServletResponse response) {
        //lay ve id
        int id = Integer.parseInt(request.getParameter("id"));
        //lay ve cart 
        HttpSession session = request.getSession();
        Order cart = (Order) session.getAttribute("cart");
        //tim ra order detail co bookId dua tren id parameter
        OrderDetails od = null;
        for (OrderDetails orderDetails : cart.getListOrderDetails()) {
            if (orderDetails.getBookId() == id) {
                od = orderDetails;
            }
        }
        //xoa no ra khoi cart
        cart.getListOrderDetails().remove(od);
        //set lai cart vao session
        session.setAttribute("cart", cart);
    }

    private void purchase(HttpServletRequest request, HttpServletResponse response) {
        //lay ve session, orderDAO, OrderDETAILDAO
        HttpSession session = request.getSession();
        OrderDAO orderDAO = new OrderDAO();
        OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
        
        //get ve note
        String note = request.getParameter("note");
        //get ve account tren session
        Account account = (Account) session.getAttribute(Constant.SESSION_ACCOUNT);
        //get cart tren session
        Order cart = (Order) session.getAttribute("cart");
        //get ve list Book tren session
        List<Book> list = (List<Book>) session.getAttribute("listBook");
        //calculate amount cua cart
        int amount = caluclateAmount(cart, list);
        //tao doi tuong order
        cart.setAccountId(account.getId());
        cart.setAmount(amount);
        //luu doi tuong order vao trong DB => lay ve id cua order sau khi luu thanh cong
        int orderId = orderDAO.insert(cart);
        //luu tung cai order detail trong cart vao trong DB
        for (OrderDetails orderDetails : cart.getListOrderDetails()) {
            orderDetails.setOrderId(orderId);
            orderDetailsDAO.insert(orderDetails);
        }
        
        session.removeAttribute("cart");
    }

    private int caluclateAmount(Order cart, List<Book> list) {
        int amount = 0;
        for (OrderDetails od : cart.getListOrderDetails()) {
            amount += (od.getQuantity() * findPriceById(list, od.getBookId()));
        }
        return amount;
    }
    
    private int findPriceById(List<Book> list, int bookId) {
        for (Book book : list) {
            if (book.getId() == bookId) {
                return book.getPrice();
            }
        }
        return 0;
    }
}
