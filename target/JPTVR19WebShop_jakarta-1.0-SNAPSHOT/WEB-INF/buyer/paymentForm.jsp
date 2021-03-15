<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">
    <div class="row">
        <div class="col-md-4 order-md-2 mb-4">

            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Ваша корзина</span>
            </h4>

            <ul class="list-group mb-3">
                <c:forEach var="product" items="${cartList}" varStatus="productId">
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0">${product.title} ${product.model}</h6>
                            <small class="text-muted">${product.description}</small>
                        </div>
                        <span class="text-muted">${product.price}€</span>
                    </li>
                </c:forEach>

                <li class="list-group-item d-flex justify-content-between bg-light">
                    <div class="text-success">
                        <h6 class="my-0">Промо-код</h6>
                        <small>JPTVR19</small>
                    </div>
                    <span class="text-success">-5€</span>
                </li>

                <li class="list-group-item d-flex justify-content-between">
                    <span>Total (USD)</span>
                    <span id="totalPrice" name="totalPrice" class="font-weight-bold">${totalPrice}</span>
                </li>
            </ul>
        </div>

        <div class="col-md-8 order-md-1">
            <h4 class="mb-3">Платежный адрес</h4>
            <form class="needs-validation" novalidate="">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="name">Имя<span class="required" style="color: red">*</span></label>
                        <input type="text" class="form-control" id="name" placeholder="" value="${user.buyer.name}"
                               required="required">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="lastname">Фамилия<span class="required" style="color: red">*</span></label>
                        <input type="text" class="form-control" id="lastname"
                               value="${user.buyer.lastname}" required="required">
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Email<span class="required" style="color: red">*</span><span class="text-muted"></span></label>
                    <input type="email" class="form-control" id="email"
                           value="${user.buyer.email}" required="required">
                </div>

                <div class="row">
                    <div class="col-md-5 mb-3">
                        <label for="address">Адрес<span class="required" style="color: red">*</span></label>
                        <input type="text" class="form-control" id="address"
                               value="${user.buyer.address}" required="required">
                    </div>

                    <div class="col-md-3 mb-3">
                        <label for="zip">Zip-код<span class="required" style="color: red">*</span></label>
                        <input type="text" class="form-control" id="zip" required="required">
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address2">Адрес 2<span class="text-muted"> (необязательно)</span></label>
                    <input type="text" class="form-control" id="address2">
                </div>

                <hr class="mb-4">

                <div class="flex-row d-flex justify-content-between">
                    <h4 class="mb-3">Оплата</h4>
                    <a href="#" class="btn btn-outline-warning" style="outline-color: #EB984E; padding-top: 0.5rem">Заплатить балансом аккаунта</a>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="cc-name">Имя владельца карты (Необязательно)</label>
                        <input type="text" class="form-control" id="cc-name" placeholder="Sergei Petrov">
                        <small class="text-muted">Полное имя написано на карте.</small>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="cc-number">Номер карты<span class="required" style="color: red">*</span></label>
                        <input type="text" class="form-control" id="cc-number" placeholder="1234 1234 1234 1234" required="required">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <label for="cc-expiration">Срок действия<span class="required" style="color: red">*</span></label>
                        <input type="text" class="form-control" id="cc-expiration" placeholder="ММ / ГГ" required="required">
                    </div>

                    <div class="col-md-3 mb-3">
                        <label for="cc-expiration">CVV<span class="required" style="color: red">*</span></label>
                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required="required">
                    </div>
                </div>

                <hr class="mb-4">

                <button class="btn btn-lg btn-block" style="background-color: #EB984E" type="submit">Продолжить</button>
            </form>
        </div>
    </div>
</div>