package com.controller;

import com.dao.OrderDao;
import com.entities.OrderEntity;
import com.mvc.utility.SendEmail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "OrderControl", urlPatterns = {"/order","/Order"})
public class OrderController extends HttpServlet  {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            // Dữ liệu truyền vào trong html mail
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String total = request.getParameter("totalPrice");
            String link = request.getParameter("rootlink");
            //create instance object of the SendEmail Class
            System.out.println("link"+link);
            SendEmail sm = new SendEmail();
            //get the 6-digit code
            String code = sm.getRandom();

            //craete new user using all information
            User user = new User(name,email,code);

            //call the send email method
            boolean test = sm.sendEmail(user, email, name, phone, address, total, link);

            //check if the email send successfully
            if(test){
                HttpSession session  = request.getSession();
                session.setAttribute("authcode", user);
//                response.sendRedirect("verify.jsp");
            }else{
                out.println("Failed to send verification email");
            }
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws SecurityException, IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String iAction = request.getParameter("action");

        if (iAction != null && !iAction.equals("")) {
            if (iAction.equals("SaveOrder")) {
                saveOrder(request);
                processRequest(request, response);
            } else if (iAction.equals("Update")) {

            } else if (iAction.equals("Delete")) {

            }
        }
        response.sendRedirect("cart.jsp");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws SecurityException, IOException, ServletException {
        doPost(request, response);
    }

    protected void saveOrder(HttpServletRequest request) {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        System.out.println("email: "+email);

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
        orderEntity.setTotalMoney(cartBean.getTong());
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
