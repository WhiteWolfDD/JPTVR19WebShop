<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Вход в систему</title>
</head>
<body>
    <div style="margin-left: 1rem">
    <h1>Вход в систему</h1>
        <a href="index.jsp">Домой</a>
    </div>
        <hr>
    <div style="margin-left: 1rem">
        <form action="login" method="POST">
            <label for="login">Логин</label>
            <input type="text" name="login" id="login" value="" required>

            <br><br>

            <label for="password">Пароль</label>
            <input type="password" name="password" id="password" value="" required>

            <br><br>

            <input type="submit" value="Войти"><br>
        </form>
        <p>Нет аккаунта? <a href="registrationForm">Зарегистрироваться</a></p>
    </div>
</body>
</html>
