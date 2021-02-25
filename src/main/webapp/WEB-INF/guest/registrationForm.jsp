<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Регистрация пользователя</title>
</head>
<body>
<h1 class="text-center">Регистрация пользователя</h1>

<form action="registration" method="POST">
    <div class="w-50 mx-auto">
        <p class="fw-bold text-muted text-center mt-5">Логин и пароль</p>
        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">&#x1F464;</span>
            <input class="form-control w-100" type="text" name="login" id="login" placeholder="Логин" required>
        </div>

        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">&#128274;</span>
            <input class="form-control w-100" type="password" name="password" id="password" placeholder="Пароль" required>
        </div>

        <p class="fw-bold text-muted text-center mt-5">Данные пользователя</p>

        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">....</span>
            <input class="form-control w-100" type="text" name="name" id="name" placeholder="Имя" required>
        </div>


        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">....</span>
            <input class="form-control w-100" type="text" name="lastname" id="lastname" placeholder="Фамилия" required>
        </div>


        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">@</span>
            <input class="form-control w-100" type="text" name="email" id="email" placeholder="E-mail" required>
        </div>


        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">€</span>
            <input class="form-control w-100" type="text" name="money" id="money" placeholder="Баланс" required>
        </div>

        <div class="w-50 mx-auto mt-5">
            <div class="mx-auto w-50">
                <input class="btn btn-primary mx-auto w-100" type="submit" name="submit" value="Зарегистрироваться">
            </div>
        </div>
    </div>
</form>
</body>
</html>
