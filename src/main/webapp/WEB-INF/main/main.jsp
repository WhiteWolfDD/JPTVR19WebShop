<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<nav class="navbar navbar-dark navbar-expand-lg" style="background-color: #EB984E">
    <div class="container-fluid">
        <a class="navbar-brand" href="index">FurnitureShop | магазин мягкой мебели</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 1rem">
            <div class="navbar-nav w-100">
                <c:choose>
                    <c:when test="${role eq 'ADMIN'}">
                        <a class="nav-link <c:if test="${activeAddProduct}">active</c:if>"
                           aria-current="page" href="addProduct">Добавить товар</a>
                        <a class="nav-link <c:if test="${activeListProducts}">active</c:if>" href="listProducts">Список
                            товаров</a>
                        <a class="nav-link <c:if test="${activeListBuyers}">active</c:if>" href="listBuyers">Список
                            покупателей</a>
                        <a class="nav-link <c:if test="${activeBuyProduct}">active</c:if>" href="listProducts">Купить
                            товар</a>
                        <a class="nav-link <c:if test="${activeListHistory}">active</c:if>" href="showBoughtProduct">Список
                            проданных товаров</a>
                        <div class="navbar-nav" style="margin-left: auto; margin-right: 2rem">

                            <div class="dropdown d-flex">
                                <a type="button" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    <c:if test="${user.buyer.avatar.path eq null}">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                             fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                                        </svg>
                                    </c:if>
                                    <c:if test="${user.buyer.avatar.path ne null}">
                                        <img src="insertAvatar/${user.buyer.avatar.path}" alt="" width="25" height="25"
                                             style="border-radius: 90px">
                                    </c:if>
                                </a>

                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start" style="left: -90px"
                                    aria-labelledby="dropdownMenuLink">
                                    <li class="text-center">
                                        <span>Вы вошли как:<br><strong>${user.login}</strong><br><span
                                                class="text-muted"
                                                style="font-size: 14px">ID:${user.buyer.id}</span></span>
                                    </li>
                                    <li><span><hr></span></li>
                                    <li><a class="dropdown-item" href="adminForm">Панель админа</a></li>
                                    <li><span><hr></span></li>
                                    <li><a class="dropdown-item" href="checkProfile">Мой профиль</a></li>
                                    <li><span><hr></span></li>
                                    <li><a class="dropdown-item" href="#" style="font-size: 20px; font-weight: 700">${user.buyer.money}€
                                        <svg style="margin-left: 2.5rem; margin-bottom: 3px" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash-stack" viewBox="0 0 16 16">
                                            <path d="M1 3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1H1zm7 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path>
                                            <path d="M0 5a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V5zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V7a2 2 0 0 1-2-2H3z"></path>
                                        </svg>
                                    </a></li>
                                    <li><a class="dropdown-item" href="#">Мои покупки</a></li>
                                    <li>
                                        <div class="d-flex flex-row justify-content-between">
                                            <a class="dropdown-item" href="shoppingCartForm">Моя корзина
                                                <svg style="margin-left: 0.75rem; margin-bottom: 3px"
                                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
                                                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </li>
                                    <li><span><hr></span></li>
                                    <li>
                                        <div class="d-flex flex-row justify-content-between">
                                            <a class="dropdown-item" href="editProfileForm">Настройки
                                                <svg style="margin-left: 2rem; margin-bottom: 3px"
                                                     xmlns="http://www.w3.org/2000/svg"
                                                     width="15" height="15"
                                                     fill="currentColor" class="bi bi-gear-fill"
                                                     viewBox="0 0 16 16">
                                                    <path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </li>
                                    <li><a class="dropdown-item" href="checkQuestions">Помощь</a></li>
                                    <li>
                                        <div class="d-flex flex-row justify-content-between">
                                            <a class="dropdown-item" href="logout">Выйти
                                                <svg style="margin-left: 4rem; margin-bottom: 3px"
                                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi bi-door-open-fill"
                                                     viewBox="0 0 16 16">
                                                    <path d="M1.5 15a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2.5A1.5 1.5 0 0 0 11.5 1H11V.5a.5.5 0 0 0-.57-.495l-7 1A.5.5 0 0 0 3 1.5V15H1.5zM11 2h.5a.5.5 0 0 1 .5.5V15h-1V2zm-2.5 8c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </c:when>

                    <c:when test="${role eq 'MANAGER'}">
                        <a class="nav-link <c:if test="${activeAddProduct}">active</c:if>"
                           aria-current="page" href="addProduct">Добавить товар</a>
                        <a class="nav-link <c:if test="${activeBuyProduct}">active</c:if>" href="listProducts">Купить
                            товар</a>
                        <a class="nav-link <c:if test="${activeListProducts}">active</c:if>" href="listProducts">Список
                            товаров</a>
                        <div class="navbar-nav" style="margin-left: auto; margin-right: 1rem">
                            <div class="dropdown d-flex">
                                <a type="button" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    <c:if test="${user.buyer.avatar.path eq null}">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                             fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                                        </svg>
                                    </c:if>
                                    <c:if test="${user.buyer.avatar.path ne null}">
                                        <img src="insertAvatar/${user.buyer.avatar.path}" alt="" width="30" height="30"
                                             style="border-radius: 90px">
                                    </c:if>
                                </a>

                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start" style="left: -90px"
                                    aria-labelledby="dropdownMenuLink">
                                    <li class="text-center">
                                        <span>Вы вошли как:<br><strong>${user.login}</strong><br><span
                                                class="text-muted"
                                                style="font-size: 14px">ID:${user.buyer.id}</span></span>
                                    </li>
                                    <li><span><hr></span></li>
                                    <li><a class="dropdown-item" href="checkProfile">Мой профиль</a></li>
                                    <li><a class="dropdown-item" href="#">Мои покупки</a></li>
                                    <li><span><hr></span></li>
                                    <li>
                                        <div class="d-flex flex-row justify-content-between">
                                            <a class="dropdown-item" href="editProfileForm">Настройки
                                                <svg style="margin-left: 2rem; margin-bottom: 3px"
                                                     xmlns="http://www.w3.org/2000/svg"
                                                     width="15" height="15"
                                                     fill="currentColor" class="bi bi-gear-fill"
                                                     viewBox="0 0 16 16">
                                                    <path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </li>

                                    <li><a class="dropdown-item" href="#">Помощь</a></li>
                                    <li>
                                        <div class="d-flex flex-row justify-content-between">
                                            <a class="dropdown-item" href="logout">Выйти
                                                <svg style="margin-left: 4rem; margin-bottom: 3px"
                                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi bi-door-open-fill"
                                                     viewBox="0 0 16 16">
                                                    <path d="M1.5 15a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2.5A1.5 1.5 0 0 0 11.5 1H11V.5a.5.5 0 0 0-.57-.495l-7 1A.5.5 0 0 0 3 1.5V15H1.5zM11 2h.5a.5.5 0 0 1 .5.5V15h-1V2zm-2.5 8c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </c:when>

                    <c:when test="${role eq 'BUYER'}">
                        <a class="nav-link <c:if test="${activeBuyProduct}">active</c:if>" href="listProducts">Купить
                            товар</a>
                        <a class="nav-link <c:if test="${activeListProducts}">active</c:if>" href="listProducts">Список
                            товаров</a>
                        <div class="navbar-nav" style="margin-left: auto; margin-right: 1rem">
                            <div class="dropdown d-flex">
                                <a type="button" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    <c:if test="${user.buyer.avatar.path eq null}">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                             fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                                        </svg>
                                    </c:if>
                                    <c:if test="${user.buyer.avatar.path ne null}">
                                        <img src="insertAvatar/${user.buyer.avatar.path}" alt="" width="30" height="30"
                                             style="border-radius: 90px">
                                    </c:if>
                                </a>

                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start" style="left: -90px"
                                    aria-labelledby="dropdownMenuLink">
                                    <li class="text-center">
                                        <span>Вы вошли как:<br><strong>${user.login}</strong><br><span
                                                class="text-muted"
                                                style="font-size: 14px">ID:${user.buyer.id}</span></span>
                                    </li>

                                    <li><span><hr></span></li>

                                    <li><a class="dropdown-item" href="checkProfile">Мой профиль</a></li>

                                    <li><a class="dropdown-item" href="#">Мои покупки</a></li>

                                    <li><span><hr></span></li>

                                    <li>
                                        <div class="d-flex flex-row justify-content-between">
                                            <a class="dropdown-item" href="editProfileForm">Настройки
                                                <svg style="margin-left: 2rem; margin-bottom: 3px"
                                                     xmlns="http://www.w3.org/2000/svg"
                                                     width="15" height="15"
                                                     fill="currentColor" class="bi bi-gear-fill"
                                                     viewBox="0 0 16 16">
                                                    <path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </li>

                                    <li><a class="dropdown-item" href="#">Помощь</a></li>

                                    <li>
                                        <div class="d-flex flex-row justify-content-between">
                                            <a class="dropdown-item" href="logout">Выйти
                                                <svg style="margin-left: 4rem; margin-bottom: 3px"
                                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi bi-door-open-fill"
                                                     viewBox="0 0 16 16">
                                                    <path d="M1.5 15a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2.5A1.5 1.5 0 0 0 11.5 1H11V.5a.5.5 0 0 0-.57-.495l-7 1A.5.5 0 0 0 3 1.5V15H1.5zM11 2h.5a.5.5 0 0 1 .5.5V15h-1V2zm-2.5 8c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </c:when>

                    <c:otherwise>
                        <a class="nav-link <c:if test="${activeListProducts}">active</c:if>" href="listProducts">Список
                            товаров</a>
                        <div class="navbar-nav" style="margin-left: auto">
                            <a class="nav-link <c:if test="${activeEnter}">active</c:if>"
                               href="loginForm">Войти</a>
                            <a class="nav-link <c:if test="${activeRegistration}">active</c:if>"
                               href="registrationForm">Регистрация</a>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</nav>