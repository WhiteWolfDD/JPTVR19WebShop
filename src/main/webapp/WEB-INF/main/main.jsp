<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">FurnitureShop | магазин мягкой мебели</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse p-2" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link <c:if test="${activeAddProduct}">active</c:if>" aria-current="page"
                   href="addProduct">Добавить товар</a>
                <a class="nav-link <c:if test="${activeListProducts}">active</c:if>" href="listProducts">Список
                    товаров</a>
                <a class="nav-link <c:if test="${activeListBuyers}">active</c:if>" href="listBuyers">Список
                    покупателей</a>
                <a class="nav-link <c:if test="${activeBuyProductForm}">active</c:if>" href="buyProductForm">Купить
                    товар</a>
                <a class="nav-link <c:if test="${activeBoughtProducts}">active</c:if>" href="showBoughtProduct">Проданные товары</a>
            </div>
            <div class="navbar-nav" style="margin-left: auto">
                <a class="nav-link <c:if test="${activeAdminPanel}">active</c:if>" href="adminForm">Админ панель</a>
                <a class="nav-link <c:if test="${activeEnter}">active</c:if>" href="loginForm">Войти</a>
                <a class="nav-link <c:if test="${activeOut}">active</c:if>" href="logout">Выйти</a>
                <a class="nav-link <c:if test="${activeRegistration}">active</c:if>"
                   href="registrationForm">Регистрация</a>
            </div>
        </div>
    </div>
</nav>