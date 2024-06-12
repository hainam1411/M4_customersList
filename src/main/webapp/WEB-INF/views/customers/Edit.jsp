<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/06/2024
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Customer</title>
</head>
<body>
<table  border="1" cellspacing="1" cellpadding="1">
    <tr>
        <th>Mã khách hàng</th>
        <th>Tên khách hàng</th>
        <th>Email</th>
        <th>Địa chỉ</th>
        <th>Thao tác</th>
    </tr>
    <tr>
        <td><input type="text" name="id" value="${customer.id}"  readonly></td>
        <td><input type="text" name="name" value="${customer.name}"></td>
        <td><input type="text" name="email" value="${customer.email}"></td>
        <td><input type="text}" name="address" value="${customer.address}"></td>
        <td colspan="2"><a href="#">Update</a></td>
    </tr>
</table>
<br>
<br>
<a href="/customer">Back to list</a>
</body>
</html>