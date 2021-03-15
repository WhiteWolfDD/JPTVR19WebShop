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
            <span class="input-group-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                     class="bi bi-people-fill" viewBox="0 0 16 16">
                  <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                  <path fill-rule="evenodd"
                        d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"></path>
                  <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"></path>
                </svg>
            </span>
            <input class="form-control w-100" type="text" name="login" id="login" placeholder="Логин" required>
        </div>

        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
                  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"></path>
                </svg>
            </span>
            <input class="form-control w-100" type="password" name="password" id="password" placeholder="Пароль"
                   required>
        </div>

        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
                  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"></path>
                </svg>
            </span>
            <input class="form-control w-100" type="password" name="repeatPassword" id="repeatPassword"
                   placeholder="Подтвержение пароля"
                   required>
        </div>

        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-mailbox2" viewBox="0 0 16 16">
                  <path d="M9 8.5h2.793l.853.854A.5.5 0 0 0 13 9.5h1a.5.5 0 0 0 .5-.5V8a.5.5 0 0 0-.5-.5H9v1z"></path>
                  <path d="M12 3H4a4 4 0 0 0-4 4v6a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V7a4 4 0 0 0-4-4zM8 7a3.99 3.99 0 0 0-1.354-3H12a3 3 0 0 1 3 3v6H8V7zm-3.415.157C4.42 7.087 4.218 7 4 7c-.218 0-.42.086-.585.157C3.164 7.264 3 7.334 3 7a1 1 0 0 1 2 0c0 .334-.164.264-.415.157z"></path>
                </svg>
            </span>
            <input class="form-control w-100" type="text" name="email" id="email" placeholder="E-mail" required>
        </div>

        <p class="fw-bold text-muted text-center mt-5">Данные пользователя</p>

        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
                  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"></path>
                </svg>
            </span>
            <input class="form-control w-100" type="text" name="name" id="name" placeholder="Имя"
                   required>
        </div>

        <div class="input-group flex-nowrap w-50 my-3 mx-auto">
            <span class="input-group-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
                  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"></path>
                </svg>
            </span>
            <input class="form-control w-100" type="text" name="lastname" id="lastname" placeholder="Фамилия"
                   required>
        </div>

        <p class="fw-bold text-muted text-center mt-5">Загрузить аватар</p>

        <div class="input-group w-100 mx-auto flex-column">
            <label class="text-center my-3 mx-auto">
                <a href="avatarUploadForm" class="w-100 col-4 mx-auto btn btn-lg btn-outline-warning">Загрузить аватар
                    профиля
                </a>
            </label>
            <div class="col-8 text-start w-50 mx-auto">
                <select class="form-select" id="avatarId" name="avatarId" aria-label="Выбрать аватар" required>
                    <option selected>Выберите аватар для профиля:</option>
                    <c:forEach var="avatar" items="${listAvatars}">
                        <option value="${avatar.id}">${avatar.path}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="w-50 mx-auto mt-5">
            <div class="mx-auto w-50">
                <input class="btn mx-auto w-100" style="background-color: #EB984E" type="submit" name="submit" value="Зарегистрироваться">
            </div>
        </div>
    </div>
</form>
</body>
</html>