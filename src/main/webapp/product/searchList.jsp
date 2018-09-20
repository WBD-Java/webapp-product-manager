<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: colongchong
  Date: 9/20/18
  Time: 9:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products</title>
    <link rel="stylesheet" href="/product/style.css" type="text/css">
</head>
<body>
<body>
<h1>Products List</h1>
<a href="/products">Back to list</a>
<p class="another">
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>

<c:if test='${requestScope["message"] == null}'>
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
                <td class="tableList"><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a>
                </td>
                <td class="tableList">&#36 ${product.getPrice()}</td>
                <td class="tableList">${product.getDescription()}</td>
                <td class="tableList">${product.getProducer()}</td>
                <td class="tableList"><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
                <td class="tableList"><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</body>
</html>
