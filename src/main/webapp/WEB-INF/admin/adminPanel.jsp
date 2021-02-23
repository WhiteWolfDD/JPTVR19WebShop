<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<h3 class="w-100 m-2 text-center mt-5">Панель администратора</h3>

<form action="setRole" method="POST" class="mt-5">
    <div class="row mx-auto w-50 mt-5">
        <div class="col w-25 mx-auto">
            <select name="userId" class="mt-2 mx-auto w-50 form-select">
                <option value="" <c:if test="${userId == null}">selected</c:if>>Выберите пользователя</option>
                <c:forEach var="entry" items="${usersMap}">
                    <option value="${entry.key.id}"
                            <c:if test="${userId == entry.key.id}">selected</c:if>>${entry.key.buyer.name} ${entry.key.buyer.lastname},
                        Логин: ${entry.key.login}, роль: ${entry.value}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <div class="row mx-auto w-50">
        <div class="col w-25 mx-auto">
            <select name="roleId" class="mt-2 mx-auto w-50 form-select">
                <option value="">Выберите роль</option>
                <c:forEach var="r" items="${listRoles}">
                    <option value="${r.id}" <c:if test="${roleId eq r.id}"> selected </c:if>>
                            ${r.roleName}
                    </option>
                </c:forEach>
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col m-2 mt-5 text-center">
            <input type="submit" class="btn" style="background-color: #EB984E" value="Изменить роль пользователю">
        </div>
    </div>
</form>
