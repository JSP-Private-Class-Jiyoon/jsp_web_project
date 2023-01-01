<%--
  Created by IntelliJ IDEA.
  User: lacy
  Date: 2022/12/11
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>게시판</title>
  </head>
  <body>
  <header>
    <h1>어서오세요 <%= request.getParameter("id") %>님 게시판입니다.</h1>
  </header>

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

  <footer>
    <h4>jsp 기반으로 만들어진 게시판 입니다.</h4>
  </footer>
  </body>
</html>
