
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h3 class="w-100 my-5 text-center">Список товаров</h3>
<div class="w-100 d-flex justify-content-center m-2">
    <c:forEach var="product" items="${listProducts}">
        <div class="card m-2" >
            <img src="insertCover/${product.cover.path}" class="card-img-top" alt="..." style="max-width: 12rem; max-height: 15rem; margin: 0 auto">
            <div class="card-body">
                <h5 class="card-title">${product.title} ${product.model}</h5>
                <p class="card-text">${product.price}</p>
                <a href="#" class="btn" style="background-color: #EB984E">Смотреть</a>
                <a href="buyProductForm" class="btn" style="background-color: #EB984E">Купить</a>
            </div>
        </div>
    </c:forEach>


</div>