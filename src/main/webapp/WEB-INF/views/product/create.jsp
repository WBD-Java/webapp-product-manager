<%--
  Created by IntelliJ IDEA.
  User: colongchong
  Date: 9/21/18
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Create Product</title>
    <style>
        body{
            width: 500px;
            margin: auto;
        }

        table, th, td{
            width: 100%;
            margin: auto;
        }

        th{
           text-align: left;
        }

        input{
            margin: 5px 10px 10px 5px;
            padding: 10px 20px 20px 10px;
            border-collapse: collapse;
            border-radius: 1px;
        }
    </style>
</head>
<body>
<h1>Create Product</h1>
<a href="/products">Back to list Product</a>
<fieldset>
    <legend><h2>Create new Product</h2></legend>
    <form:form modelAttribute="product" action="/product/save" method="post">
        <table>
            <tr>
                <th>Name</th>
                <td><form:input path="name"/></td>
            </tr><tr>
                <th>Price</th>
                <td><form:input path="price"/></td>
            </tr><tr>
                <th>Description</th>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <th>Producer</th>
                <td><form:input path="producer"/></td>
            </tr>
            <tr>
                <th></th>
                <td><input type="submit" value="Create Product"></td>
            </tr>
        </table>
    </form:form>
</fieldset>
</body>
</html>
