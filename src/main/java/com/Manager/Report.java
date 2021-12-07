package com.Manager;

import com.dao.ReportDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/dashboard"})
public class Report extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String url;
        url = "/dashboard.jsp";
        ReportDao dao = new ReportDao();
        List<Object[]> repC = dao.getStatsColumn();

        List<Object[]> repP = dao.getStatsPie();

        String mes = "hello";
        request.setAttribute("mes", mes);
        request.setAttribute("reportColumn", repC);
        request.setAttribute("reportPie", repP);


//        rep.forEach(c -> {
//
//            System.out.printf("Xuat ngay: %s Tổng tiền: %s %s\n", c[0].toString(), c[1].toString(), c[2].toString());
//        });

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
