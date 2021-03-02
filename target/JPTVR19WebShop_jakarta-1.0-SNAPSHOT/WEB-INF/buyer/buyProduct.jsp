<%@ page import="entity.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="cons" class="entity.Product" scope="session"/>

<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
          integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
          integrity="sha512-PgQMlq+nqFLV4ylk1gwUOgm6CtIIXkKwaIHp/PAIWHzig/lKZSEGKEysh0TCVbHJXCLN7WetD8TFecIky75ZfQ=="
          crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body class="bg-light">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-10 col-11 mx-auto">
            <div class="row mt-5 gx-3">
                <!-- left side div -->
                <div class="col-md-12 col-lg-8 col-11 mx-auto main_cart mb-lg-0 mb-5 shadow">
                    <c:set var="cart_num" value="${fn:length(cartList)}"/>
                    <c:if test="${cart_num < 1}">
                        <p class="py-1 m-2 font-weight-bold">Корзина пуста</p>
                    </c:if>
                    <c:forEach var="cart" begin="1" end="${cart_num}" step="999999" items="${cartList}">
                        <h2 class="py-4 font-weight-bold">Кол-во товаров в корзине (${cart_num})</h2>
                    </c:forEach>
                    <c:forEach var="cart" items="${cartList}" varStatus="cartId">
                            <div class="card p-4">
                                <div class="row">
                                    <!-- cart images div -->
                                    <div class="col-md-5 col-11 mx-auto bg-light d-flex justify-content-center align-items-center shadow cart_img">
                                        <img src="insertCover/${cart.product.cover.path}" class="card-img-top"
                                             alt="cart img">
                                    </div>


                                    <!-- cart cart details -->
                                    <div class="col-md-7 col-11 mx-auto px-4 mt-2">
                                        <div class="row">
                                            <!-- cart name  -->
                                            <div class="col-6 card-title">
                                                <h1 class="mb-4 cart_name">
                                                        ${cart.title}
                                                </h1>
                                                    ${cart.description}
                                            </div>
                                            <!-- quantity inc dec -->
                                            <div class="col-6" id="Quantity${cartId.count}">
                                                <ul class="pagination justify-content-end set_quantity" id="Quantity${cartId.count}">
                                                    <li class="page-item">
                                                        <button type="button"
                                                                class="page-link"
                                                                onclick="decreaseNumber('textbox','itemval')">
                                                            <i class="fas fa-minus"></i></button>
                                                    </li>
                                                    <li class="page-item"><input type="text" name="" class="page-link"
                                                                                 value="0" id="textbox" readonly>
                                                    </li>
                                                    <li class="page-item">
                                                        <button type="button"
                                                                class="page-link"
                                                                onclick="increaseNumber('textbox','itemval')"><i
                                                                class="fas fa-plus"></i></button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- //remover move and price -->
                                        <div class="row">
                                            <div class="col-8 d-flex justify-content-between remove_wish">
                                                <p>REMOVE ITEM</p>
                                                <p>MOVE TO WISH LIST </p>
                                            </div>
                                            <div class="col-4 d-flex justify-content-end price_money">
                                                <h3 hidden><span id="itemval"></span></h3>
                                                <h3>${cart.price}€</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <hr/>
                    </c:forEach>
                </div>
                <!-- right side div -->
                <div class="col-md-12 col-lg-4 col-11 mx-auto mt-lg-0 mt-md-5">
                    <div class="right_side p-3 shadow bg-white">
                        <h2 class="cart_name mb-5">The Total Amount Of</h2>
                        <div class="price_indiv d-flex justify-content-between">
                            <p>Product amount</p>
                            <p><span id="cart_total_amt">0.00</span>€</p>
                        </div>
                        <div class="price_indiv d-flex justify-content-between">
                            <p>Shipping Charge</p>
                            <p><span id="shipping_charge">3</span>€</p>
                        </div>
                        <hr/>
                        <div class="total-amt d-flex justify-content-between font-weight-bold">
                            <p>The total amount of (including VAT)</p>
                            <p><span id="total_cart_amt">0.00</span>€</p>
                        </div>
                        <button class="btn btn-primary text-uppercase">Checkout</button>
                    </div>
                    <!-- discount code part -->
                    <div class="discount_code mt-3 shadow">
                        <div class="card">
                            <div class="card-body">
                                <a class="d-flex justify-content-between" data-toggle="collapse" href="#collapseExample"
                                   aria-expanded="false" aria-controls="collapseExample">
                                    Add a discount code (optional)
                                    <span><i class="fas fa-chevron-down pt-1"></i></span>
                                </a>
                                <div class="collapse" id="collapseExample">
                                    <div class="mt-3">
                                        <input type="text" name="" id="discount_code1"
                                               class="form-control font-weight-bold"
                                               placeholder="Enter the discount code">
                                        <small id="error_trw" class="text-dark mt-3">code is JPTVR19</small>
                                    </div>
                                    <button class="btn btn-primary btn-sm mt-3" id="discount_button"
                                            onclick="discount_code()">Apply
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- discount code ends -->
                    <div class="mt-3 shadow p-3 bg-white">
                        <div class="pt-4">
                            <h5 class="mb-4">Expected delivery date</h5>
                            <p>July 27th 2020 - July 29th 2020</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- Popper.js first, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
        integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
        crossorigin="anonymous"></script>

