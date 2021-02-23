<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<nav class="navbar navbar-dark navbar-expand-lg" style="background-color: #EB984E">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">FurnitureShop | магазин мягкой мебели</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link <c:if test="${activeAddProduct}">active</c:if>" aria-current="page"
                   href="addProduct">Добавить товар</a>
                <a class="nav-link <c:if test="${activeListProducts}">active</c:if>" href="listProducts">Список
                    имеющихся товаров</a>
                <a class="nav-link <c:if test="${activeListBuyers}">active</c:if>" href="listBuyers">Список
                    покупателей</a>
                <a class="nav-link <c:if test="${activeBuyProduct}">active</c:if>" href="buyProductForm">Купить
                    товар</a>
                <a class="nav-link <c:if test="${activeListHistory}">active</c:if>" href="showBoughtProduct">Список
                    проданных товаров</a>
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

<script type="text/javascript">
    $('.center').slick({
        centerMode: true,
        centerPadding: '60px',
        slidesToShow: 3,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '40px',
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 480,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '40px',
                    slidesToShow: 1
                }
            }
        ]
    });
</script>