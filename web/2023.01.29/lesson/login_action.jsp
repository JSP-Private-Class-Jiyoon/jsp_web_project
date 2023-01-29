<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    // 계정 정보 검증
    if(!id.equals("admin") || !pw.equals("1234")){

        // 자바 print 함수를 통하여 javascript 실행
        out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); location.replace('/2023.01.29/lesson/login.jsp');</script>");

    }

    // 계정 정보 일치시 처리
    session.setAttribute("id",id); //세션에 "id" 등록
    session.setMaxInactiveInterval(3600); //세션 유지시간 1시간 설정 (초 단위)
    response.sendRedirect("/2023.01.29/lesson/index.jsp");  //세션 설정 후 게시판페이지로 이동

%>