<script type="text/javascript">

    <c:forEach var="product" items="${productList}">
    var cart_product_price = document.getElementById('${product.price}')
    var cart_product_count = document.getElementById('${product.count}')
    </c:forEach>

    var cart_total_amt = document.getElementById('cart_total_amt');
    var shipping_charge = document.getElementById('shipping_charge');
    var total_cart_amt = document.getElementById('total_cart_amt');
    var discountCode = document.getElementById('discount_code1');
    const decreaseNumber = (incdec, itemprice) => {
        var itemval = document.getElementById(incdec);
        var itemprice = document.getElementById(itemprice);
        console.log(itemprice.innerHTML);
// console.log(itemval.value);
        if (itemval.value <= 0) {
            itemval.value = 0;
            alert('Negative quantity not allowed');
        } else {
            itemval.value = parseInt(itemval.value) - 1;
            itemval.style.background = '#fff';
            itemval.style.color = '#000';
            itemprice.innerHTML = parseInt(itemprice.innerHTML) - cart_product_price;
            cart_total_amt.innerHTML = parseInt(cart_total_amt.innerHTML) - cart_product_price;
            total_cart_amt.innerHTML = parseInt(cart_total_amt.innerHTML) + parseInt(shipping_charge.innerHTML);
        }
    }
    const increaseNumber = (incdec, itemprice) => {
        var itemval = document.getElementById(incdec);
        var itemprice = document.getElementById(itemprice);
// console.log(itemval.value);
        if (itemval.value >= cart_product_count) {
            itemval.value = cart_product_count;
            alert('max ' + cart_product_count + ' allowed');
            itemval.style.background = 'red';
            itemval.style.color = '#fff';
        } else {
            itemval.value = parseInt(itemval.value) + 1;
            itemprice.innerHTML = parseInt(itemprice.innerHTML) + cart_product_price;
            cart_total_amt.innerHTML = parseInt(cart_total_amt.innerHTML) + cart_product_price;
            total_cart_amt.innerHTML = parseInt(cart_total_amt.innerHTML) + parseInt(shipping_charge.innerHTML);
        }
    }
    const discount_code = () => {
        let totalamtcurr = parseInt(total_cart_amt.innerHTML);
        let error_trw = document.getElementById('error_trw');
        if (discountCode.value === 'JPTVR19') {
            let newtotalamt = totalamtcurr - 15;
            total_cart_amt.innerHTML = newtotalamt;
            error_trw.innerHTML = "Hurray! code is valid";
            document.getElementById("discount_button").style.visibility = "hidden";
        } else {
            error_trw.innerHTML = "Try Again! Valid code is JPTVR19";
        }
    }
</script>
</body>
</html>