
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인페이지</title>
</head>
<body>
<h2>메인 페이지</h2>
<%
    String id = null;
    Cookie[] cs = request.getCookies();


    for(Cookie c : cs){
        if(c.getName().equals("id")){
            id = c.getValue();
        }
    }
    if(id == null){
        response.sendRedirect("/2023.03.24/log_out.jsp");
    }
%>
<%=id %> 님 반갑습니다.
<a href="log_out.jsp">로그아웃</a>
</body>
</html>
