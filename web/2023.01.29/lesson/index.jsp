<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  session = request.getSession();

  String session_id = "";
  boolean is_login = false;

  if (session.getAttribute("id") != null) {
    session_id = (String) session.getAttribute("id");
    is_login = true;
  }

%>
<html>
  <head>
    <title>게시판</title>
  </head>
  <body>
  <header>
    <% if (is_login) { %>
      <h1>어서오세요 <%= session_id %>님 게시판입니다.</h1>
    <% } %>
  </header>

  <div id="login_info" class="container">
    <% if (is_login) { %>
      <button onclick="move_login_out()">로그아웃</button>
    <% } else { %>
      <button onclick="move_login()">로그인</button>
    <% } %>
  </div>

  <% if (is_login) { %>
    <div id="content" class="container">
      <table border="1">
        <thead>
          <tr>
            <th>no.</th>
            <th>제목</th>
            <th>조회수</th>
            <th>추천수</th>
          </tr>
        </thead>
        <tbody>
          <% for (int i = 0; i < 20; i++) { %>
            <tr>
              <td><%= i %></td>
              <td>test게시물</td>
              <td><%= i %></td>
              <td>0</td>
            </tr>
          <% } %>
        </tbody>
      </table>
    </div>

    <footer>
      <h4>jsp 기반으로 만들어진 게시판 입니다.</h4>
    </footer>
  <% } %>
  </body>
  <script>
    function move_login () {
      location.href = "/2023.01.29/lesson/login.jsp";
    }

    function move_login_out () {
      location.href = "/2023.01.29/lesson/login_out.jsp";
    }
  </script>
</html>
