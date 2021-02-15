<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<div style="margin-left: 1rem">
    <h1>Список читателей</h1>
    <p>Всего пользователей: ${usersCount}<p>
</div>
<table class="table table-striped">
    <thead>
    <th>№</th>
    <th>Id</th>
    <th>Имя</th>
    <th>Фамилия</th>
    <th>E-mail</th>
    <th>Баланс</th>
    <th>Логин</th>
    <th>Роль</th>
    <th>Активность</th>
    <th></th>
    </thead>
    <tbody>
    <c:forEach var="entry" items="${usersMapWithArrayRoles}" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>${entry.key.id}</td>
            <td>${entry.key.buyer.name}</td>
            <td>${entry.key.buyer.lastname}</td>
            <td>${entry.key.buyer.email}</td>
            <td>${entry.key.buyer.money}€</td>
            <td>${entry.key.login}</td>
            <td><c:if test="${entry.value[0] ne ''}">${entry.value[0]}</c:if></td>
            <td><strong>Да</strong></td>
            <td><a class="btn bg-primary text-white" href="editBuyer?userId=${entry.key.id}">Изменить</a></td>
        </tr>
    </c:forEach>

    </tbody>

</table>