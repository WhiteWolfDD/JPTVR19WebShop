<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<h1 class="text-center">Список покупателей</h1>
<p class="text-center">Всего пользователей: <strong>${usersCount}</strong><p>
<table class="table table-striped table-hover w-75 mx-auto mt-5">
    <thead class="table table-dark text-center">
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
    <th></th>
    </thead>
    <tbody class="text-center table-dark table-striped">
    <c:forEach var="entry" items="${usersMapWithArrayRoles}" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>${entry.key.id}</td>
            <td><c:if test="${entry.key.buyer.name eq null}"><p class="text-muted">Недоступно</p></c:if> <c:if test="${entry.key.buyer.name != null}">${entry.key.buyer.name}</c:if></td>
            <td><c:if test="${entry.key.buyer.lastname eq null}"><p class="text-muted">Недоступно</p></c:if> <c:if test="${entry.key.buyer.lastname != null}">${entry.key.buyer.lastname}</c:if></td>
            <td>${entry.key.buyer.email}</td>
            <td><c:if test="${entry.key.buyer.money eq null}"><p class="text-muted">Недоступно</p></c:if> <c:if test="${entry.key.buyer.money != null}">${entry.key.buyer.money}€</c:if></td>
            <td>${entry.key.login}</td>
            <td><c:if test="${entry.value[0] ne ''}">${entry.value[0]}</c:if></td>
            <td><em><strong>Да</strong></em></td>
            <td><a class="btn text-white" style="background-color: #EB984E" href="editBuyerForm?userId=${entry.key.id}">Изменить</a></td>
            <th><a class="btn text-white" style="background-color: #EB984E" href="#">Профиль</a></th>
        </tr>
    </c:forEach>

    </tbody>

</table>