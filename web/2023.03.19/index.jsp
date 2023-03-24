<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OOO의 쇼핑몰</title>
</head>
<body>
<table>
    <tr>
        <th>NO.</th>
        <th>상품명</th>
        <th>상품가격</th>
        <th>수량</th>
    </tr>

    <tr>
        <th>1</th>
        <th>반팔티</th>
        <th>2,000원</th>
        <th>20</th>
        <td><button type="button" onclick="getItem('반팔티')">담기</button></td>
    </tr>

    <tr>
        <th>2</th>
        <th>긴팔티</th>
        <th>20,000원</th>
        <th>20</th>
        <td><button type="button" onclick="getItem('긴팔티')">담기</button></td>
    </tr>

    <tr>
        <th>3</th>
        <th>가디건</th>
        <th>43,000원</th>
        <th>20</th>
        <td><button type="button" onclick="getItem('가디건')">담기</button></td>
    </tr>

    <tr>
        <th>4</th>
        <th>무지티</th>
        <th>89,000원</th>
        <th>20</th>
        <td><button type="button" onclick="getItem('무지티')">담기</button></td>
    </tr>
    <tr>
        <th>5</th>
        <th>패딩</th>
        <th>202,000원</th>
        <th>20</th>
        <td><button type="button" onclick="getItem('패딩')">담기</button></td>
    </tr>
    <tr>
             <td colspan="5">
            <button type="button" onclick="goCart()">장바구니로 이동</button>
            <button type="button" onclick="clearCart()">장바구니 초기화</button>
        </td>
    </tr>
</table>
</body>
<script>
 function getItem (itemName) {
     location.href='/2023.03.19/cartApi.jsp?itemName=' + itemName;
 }
 function  goCart () {
     location.href='/2023.03.19/cartApi.jsp?itemName=commit';
 }
 function clearCart () {
     location.href='/2023.03.19/catApi.jsp?itemName=clear';
 }
</script>
</html>
