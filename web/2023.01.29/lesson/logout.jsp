<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate(); // 모든 세션 정보 초기화
    response.sendRedirect("/2023.01.29/lesson/index.jsp");
%>