<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<p class="text-center">${info}</p>

<h2 class="w-100 text-center">Список товаров</h2>

<div class="w-50 mx-auto d-flex justify-content-center m-2 flex-wrap">
    <h3 class="text-center mt-5 text-danger"><c:if test="${empty listProducts}">Список товаров пуст.</c:if></h3>
    <c:forEach var="product" items="${listProducts}" varStatus="productId">
        <div class="card m-2 mt-5" style="width: 13.5rem">
            <img src="insertCover/${product.cover.path}" class="card-img-top" alt="..."
                 style="max-width: 12rem; max-height: 15rem; margin: 0 auto">
            <div class="card-body">
                <h5 class="card-title"
                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 12rem">${product.title} ${product.model}</h5>
                <p class="card-text"
                   style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 12rem">Цена:
                    <strong>${product.price}€</strong></p>
                <p class="card-text">Осталось: <strong><i>${product.count}</i> шт.</strong></p>
                <div class="d-flex flex-nowrap justify-content-between">
                    <a class="btn btn-primary" data-bs-target="addToBag${productId.count}"
                            id="productId" href="addToBag">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-bag" viewBox="0 0 16 16">
                            <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"></path>
                        </svg>
                    </a>
                    <form action="buyProduct">
                        <a href="buyProduct?productId=${productId.count}"
                           data-bs-target="#buyProductConfirmation${productId.index}" data-bs-toggle="modal"
                           id="confirmationButton${productId.count}" class="btn btn-primary">Купить сразу</a>
                    </form>
                </div>
                <div class="w-100 mt-2">
                    <a data-bs-target="#exampleModal${productId.count}" data-bs-toggle="modal"
                            id="productId${productId.count}"
                            class="btn btn-outline-primary w-100">Смотреть
                    </a>
                </div>
            </div>
        </div>

        <div class="modal fade" id="exampleModal${productId.count}" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Описание товара:
                            "<i>${product.title} ${product.model}</i>"
                        </h5>
                        <button type="button" class="btn-close"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>${product.description}</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Закрыть
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="buyProductConfirmation${productId.index}" tabindex="-1"
             aria-labelledby="buyProductConfirmationModal"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="buyProductConfirmationModal">Подтверждение покупки</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Вы уверены, что хотите купить товар "<strong>${product.title} ${product.model}</strong>" за
                            <strong>${product.price}</strong>€</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Нет</button>
                        <a href="buyProduct?productId=${productId.count}" type="button" class="btn btn-primary">Да</a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>