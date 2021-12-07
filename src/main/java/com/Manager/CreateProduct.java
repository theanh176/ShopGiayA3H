package com.Manager;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.entities.CategoryEntity;
import com.entities.ProductEntity;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/create"})
public class CreateProduct extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        CategoryEntity category = (new CategoryDao()).getCategoryAdmin(
                Integer.parseInt(request.getParameter("cid")));
        ProductEntity product = new ProductEntity();
        product.setName(request.getParameter("name"));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setImage(request.getParameter("image"));
        product.setTitle(request.getParameter("title"));
        product.setDescription(request.getParameter("description"));
        product.setCateId(category);

        ProductDao dao = new ProductDao();
        dao.insertProduct(product);
        response.sendRedirect("listProduct");
    }
}
