<%@page contentType="text/html" pageEncoding="UTF-8" %>

<h3 class="w-100 text-center my-5">Добавить новый товар</h3>
<form action="createProduct" method="POST">
    <div class="input-group flex-nowrap w-25 my-3 mx-auto">
        <span class="input-group-text">✯</span>
        <input type="text" class="form-control" placeholder="Название товара" id="title" name="title">
    </div>
    <div class="input-group flex-nowrap w-25 my-3 mx-auto">
        <span class="input-group-text">❗</span>
        <input type="text" class="form-control" placeholder="Модель товара" id="model" name="model">
    </div>
    <div class="input-group flex-nowrap w-25 my-3 mx-auto">
        <span class="input-group-text">💰</span>
        <input type="number" min="1" max="10000" class="form-control" placeholder="Цена товара" id="price" name="price">
    </div>
    <div class="input-group flex-nowrap w-25 my-3 mx-auto">
        <span class="input-group-text">∞</span>
        <input type="number" min="1" max="1000" class="form-control" placeholder="Количество товара" id="count"
               name="count">
    </div>

    <p class="fw-bold text-muted text-center mt-5">Описание</p>

    <div class="input-group flex-nowrap w-25 my-3 mx-auto">
        <textarea class="w-100 form-control" style="height: 12rem; resize: none" name="description" id="description" placeholder="Описание товара..."></textarea>
    </div>

    <div class="fw-bold text-muted text-center" style="margin-top: 3rem;">
        <p>Добавление фотографии:</p>
    </div>
    <label class="mx-auto text-center w-100">
        <a href="uploadForm" class="text-center text-decoration-none">Загрузить фотографию</a>
    </label>
    <div class="row mb-3 w-25 mx-auto" style="margin: 1rem">
        <select class="form-select" id="coverId" name="coverId" aria-label="Выбрать фотографию">
            <option selected>Выберите фотографию</option>
            <c:forEach var="cover" items="${listCovers}">
                <option value="${cover.id}">${cover.description}</option>
            </c:forEach>
        </select>
    </div>

    <div class="row w-50 my-3 mx-auto">
        <div class="col-8 mt-3 text-start w-25 mx-auto">
            <button class="col-9 btn text-white w-100" type="submit" name="submit" style="background-color: #EB984E">Добавить товар</button>
        </div>
    </div>
</form>