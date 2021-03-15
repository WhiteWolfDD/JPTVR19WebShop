<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<h3 class="w-100 text-center my-5">Добавить новый товар</h3>
<div class="row w-100">
    <label class="text-center w-25 mx-auto">
        <a href="uploadForm" class="w-100 col-4 mx-auto btn btn-lg btn-outline-warning">Загрузить обложку для
            товара
        </a>
    </label>

    <p class="fw-bold text-muted text-center mt-5">Данные товара</p>

    <form action="createProduct" method="POST">
        <div class="input-group flex-nowrap w-25 my-3 mx-auto">
            <span class="input-group-text">Бренд товара</span>
            <input type="text" class="form-control" placeholder="Sofa Bed" id="title" name="title"
                   value="${title}" required>
        </div>
        <div class="input-group flex-nowrap w-25 my-3 mx-auto">
            <span class="input-group-text">Модель товара</span>
            <input type="text" class="form-control" placeholder="S1027" id="model"
                   name="model" value="${model}" required>
        </div>
        <div class="input-group flex-nowrap w-25 my-3 mx-auto">
            <span class="input-group-text">Цена товара</span>
            <input type="number" min="1" max="10000" class="form-control" placeholder="500€" id="price" value="${price}"
                   name="price" required>
        </div>
        <div class="input-group flex-nowrap w-25 my-3 mx-auto">
            <span class="input-group-text">Количество</span>
            <input type="number" min="1" max="1000" class="form-control" placeholder="1" id="count" value="${count}"
                   name="count" required>
        </div>

        <p class="fw-bold text-muted text-center mt-5">Описание товара</p>

        <div class="input-group flex-nowrap w-25 my-3 mx-auto">
            <textarea class="w-100 form-control" style="height: 12rem; resize: none" name="description" id="description"
                      placeholder="Описание товара..." required></textarea>
        </div>

        <p class="fw-bold text-muted text-center mt-5">Обложка товара</p>

        <div class="row w-50 my-2 mx-auto">
            <div class="col-8 text-start w-50 mx-auto">
                <select class="form-select" name="coverId" aria-label="Выбрать обложку" required>
                    <option selected>Выберите обложку для товара:</option>
                    <c:forEach var="cover" items="${listCovers}">
                        <option value="${cover.id}">${cover.description}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="w-50 mx-auto mt-5" style="margin-bottom: 10rem">
            <div class="mx-auto w-25">
                <input class="btn mx-auto w-100" style="background-color: #EB984E" type="submit" name="submit" value="Добавить товар">
            </div>
        </div>
    </form>
</div>