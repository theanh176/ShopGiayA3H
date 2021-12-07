<%--
  Created by IntelliJ IDEA.
  User: Nguyen Huu Hieu
  Date: 11/8/2021
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="update" method="post">
    <table>
        <tr>
            <td>ID: </td>
            <td><input type="text" name="id" value="${product.id}" readonly></td>
        </tr>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name" value="${product.name}"></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><input type="text" name="price" value="${product.price}"></td>
        </tr>
        <tr>
            <td>Image: </td>
            <td><input type="text" name="image" value="${product.image}" placeholder="chưa up ảnh được"></td>
        </tr>
        <tr>
            <td>Title: </td>
            <td><input type="text" name="title" value="${product.title}"></td>
        </tr>
        <tr>
            <td>Description: </td>
            <td><input type="text" name="description" value="${product.description}"></td>
        </tr>
        <tr>
            <td>Category ID: </td>
            <td><input type="text" name="cid" value="${product.cateId.cid}"></td>
        </tr>
    </table>
    <input type="submit" value="Update">
</form>
</body>
</html>
