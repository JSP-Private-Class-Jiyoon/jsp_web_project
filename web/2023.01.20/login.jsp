<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>
<form id="login_form" method="post" action="/2023.01.20/login_action.jsp">
    <table>
        <tr>
            <td colspan="2">로그인 페이지</td>
        </tr>
        <tr>
            <td>
                <label>아이디 : <input type="text" id="id" name="id" placeholder="아이디를 입력하세요."></label>
            </td>
        </tr>
        <tr>
            <td>
                <label>비밀번호 : <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요."></label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="button" onclick="submit()">로그인</button>
                <button type="button" onclick="id_reset()">초기화</button>
            </td>
        </tr>
    </table>
</form>
</body>
<script>
    function submit () {
        document.getElementById('login_form').submit();
    }

    function id_reset () {
        document.getElementById('id').value = "";
    }
</script>
</html>
