<%--
  Created by IntelliJ IDEA.
  User: qawsedrf1234
  Date: 2023-01-01
  Time: 오전 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 페이지</title>
</head>
<body>
<form  name="login_form" action="2023.01.01/login_action.jsp" method="post">
<h1>로그인 페이지</h1>
<table>
    <tr>
        <td>아이디 :</td>
        <td><input type="text" id="id" name="id" placeholder="아이디를 입력하세요"></td>
    </tr>
    <tr>
        <td>비밀번호 :</td>
        <td><input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요"></td>
    </tr>
    <tr>
        <td colspan="2">
        <button type="button" >로그인</button>
        <button type="button">초기화</button>
        </td>
    </tr>
</table>
</form>
</body>

</html>
