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
    <title>Product Information</title>
    <style>
        body {
            width: 700px;
            margin: auto;
        }

        h2 {
            text-align: center;
        }

        a {
            text-decoration: none;
        }

        table, td {
            width: 100%;
            margin: auto;
        }

        th {
            width: 30%;
            margin: auto;
            text-align: left;
        }

        input {
            width: 100%;
            margin: 5px 10px 10px 5px;
            padding: 10px 20px 20px 10px;
            border-collapse: collapse;
            border-radius: 1px;
            text-align: center;
        }

        .choose{
            width: 75%;
            margin: auto;
        }

        td.choose{
            width: 50%;
            margin: auto;
            text-align: center;
        }

        input[type=submit]{
            width: 50%;
            margin: auto;
        }
    </style>
</head>
<body>
<body>
<h1>Product Information</h1>
<a href="/products">Back to list Product</a>

<fieldset>
    <legend><h2>Product Information</h2></legend>
    <table>
        <tr>
            <th>Name</th>
            <td><input readonly value="${product.name}"></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><input readonly value="${product.price}"></td>
        </tr>
        <tr>
            <th>Description</th>
            <td><input readonly value="${product.description}"></td>
        </tr>
        <tr>
            <th>Producer</th>
            <td><input readonly value="${product.producer}"></td>
        </tr>
    </table>
    <table class="choose">
        <tr>
            <td class="choose"><a href="/product/edit?id=${product.id}"><input type="submit" value="Edit product"/></a></td>
            <td class="choose"><a href="/product/delete?id=${product.id}"><input type="submit" value="Delete product"/></a></td>
        </tr>
    </table>
</fieldset>
</body>
</body>
</html>
