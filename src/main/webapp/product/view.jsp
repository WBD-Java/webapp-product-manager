<%--
  Created by IntelliJ IDEA.
  User: colongchong
  Date: 9/19/18
  Time: 10:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Information</title>
    <link rel="stylesheet" href="/product/style.css" type="text/css">
</head>
<body>
<h1 class="another">Product Information</h1>
<p class="another">
    <a href="/products">Back to list Product</a>
</p>
<fieldset>
    <legend>Product Information</legend>
    <table>
        <tr>
            <th>Name:</th>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <th>Price:</th>
            <td>&#36 ${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <th>Description:</th>
            <td>${requestScope["product"].getDescription()}</td>
        </tr>
        <tr>
            <th>Producer:</th>
            <td>${requestScope["product"].getProducer()}></td>
        </tr>
    </table>
</fieldset>
</body>
</html>
