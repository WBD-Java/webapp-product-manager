<%--
  Created by IntelliJ IDEA.
  User: colongchong
  Date: 9/19/18
  Time: 5:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
    <link rel="stylesheet" href="/product/style.css" type="text/css">
</head>
<body>
<h1>Update Product</h1>
<p class="another">
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p class="another">
    <a href="/products">Back to Product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product Information</legend>
        <table>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <th>Price:</th>
                <td><input type="text" name="price" value="&#36 ${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <th>Description:</th>
                <td><input type="text" name="description" value="${requestScope["product"].getDescription()}"></td>
            </tr>
            <tr>
                <th>Producer:</th>
                <td><input type="text" name="producer" value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
