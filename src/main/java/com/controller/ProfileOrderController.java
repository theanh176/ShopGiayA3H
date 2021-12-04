package com.controller;

import com.dao.OrderDao;
import com.dao.ProductDao;
import com.entities.OrderEntity;
import com.entities.ProductEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProfileOrder", value = "/profile")
public class ProfileOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String url;
        url = "/profileOrder.jsp";
        Integer oid = Integer.parseInt(request.getParameter("oid"));
        OrderDao orderDao = new OrderDao();
        OrderEntity order= orderDao.getOrderById(String.valueOf(oid));
        request.setAttribute("order", order);
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
