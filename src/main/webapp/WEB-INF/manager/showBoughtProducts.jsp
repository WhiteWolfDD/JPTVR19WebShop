<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<div style="margin-left: 1rem">
    <h1>Список проданных товаров</h1>
    <p>Всего проданных товаров: <strong>${historyCount}</strong><p>
</div>
<table class="table table-striped">
    <thead>
    <th>№</th>
    <th>ID товара</th>
    <th>Название товара</th>
    <th>Цена товара</th>
    <th>ID покупателя</th>
    <th>Имя покупателя</th>
    <th>Дата покупки</th>
    </thead>
    <tbody>
    <c:forEach var="entry" items="${historyListMap}" varStatus="status">
        <tr>
            <td><em>${status.index+1}</em></td>
            <td>${entry.key.product.id}</td>
            <td><strong>${entry.key.product.title} ${entry.key.product.model}</strong></td>
            <td>${entry.key.product.price}€</td>
            <td>${entry.key.buyer.id}</td>
            <td><strong>${entry.key.buyer.name} ${entry.key.buyer.lastname}</strong></td>
            <td>${entry.key.takeOn}</td>
        </tr>
    </c:forEach>

    </tbody>

</table>