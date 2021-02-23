<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Регистрация пользователя</title>
</head>
<body>
<h1>Регистрация/добавление пользователя</h1>
<a href="../../index.jsp">Домой</a>
<hr>
<form action="registration" method="POST">
    <h2>Логин и пароль</h2>
    <label for="login">Логин</label>
    <input type="text" name="login" id="login" value="" required>

    <br><br>

    <label for="password">Пароль</label>
    <input type="password" name="password" id="password" value="" required>

    <hr>

    <h2>Данные пользователя</h2>
    <label for="name">Имя:</label>
    <input type="text" name="name" id="name" required>

    <br><br>

    <label for="lastname">Фамилия:</label>
    <input type="text" name="lastname" id="lastname" required>

    <br><br>

    <label for="email">E-mail:</label>
    <input type="text" name="email" id="email" required>

    <br><br>

    <label for="money">Деньги:</label>
    <input type="text" name="money" id="money" required>

    <br><br>

    <input type="submit" value="Зарегистрироваться">
</form>
</body>
</html>
