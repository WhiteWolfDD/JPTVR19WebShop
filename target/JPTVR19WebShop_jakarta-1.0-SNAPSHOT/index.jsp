<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<p class="w-100 text-center my-5">Добро пожаловать в "FurnitureShop | магазин мягкой мебели"!</p>

<div class="text-center" style="font-size: 48px"><strong id="time"></strong></div>

<script>
    function time() {
        const date = new Date();
        const hours = date.getHours() < 10 ? '0' + date.getHours() : date.getHours(),
            minutes = date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes(),
            seconds = date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds();
        document.querySelector('#time').innerHTML = hours + ' : ' + minutes + ' : ' + seconds;
    }

    setInterval(function () {
        time();
    }, 1);
</script>

<form method="post">
    <div class="ant-carousel">
        <div class="ant-carousel-hider">
            <ul class="ant-carousel-list">
                <c:forEach var="product" items="${listProducts}" varStatus="productId">
                    <div class="card m-2 mt-5" style="width: 13.5rem">
                        <img src="insertCover/${product.cover.path}" class="card-img-top" alt="..."
                             style="max-width: 12rem; max-height: 15rem; margin: 0 auto">
                        <div class="card-body">
                            <h5 class="card-title"
                                style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 12rem">${product.title} ${product.model}</h5>
                            <p class="card-text"
                               style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 12rem">Цена:
                                <strong>${product.price}€</strong></p>
                            <p class="card-text">Осталось: <strong><i>${product.count}</i> шт.</strong></p>
                            <div class="d-flex flex-nowrap justify-content-between">
                                <button type="button" class="btn btn-primary" data-bs-target="addToBag${productId.count}"
                                        id="addToBagButton${productId.count}">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                         class="bi bi-bag" viewBox="0 0 16 16">
                                        <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"></path>
                                    </svg>
                                </button>
                                <form action="buyProduct">
                                    <a href="buyProduct?productId=${productId.count}"
                                       data-bs-target="#buyProductConfirmation${productId.index}" data-bs-toggle="modal"
                                       id="confirmationButton${productId.count}" class="btn btn-primary">Купить сразу</a>
                                </form>
                            </div>
                            <div class="w-100 mt-2">
                                <button type="button" data-bs-target="#exampleModal${productId.count}" data-bs-toggle="modal"
                                        id="viewDetailButton${productId.count}"
                                        class="btn btn-outline-primary w-100">Смотреть
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="exampleModal${productId.count}" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Описание товара:
                                        "<i>${product.title} ${product.model}</i>"
                                    </h5>
                                    <button type="button" class="btn-close"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p>${product.description}</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Закрыть
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="buyProductConfirmation${productId.index}" tabindex="-1"
                         aria-labelledby="buyProductConfirmationModal"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="buyProductConfirmationModal">Подтверждение покупки</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p>Вы уверены, что хотите купить товар "<strong>${product.title} ${product.model}</strong>" за
                                        <strong>${product.price}</strong>€</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Нет</button>
                                    <a href="buyProduct?productId=${productId.count}" type="button" class="btn btn-primary">Да</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </ul>
        </div>
        <div class="ant-carousel-arrow-left"></div>
        <div class="ant-carousel-arrow-right"></div>
        <div class="ant-carousel-dots"></div>
    </div>
</form>

<style>
    .ant-carousel {
        margin: 50px auto auto;
        padding-top: 10px;
        background-color: white;
    }

    .ant-carousel-element {
        width: 240px;
    }

    /* General styles */
    .ant-carousel {
        width: 722.5px;
        position: relative;
    }

    .ant-carousel-hider {
        overflow: hidden;
    }

    .ant-carousel-list {
        width: auto;
        margin: 0;
        padding: 0;
        list-style-type: none;
        display: flex;
        justify-content: flex-start;
    }

    .ant-carousel-element {
        display: block;
        flex: 0 0 auto;
    }

    /* Navigation item styles */
    div.ant-carousel-arrow-left,
    div.ant-carousel-arrow-right {
        width: 22px;
        height: 40px;
        position: absolute;
        cursor: pointer;
        opacity: 0.6;
        z-index: 32;
    }

    div.ant-carousel-arrow-left {
        left: -40px;
        top: 40%;
        display: block;
        background: url("http://pvbk.spb.ru/inc/carousel/ant-files/ant-arrow-left.png") no-repeat;
    }

    div.ant-carousel-arrow-right {
        right: -40px;
        top: 40%;
        display: block;
        background: url("http://pvbk.spb.ru/inc/carousel/ant-files/ant-arrow-right.png") no-repeat;
    }

    div.ant-carousel-arrow-left:hover {
        opacity: 1.0;
    }

    div.ant-carousel-arrow-right:hover {
        opacity: 1.0;
    }

    div.ant-carousel-dots {
        width: 100%;
        height: auto;
        position: absolute;
        left: 0;
        bottom: -30px;
        z-index: 30;
        text-align: center;
    }

    span.ant-dot {
        width: 10px;
        height: 10px;
        margin: 5px 7px;
        padding: 0;
        display: inline-block;
        background-color: #BBB;
        border-radius: 5px;
        cursor: pointer;
    }
