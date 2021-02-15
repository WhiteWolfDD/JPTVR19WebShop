
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h3 class="w-100 my-5 text-center">Список товаров</h3>
<div class="w-100 d-flex justify-content-center m-2">
    <c:forEach var="product" items="${listProducts}">
        <div class="card m-2" >
            <img src="https://via.placeholder.com/150" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">${product.title} ${product.model}</h5>
                <p class="card-text">${product.price}</p>
                <a href="#" class="btn btn-primary">Смотреть</a>
                <a href="buyProductForm" class="btn btn-primary">Купить</a>
            </div>
        </div>
    </c:forEach>


</div>