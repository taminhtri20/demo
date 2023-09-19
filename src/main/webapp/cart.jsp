<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: taminhtri
  Date: 19/09/2023
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
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
<h1>My Cart</h1>
<div class="table">
  <table>
    <c:forEach items="${listCart}" var="product">
      <tr>
        <td>${product.getName()}</td>
        <td>${product.getPrice()}</td>
        <td><img src="${product.getImage()}"></td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>
