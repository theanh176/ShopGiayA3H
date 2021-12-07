package com.Manager;

import com.dao.CategoryDao;
import com.entities.CategoryEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/createCategory"})
public class CreateCategory extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        CategoryEntity category = new CategoryEntity();

        category.setCname(request.getParameter("nameCate"));

        CategoryDao categoryDao = new CategoryDao();
        categoryDao.insertCategory(category);
        response.sendRedirect("listProduct");
    }
}
