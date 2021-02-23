<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h3 class="w-100 text-center  my-5">Купить товар</h3>
<div class="w-100 d-flex justify-content-center">
    <form action="buyProduct" method="POST">
        <select class="form-control" name="productId">
            <option value="">Выберите товар</option>
            <c:forEach var="product" items="${listProducts}">
                <option value="${product.id}">Название: "${product.title} ${product.model}" Цена: "${product.price}€" Осталось: "${product.count}"</option>
            </c:forEach>
        </select>

        <div class="top-100"></div>


        <button type="submit" class="btn  w-100" style="margin-top: 1rem; background-color: #EB984E">Купить товар</button>
    </form>
</div>