</style>

<script>
    function Ant(crslId) {

        let id = document.getElementById(crslId);
        if (id) {
            this.crslRoot = id
        } else {
            this.crslRoot = document.querySelector('.ant-carousel')
        }

        // Carousel objects
        this.crslList = this.crslRoot.querySelector('.ant-carousel-list');
        this.crslElements = this.crslList.querySelectorAll('.ant-carousel-element');
        this.crslElemFirst = this.crslList.querySelector('.ant-carousel-element');
        this.leftArrow = this.crslRoot.querySelector('div.ant-carousel-arrow-left');
        this.rightArrow = this.crslRoot.querySelector('div.ant-carousel-arrow-right');
        this.indicatorDots = this.crslRoot.querySelector('div.ant-carousel-dots');

        // Initialization
        this.options = Ant.defaults;
        Ant.initialize(this)
    }

    Ant.defaults = {

        // Default options for the carousel
        elemVisible: 3, // Кол-во отображаемых элементов в карусели
        loop: true,     // Бесконечное зацикливание карусели
        auto: true,     // Автоматическая прокрутка
        interval: 5000, // Интервал между прокруткой элементов (мс)
        speed: 750,     // Скорость анимации (мс)
        touch: true,    // Прокрутка  прикосновением
        arrows: true,   // Прокрутка стрелками
        dots: true      // Индикаторные точки
    };

    Ant.prototype.elemPrev = function (num) {
        num = num || 1;

        if (this.options.dots) this.dotOn(this.currentElement);
        this.currentElement -= num;
        if (this.currentElement < 0) this.currentElement = this.dotsVisible - 1;
        if (this.options.dots) this.dotOff(this.currentElement);

        if (!this.options.loop) {  // сдвиг вправо без цикла
            this.currentOffset += this.elemWidth * num;
            this.crslList.style.marginLeft = this.currentOffset + 'px';
            if (this.currentElement == 0) {
                this.leftArrow.style.display = 'none';
                this.touchPrev = false
            }
            this.rightArrow.style.display = 'block';
            this.touchNext = true
        } else {                    // сдвиг вправо с циклом
            let elm, buf, this$ = this;
            for (let i = 0; i < num; i++) {
                elm = this.crslList.lastElementChild;
                buf = elm.cloneNode(true);
                this.crslList.insertBefore(buf, this.crslList.firstElementChild);
                this.crslList.removeChild(elm)
            }
            this.crslList.style.marginLeft = '-' + this.elemWidth * num + 'px';
            let compStyle = window.getComputedStyle(this.crslList).marginLeft;
            this.crslList.style.cssText = 'transition:margin ' + this.options.speed + 'ms ease;';
            this.crslList.style.marginLeft = '0px';
            setTimeout(function () {
                this$.crslList.style.cssText = 'transition:none;'
            }, this.options.speed)
        }
    };

    Ant.prototype.elemNext = function (num) {
        num = num || 1;

        if (this.options.dots) this.dotOn(this.currentElement);
        this.currentElement += num;
        if (this.currentElement >= this.dotsVisible) this.currentElement = 0;
        if (this.options.dots) this.dotOff(this.currentElement);

        if (!this.options.loop) {  // сдвиг влево без цикла
            this.currentOffset -= this.elemWidth * num;
            this.crslList.style.marginLeft = this.currentOffset + 'px';
            if (this.currentElement == this.dotsVisible - 1) {
                this.rightArrow.style.display = 'none';
                this.touchNext = false
            }
            this.leftArrow.style.display = 'block';
            this.touchPrev = true
        } else {                    // сдвиг влево с циклом
            let elm, buf, this$ = this;
            this.crslList.style.cssText = 'transition:margin ' + this.options.speed + 'ms ease;';
            this.crslList.style.marginLeft = '-' + this.elemWidth * num + 'px';
            setTimeout(function () {
                this$.crslList.style.cssText = 'transition:none;';
                for (let i = 0; i < num; i++) {
                    elm = this$.crslList.firstElementChild;
                    buf = elm.cloneNode(true);
                    this$.crslList.appendChild(buf);
                    this$.crslList.removeChild(elm)
                }
                this$.crslList.style.marginLeft = '0px'
            }, this.options.speed)
        }
    };

    Ant.prototype.dotOn = function (num) {
        this.indicatorDotsAll[num].style.cssText = 'background-color:#BBB; cursor:pointer;'
    };

    Ant.prototype.dotOff = function (num) {
        this.indicatorDotsAll[num].style.cssText = 'background-color:#556; cursor:default;'
    };

    Ant.initialize = function (that) {

        // Constants
        that.elemCount = that.crslElements.length; // Количество элементов
        that.dotsVisible = that.elemCount;         // Число видимых точек
        let elemStyle = window.getComputedStyle(that.crslElemFirst);
        that.elemWidth = that.crslElemFirst.offsetWidth +  // Ширина элемента (без margin)
            parseInt(elemStyle.marginLeft) + parseInt(elemStyle.marginRight);

        // Variables
        that.currentElement = 0;
        that.currentOffset = 0;
        that.touchPrev = true;
        that.touchNext = true;
        let xTouch, yTouch, xDiff, yDiff, stTime, mvTime;
        let bgTime = getTime();

        // Functions
        function getTime() {
            return new Date().getTime();
        }

        function setAutoScroll() {
            that.autoScroll = setInterval(function () {
                let fnTime = getTime();
                if (fnTime - bgTime + 10 > that.options.interval) {
                    bgTime = fnTime;
                    that.elemNext()
                }
            }, that.options.interval)
        }

        // Start initialization
        if (that.elemCount <= that.options.elemVisible) {   // Отключить навигацию
            that.options.auto = false;
            that.options.touch = false;
            that.options.arrows = false;
            that.options.dots = false;
            that.leftArrow.style.display = 'none';
            that.rightArrow.style.display = 'none'
        }

        if (!that.options.loop) {       // если нет цикла - уточнить количество точек
            that.dotsVisible = that.elemCount - that.options.elemVisible + 1;
            that.leftArrow.style.display = 'none';  // отключить левую стрелку
            that.touchPrev = false;    // отключить прокрутку прикосновением вправо
            that.options.auto = false; // отключить автопркрутку
        } else if (that.options.auto) {   // инициализация автопрокруки
            setAutoScroll();
            // Остановка прокрутки при наведении мыши на элемент
            that.crslList.addEventListener('mouseenter', function () {
                clearInterval(that.autoScroll)
            }, false);
            that.crslList.addEventListener('mouseleave', setAutoScroll, false)
        }

        if (that.options.touch) {   // инициализация прокрутки прикосновением
            that.crslList.addEventListener('touchstart', function (e) {
                xTouch = parseInt(e.touches[0].clientX);
                yTouch = parseInt(e.touches[0].clientY);
                stTime = getTime()
            }, false);
            that.crslList.addEventListener('touchmove', function (e) {
                if (!xTouch || !yTouch) return;
                xDiff = xTouch - parseInt(e.touches[0].clientX);
                yDiff = yTouch - parseInt(e.touches[0].clientY);
                mvTime = getTime();
                if (Math.abs(xDiff) > 15 && Math.abs(xDiff) > Math.abs(yDiff) && mvTime - stTime < 75) {
                    stTime = 0;
                    if (that.touchNext && xDiff > 0) {
                        bgTime = mvTime;
                        that.elemNext()
                    } else if (that.touchPrev && xDiff < 0) {
                        bgTime = mvTime;
                        that.elemPrev()
                    }
                }
            }, false)
        }

        if (that.options.arrows) {  // инициализация стрелок
            if (!that.options.loop) that.crslList.style.cssText =
                'transition:margin ' + that.options.speed + 'ms ease;';
            that.leftArrow.addEventListener('click', function () {
                let fnTime = getTime();
                if (fnTime - bgTime > that.options.speed) {
                    bgTime = fnTime;
                    that.elemPrev()
                }
            }, false);
            that.rightArrow.addEventListener('click', function () {
                let fnTime = getTime();
                if (fnTime - bgTime > that.options.speed) {
                    bgTime = fnTime;
                    that.elemNext()
                }
            }, false)
        } else {
            that.leftArrow.style.display = 'none';
            that.rightArrow.style.display = 'none'
        }

        if (that.options.dots) {  // инициализация индикаторных точек
            let sum = '', diffNum;
            for (let i = 0; i < that.dotsVisible; i++) {
                sum += '<span class="ant-dot"></span>'
            }
            that.indicatorDots.innerHTML = sum;
            that.indicatorDotsAll = that.crslRoot.querySelectorAll('span.ant-dot');
            // Назначаем точкам обработчик события 'click'
            for (let n = 0; n < that.dotsVisible; n++) {
                that.indicatorDotsAll[n].addEventListener('click', function () {
                    diffNum = Math.abs(n - that.currentElement);
                    if (n < that.currentElement) {
                        bgTime = getTime();
                        that.elemPrev(diffNum)
                    } else if (n > that.currentElement) {
                        bgTime = getTime();
                        that.elemNext(diffNum)
                    }
                    // Если n == that.currentElement ничего не делаем
                }, false)
            }
            that.dotOff(0);  // точка[0] выключена, остальные включены
            for (let i = 1; i < that.dotsVisible; i++) {
                that.dotOn(i)
            }
        }
    };

    new Ant();
</script>
