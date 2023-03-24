<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie user = new Cookie("id", "");
    user.setMaxAge(0);
    response.addCookie(user);
    response.sendRedirect("/2023.03.24/login.jsp");
%>