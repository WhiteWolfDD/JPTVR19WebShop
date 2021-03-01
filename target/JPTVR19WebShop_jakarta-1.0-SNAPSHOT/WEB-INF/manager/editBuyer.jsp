<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Редактирование пользователя</title>
</head>
<body>
<h1 class="text-center">Редактирование пользователя</h1>

<div class="w-100 d-flex justify-content-center mt-5">
    <form action="editBuyer" method="POST">

        <label>
            <select class="form-select" name="buyerId">
                <option value="">Выберите покупателя</option>
                <c:forEach var="buyer" items="${listBuyers}" varStatus="status">
                    <option value="${buyer.id}">
                            ${status.index+1}. <strong>Имя: </strong>${buyer.name} ${buyer.lastname},
                        <strong>Баланс: </strong>${buyer.money} евро, <strong>Е-маил: </strong>${buyer.email}
                    </option>
                </c:forEach>
            </select>
        </label>

        <p class="fw-bold text-muted text-center mt-5">Данные покупателя</p>

        <div class="col">
            <input type="hidden" name="buyerId" value="${buyer.id}">
            <div class="input-group flex-nowrap w-75 my-3 mx-auto">
                <span class="input-group-text">🧠</span>
                <input class="form-control w-100" type="text" name="name" id="name" placeholder="Имя"
                       value="${buyer.name}" required>
            </div>

            <div class="input-group flex-nowrap w-75 my-3 mx-auto">
                <span class="input-group-text">🧠</span>
                <input class="form-control" placeholder="Фамилия" type="text" name="lastname" id="lastname"
                       value="${buyer.lastname}"
                       required>
            </div>

            <div class="input-group flex-nowrap w-75 my-3 mx-auto">
                <span class="input-group-text">@</span>
                <input class="form-control" placeholder="E-mail" type="email" name="email" id="email"
                       value="${buyer.email}" required>
            </div>

            <div class="input-group flex-nowrap w-75 my-3 mx-auto">
                <span class="input-group-text">💰</span>
                <input type="number" min="1" max="1000" class="form-control" placeholder="Баланс" id="money"
                       name="money" value="${buyer.money}" required>
            </div>

            <div class="w-50 mx-auto mt-5">
                <div class="mx-auto w-75">
                    <input class="btn mx-auto" style="background-color: #EB984E" type="submit" name="submit" value="Изменить пользователя">
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
