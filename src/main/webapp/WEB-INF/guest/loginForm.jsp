<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="mx-auto mt-5  p-3" style="width: 30rem">
    <h2 class="w-100 m-4 text-center mx-auto">Введите логин и пароль</h2>
    <form action="login" method="POST">
        <div class="row m-2 ">
            <div class="col-sm-10 mx-auto">
                <input type="text" class="form-control" id="login" name="login" placeholder="Логин" value="${login}">
            </div>
        </div>
        <div class="row m-2 ">
            <div class="col-sm-10 mx-auto">
                <input type="password" class="form-control" id="password" name="password" placeholder="Пароль" value="${password}">
            </div>
        </div>
        <div class=" mt-4 m-2 w-100 row">
            <input type="submit" value="Войти" class="mx-auto col-4 btn" style="width: 16rem; background-color: #EB984E;">
        </div>
    </form>
</div>