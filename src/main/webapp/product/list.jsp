<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: colongchong
  Date: 9/19/18
  Time: 1:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="/product/style.css" type="text/css">
</head>
<body>
<h1>Products List</h1>
<a href="/products?action=create">Create Product</a>

<form action="/products?action=search" method="post">
    <table>
        <tr>
            <td><input type="text" name="name" placeholder="enter name you want search"></td>
            <td><span><input type="submit" value="Search"></span></td>
        </tr>
    </table>
</form>
<table class="tableList">
    <tr>
        <th class="tableList">Name</th>
        <th class="tableList">Price</th>
        <th class="tableList">Description</th>
        <th class="tableList">Producer</th>
        <th class="tableList">Edit</th>
        <th class="tableList">Delete</th>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td class="tableList"><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td class="tableList">&#36 ${product.getPrice()}</td>
            <td class="tableList">${product.getDescription()}</td>
            <td class="tableList">${product.getProducer()}</td>
            <td class="tableList"><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
            <td class="tableList"><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
