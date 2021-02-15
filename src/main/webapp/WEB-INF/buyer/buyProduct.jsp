<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h3 class="w-100 text-center  my-5">Купить товар</h3>
<div class="w-100 d-flex justify-content-center">
    <form action="buyProduct" method="POST">
        <select class="form-control" name="productId">
            <option value="">Выберите товар</option>
            <c:forEach var="product" items="${listProducts}">
                <option value="${product.id}">Название: "${product.title} ${product.model}" Цена: "${product.price}" Кол-во: "${product.count}"</option>
            </c:forEach>
        </select>

        <div class="top-100"></div>

        <select class="form-control" name="buyerId" style="margin-top: 2.5rem">
            <option value="">Выберите покупателя</option>
            <c:forEach var="buyer" items="${listBuyers}">
                <option value="${buyer.id}">Имя: "${buyer.name} ${buyer.lastname}" Баланс: "${buyer.money}" Э-майл: "${buyer.email}"</option>
            </c:forEach>
        </select>
        <button class="btn btn-primary w-100" style="margin-top: 1rem;">Купить товар</button>
    </form>
</div>