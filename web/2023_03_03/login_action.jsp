<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");


    if(!id.equals("admin") || !pw.equals("1234")){

        out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); location.replace('/2023.01.29/lesson/login.jsp');</script>");

    }


    session.setAttribute("id",id);
    session.setMaxInactiveInterval(3600);
    response.sendRedirect("/2023.01.29/lesson/index.jsp");

%>

