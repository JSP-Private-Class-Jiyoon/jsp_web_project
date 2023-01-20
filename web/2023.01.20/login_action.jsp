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

    String is_post = (request.getMethod().equals("GET")) ? "N" : "Y";
%>
</body>
<script>
    const id = "test";
    const pw = "test";

    if ("<%= is_post%>" == "N"){
        alert("잘못된 접근입니다.");
        location.replace('/2023.01.20/login.jsp');
    } else if (id != '<%= id %>' || pw != '<%= pw %>') {
            alert('아이디 또는 비밀번호가 일치하지 않습니다.');
            location.replace('/2023.01.20/login.jsp');
        } else {
            location.replace('/2023.01.20/main.jsp?id=<%= id %>');
    }

</script>
</html>
