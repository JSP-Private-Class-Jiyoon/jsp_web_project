<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    int static_income = 1000000;
    int lunch_outcome = 5000;
    int parents_outcome = 30000;
    int total_income = 0;
    int total_outcome = 0;
    int result = 0;
    total_income += static_income;
    total_outcome += lunch_outcome;
    total_outcome += parents_outcome;

    result =total_income - total_outcome;
    DecimalFormat decFormat = new DecimalFormat("###,###");

%>
<table border="1">
<tr>
  <th colspan="3">오늘의 수입/지출</th>
</tr>
    <tr>
        <th>내용</th>
        <th>수입</th>
        <th>지출</th>
    </tr>
    <tr>
        <td>월급!</td>
        <td><%= decFormat.format(static_income) %></td>
        <td></td>
    </tr>
    <tr>
        <td>점심값</td>
        <td></td>
        <td><%= decFormat.format(lunch_outcome) %></td>
    </tr>
    <tr>
        <td>부모님선물</td>
        <td></td>
        <td><%= decFormat.format(parents_outcome) %></td>
    </tr>
    <tr>
        <th rowspan="3">총계</th>
        <td>수입</td>
        <td>지출</td>
    </tr>
    <tr>
        <td><%= decFormat.format(total_income) %></td>
        <td><%= decFormat.format(total_outcome) %></td>
    </tr>
    <tr>
        <td>남은돈</td>
        <td><%= decFormat.format(result) %></td>
    </tr>
</table>
</body>
</html>
