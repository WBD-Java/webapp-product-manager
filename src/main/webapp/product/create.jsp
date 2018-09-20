<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: colongchong
  Date: 9/19/18
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
    <link rel="stylesheet" href="/product/style.css" type="text/css">
</head>
<body>
<h1>Create Product</h1>
<p class="create">
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p class="create">
    <a href="/products">Back to Product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product Information</legend>
        <table>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="name" placeholder="Enter Name"></td>
            </tr>
            <tr>
                <th>Price:</th>
                <td><input type="text" name="price" placeholder="Enter Price (VND)"></td>
            </tr>
            <tr>
                <th>Description:</th>
                <td><input type="text" name="description" placeholder="Enter Description"></td>
            </tr>
            <tr>
                <th>Producer:</th>
                <td><input type="text" name="producer" placeholder="Enter Producer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
