<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>OOO의 쇼핑몰</title>
  </head>
  <body>
    <table border="1">
      <tr>
        <th>No.</th>
        <th>상품명</th>
        <th>상품 가격</th>
        <th>수량</th>
        <th>장바구니에 넣기</th>
      </tr>
      <tr>
        <td>1</td>
        <td>반팔티</td>
        <td>2,000원</td>
        <td>20</td>
        <td><button type="button" onclick="getItem('반팔티')">담기</button></td>
      </tr>
      <tr>
        <td>2</td>
        <td>긴팔티</td>
        <td>20,000원</td>
        <td>20</td>
        <td><button type="button" onclick="getItem('긴팔티')">담기</button></td>
      </tr>
      <tr>
        <td>3</td>
        <td>가디건</td>
        <td>43,000원</td>
        <td>20</td>
        <td><button type="button" onclick="getItem('가디건')">담기</button></td>
      </tr>
      <tr>
        <td>4</td>
        <td>무지티</td>
        <td>89,000원</td>
        <td>20</td>
        <td><button type="button" onclick="getItem('무지티')">담기</button></td>
      </tr>
      <tr>
        <td>5</td>
        <td>패딩</td>
        <td>202,000원</td>
        <td>20</td>
        <td><button type="button" onclick="getItem('패딩')">담기</button></td>
      </tr>
      <tr>
        <td colspan="5"><button type="button" onclick="goCart()">장바구니로 이동</button></td>
      </tr>
    </table>
  </body>
  <script>
    function getItem (itemName) {
      location.href='/2023.03.12/lesson/cartApi.jsp?itemName=' + itemName;
    }
    function goCart () {
      location.href='/2023.03.12/lesson/cartApi.jsp?itemName=commit';
    }
  </script>
</html>
