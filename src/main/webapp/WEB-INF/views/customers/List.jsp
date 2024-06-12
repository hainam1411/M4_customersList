<%@ page import="java.util.List" %>
<%@ page import="org.example.customerlist.model.Customers" %><%--
  Created by IntelliJ IDEA.
  User: HaiNam
  Date: 6/12/2024
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Khách hàng</title>
</head>
<body>
<table border="1" cellspacing="1" cellpadding="1">
    <tr>
        <th>Mã khách hàng</th>
        <th>Tên khách hàng</th>
        <th>Email</th>
        <th>Địa chỉ</th>
        <th>Thao tác</th>
    </tr>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            <td><a href="/Edit?id = ${customer.id}"><button type="submit">edit</button></a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
