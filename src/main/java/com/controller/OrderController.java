package com.controller;

import com.dao.OrderDao;
import com.entities.OrderEntity;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "OrderControl", urlPatterns = {"/order","/Order"})
public class OrderController extends HttpServlet  {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws SecurityException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String iAction = request.getParameter("action");

        if (iAction != null && !iAction.equals("")) {
            if (iAction.equals("SaveOrder")) {
                saveOrder(request);
            } else if (iAction.equals("Update")) {

            } else if (iAction.equals("Delete")) {

            }
        }
        response.sendRedirect("cart.jsp");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws SecurityException, IOException {
        doPost(request, response);
    }

    protected void saveOrder(HttpServletRequest request) {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        System.out.println("email: "+address);

        CartBean cartBean = null;

        Object objCartBean = session.getAttribute("cart");

        if (objCartBean != null) {
            cartBean = (CartBean) objCartBean;
        } else {
            cartBean = new CartBean();
            session.setAttribute("cart", cartBean);
        }

        OrderEntity orderEntity = new OrderEntity();
        orderEntity.setEmail(email);
        orderEntity.setPhone(phone);
        orderEntity.setAddress(address);
        orderEntity.setTotalMoney(cartBean.getTotal());
        orderEntity.setTotalQuantity(cartBean.getQuantity());
        orderEntity.setState("Created");

        //lay ngay gio hien tai
        long millis=System.currentTimeMillis();
        java.sql.Date nowDate=new java.sql.Date(millis);

        orderEntity.setPurchaseDate(nowDate);

        OrderDao orderDao = new OrderDao();

        ArrayList<CartItemBean> cartItemBeans = new ArrayList<>();
        for(Object object : cartBean.getList()){
            cartItemBeans.add((CartItemBean)object);
        }
        System.out.println(orderEntity);
        orderDao.insertOrderAndDetail(orderEntity,cartItemBeans);


    }
}
