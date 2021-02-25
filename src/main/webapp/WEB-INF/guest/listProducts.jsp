<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<h3 class="w-100 my-5 text-center">Список товаров</h3>
<div class="w-100 d-flex justify-content-center m-2">
    <c:forEach var="product" items="${listProducts}">
        <div class="card m-2">
            <img src="insertCover/${product.cover.path}" class="card-img-top" alt="..."
                 style="max-width: 12rem; max-height: 15rem; margin: 0 auto">
            <div class="card-body">
                <h5 class="card-title">${product.title} ${product.model}</h5>
                <p class="card-text">Цена: <strong>${product.price}€</strong></p>
                <button type="button" class="btn" style="background-color: #EB984E" data-bs-toggle="modal"
                        data-bs-target="#exampleModal">Смотреть
                </button>
                <a href="buyProductForm" class="btn" style="background-color: #EB984E">Купить</a>
            </div>
        </div>
    </c:forEach>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <c:forEach var="product" items="${listProducts}">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Описание товара "${product.title}"</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                        ${product.description}
                </div>
            </c:forEach>
        </div>
    </div>
</div>