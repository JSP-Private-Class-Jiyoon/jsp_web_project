
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    String DBid = "1234";
    String DBpw = "4321";

    if (DBid.equals(id)) {
        if (DBpw.equals(pw)) {
            Cookie user = new Cookie("id", id);
            response.addCookie(user);
            response.sendRedirect("/2023.03.24/main.jsp");
        } else {
            response.sendRedirect("/2023.03.24/login.jsp");
        }
    } else{
            response.sendRedirect("/2023.03.24/login.jsp");
    }
%>