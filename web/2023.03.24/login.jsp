<%--
  Created by IntelliJ IDEA.
  User: qawsedrf1234
  Date: 2023-03-24
  Time: 오후 2:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 페이지</title>
</head>
<body>
<form action="login_cookie.jsp" method="post">
<table>
<tr>
    <td>id</td>
    <td><input type="text" name="id"></td>
</tr>
<tr>
    <td>pw</td>
    <td><input type="password" name="pw"></td>
</tr>
<tr>
    <td colspan="2">
        <input type="submit" value="로그인">
        <input type="reset" value="취소">
    </td>
</tr>
</table>
</form>
</body>
</html>
