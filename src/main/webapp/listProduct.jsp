<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: taminhtri
  Date: 19/09/2023
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Producs</title>
    <style type="text/css">
        h1{
            text-align: center;
        }
        img{
            width: 100px;
            height: 100px;
        }
        table{
            width: 500px;
            margin: 0 auto;
        }
        .table{
            /*margin: 0 auto;*/
        }
        table tr td{
            border: 1px solid black;
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Producs</h1>

<a href="cart.jsp">Show cart</a>
<div class="table">
    <table>
        <c:forEach items="${list}" var="product">
            <form action="/cart" method="post">
                <tr>
                    <td>${product.getName()}</td>
                    <input type="hidden" name="name" value="${product.getName()}">
                    <td>${product.getPrice()}</td>
                    <input type="hidden" name="price" value="${product.getPrice()}">
                    <td><img src="${product.getImage()}"></td>
                    <input type="hidden" name="image" value="${product.getImage()}">
                    <td>
                        <input type="submit" value="Add to cart">
                    </td>
                </tr>
            </form>
        </c:forEach>
    </table>
</div>
</body>
</html>
