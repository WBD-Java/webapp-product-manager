<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: colongchong
  Date: 9/21/18
  Time: 10:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Product List</title>
    <style>
        body {
            width: 1200px;
            margin: auto;
        }

        .notity{
            margin-top: 5px;
            color: green;
        }

        h2{
            text-align: center;
        }

        a{
            text-decoration: none;
        }
        table{
            width: 100%;
            margin: auto;
        }

        table, th, td{
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<h1>Product List</h1>
<a href="/product/create">Create new Product</a>
<div class="notity">
    <span>${messgae}</span>
</div>
<h2>Product List</h2>
<table class="list">
    <thead>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Producer</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${products}">
        <tr>
            <td><a href="/product/view?id=${product.getId()}"> ${product.getName()}</a></td>
            <td>&#36 ${product.price}</td>
            <td>${product.description}</td>
            <td>${product.producer}</td>
            <td><a href="/product/edit?id=${product.id}">Edit</a></td>
            <td><a href="/product/delete?id=${product.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
