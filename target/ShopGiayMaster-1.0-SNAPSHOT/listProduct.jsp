<%--
  Created by IntelliJ IDEA.
  User: Nguyen Huu Hieu
  Date: 11/10/2021
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Danh sách</title>
    <style><%@include file="/style/productAdmin.css"%></style>
</head>
<body>
<%--HEADER ADMIN--%>
<c:import url="/header.jsp"/>
<%--/HEADER ADMIN--%>
<div class="div--flex">
    <div class="div-flex__div">
        <h1>Danh sách sản phẩm</h1>
        <div class="div__table--scroll table--pro">
            <table>
                <tr>
<%--                    <th>id</th>--%>
                    <th>name</th>
                    <th>price</th>
<%--                    <th>image</th>--%>
                    <th>title</th>
                    <th>des</th>
                    <th>category</th>
                </tr>
                <c:forEach items="${product}" var="pro">
                    <tr>
<%--                        <td>${pro.id}</td>--%>
                        <td>${pro.name}</td>
                        <td>${pro.price}</td>
                            <%--            <td>${pro.image}</td>--%>
                        <td>${pro.title}</td>
                        <td>${pro.description}</td>
                        <td>${pro.cateId.cname}</td>
                        <td>
                            <form action="">
                                <input type="hidden" name="id" value="${pro.id}">
                                <input class="btn" formaction="update" type="submit" value="update">
                                    <%--                <a href="delete?id=${pro.id}">Delete</a>--%>
                                <input class="btn" type="submit" formaction="delete" value="delete">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="div--link">
            <a class="btn btn-link" href="createProduct.jsp">Create Product</a>
        </div>
    </div>
    <div class="div-flex__div">
        <h1>Danh sách danh mục</h1>
        <div class="div__table--scroll table--cate">
            <table>
                <tr>
                    <th>Name</th>
                </tr>
                <c:forEach items="${categories}" var="cate">
                <tr>
                    <td>${cate.cname}</td>
                </tr>
                </c:forEach>
            </table>
        </div>
        <div class="div--flex">
            <div class="div--link">
                <a class="btn btn-link" href="#">Create Category</a>
            </div>
            <div class="div--link div--btn-delete">
                <a class="btn btn-link btn-delete" href="#">Delete Category</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
