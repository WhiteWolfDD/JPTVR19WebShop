<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<h1 class="text-center">Список проданных товаров</h1>
<p class="text-center">Всего проданных товаров: <strong>${historyCount}</strong><p>
<table class="table table-striped table-hover w-75 mx-auto mt-5">
    <thead class="table table-dark text-center">
    <th>№</th>
    <th>ID товара</th>
    <th>Название товара</th>
    <th>Цена товара</th>
    <th>ID покупателя</th>
    <th>Имя покупателя</th>
    <th>Дата покупки</th>
    </thead>
    <tbody class="text-center table-dark table-striped">
    <c:forEach var="entry" items="${historyListMap}" varStatus="status">
        <tr>
            <td><em><strong>${status.index+1}</strong></em></td>
            <td>${entry.key.product.id}</td>
            <td>${entry.key.product.title} ${entry.key.product.model}</td>
            <td>${entry.key.product.price}€</td>
            <td>${entry.key.buyer.id}</td>
            <td>${entry.key.buyer.name} ${entry.key.buyer.lastname}</td>
            <td>${entry.key.takeOn}</td>
        </tr>
    </c:forEach>

    </tbody>

</table>