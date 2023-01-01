<%--
  Created by IntelliJ IDEA.
  User: lacy
  Date: 2023/01/01
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 처리</title>
</head>
<body>
잠시만 기다려주세요.
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    // 삼항 연산자
//    String access_join = ((id == null || id.equals("undefined") || id.equals("")) ||
//            (pw == null || pw.equals("undefined") || pw.equals(""))) ? "fail" : "pass";

    String access_join = "pass";
    if (id == null || id.equals("undefined") || id.equals("")) {
        access_join = "fail";
    } else if (pw == null || pw.equals("undefined") || pw.equals("")) {
        access_join = "fail";
    }
%>
</body>
<script>
    if ('<%= access_join %>' != 'pass') {
        alert('잘못된 접근입니다.');
        location.replace('/2023.01.01/lesson/login.jsp');
    } else {
        const id = 'test';
        const pw = 'test';

        if (id != '<%= id %>' || pw != '<%= pw %>') {
            alert('아이디 또는 비밀번호가 일치하지 않습니다.');
            location.replace('/2023.01.01/lesson/login.jsp');
        } else {
            location.replace('/2023.01.01/lesson/main.jsp?id=<%= id %>');
        }
    }
</script>
</html>
