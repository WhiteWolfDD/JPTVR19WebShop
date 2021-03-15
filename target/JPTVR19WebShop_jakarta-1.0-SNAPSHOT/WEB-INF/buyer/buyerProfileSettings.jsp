<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<form action="editProfile">
    <div class="container light-style flex-grow-1 container-p-y">
        <h4 class="font-weight-bold py-3 mb-4 text-center">Настройки аккаунта "${buyer.name} ${buyer.lastname}"</h4>
        <div class="card overflow-hidden">
            <div class="row no-gutters row-bordered row-border-light">
                <div class="col-md-3 pt-0">
                    <div class="list-group list-group-flush account-settings-links">
                        <a class="list-group-item list-group-item-action active" data-toggle="list"
                           href="#account-general">Основные</a>
                        <c:forEach items="${listUsers}" varStatus="userId" var="user">
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                           href="#account-change-password${userId.index}">Смена пароля</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-info">Информация</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                           href="#account-social-links">Социальные сети</a>
                    </div>
                </div>

                <div class="col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="account-general">
                            <div class="card-body media align-items-center d-flex flex-row">
                                <c:if test="${buyer.avatar.path eq null}">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor"
                                         class="bi bi-question-circle-fill" viewBox="0 0 16 16">
                                        <path style="fill: #007bff"
                                              d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.496 6.033h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286a.237.237 0 0 0 .241.247zm2.325 6.443c.61 0 1.029-.394 1.029-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94 0 .533.425.927 1.01.927z"></path>
                                    </svg>
                                </c:if>

                                <c:if test="${buyer.avatar.path != null}">
                                    <img src="insertAvatar/${buyer.avatar.path}" alt="" width="80" height="80"
                                         id="image">
                                </c:if>

                                <div class="media-body d-flex flex-row " style="margin-left: 1rem; margin-top: 0.5rem">
                                    <div class="upload-file-container d-flex flex-column">
                                        <div class="upload-file-container-text">
                                            <label class="btn btn-outline-warning" href="uploadAvatar">
                                                Загрузить фото
                                                <input type="file" class="account-settings-fileinput">
                                            </label>

                                            <button type="button" href="#" class="btn btn-default md-btn-flat">
                                                Сбросить
                                            </button>
                                        </div>
                                        <div>
                                            <p class="text-light small mt-1">
                                                Поддержка JPG, PNG. Максимальный размер 800K
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                                <%--                            <div class="modal fade" id="uploadAvatarModal" tabindex="-1"--%>
                                <%--                                 aria-labelledby="uploadAvatarModalLabel"--%>
                                <%--                                 aria-hidden="true">--%>
                                <%--                                <div class="modal-dialog">--%>
                                <%--                                    <div class="modal-content">--%>
                                <%--                                        <div class="modal-header">--%>
                                <%--                                            <h5 class="modal-title" id="uploadAvatarModalLabel">Загрузка аватара</h5>--%>
                                <%--                                            <button type="button" class="btn-close"--%>
                                <%--                                                    aria-label="Close"></button>--%>
                                <%--                                        </div>--%>
                                <%--                                        <div class="modal-body">--%>
                                <%--                                            <form action="uploadCover" class="mt-5" method="POST"--%>
                                <%--                                                  enctype="multipart/form-data">--%>
                                <%--                                                <div class="row mb-3 w-25 mx-auto mt-5">--%>
                                <%--                                                    <label for="file" class="form-label">Выберите локальный файл</label>--%>
                                <%--                                                    <input class="form-control" type="file" name="file" id="file">--%>
                                <%--                                                </div>--%>
                                <%--                                            </form>--%>
                                <%--                                        </div>--%>
                                <%--                                        <div class="modal-footer">--%>
                                <%--                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">--%>
                                <%--                                                Закрыть--%>
                                <%--                                            </button>--%>
                                <%--                                        </div>--%>
                                <%--                                    </div>--%>
                                <%--                                </div>--%>
                                <%--                            </div>--%>

                            <hr class="border-light m-0">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label">Логин</label>
                                    <input type="text" class="form-control  mb-3" id="login" value="${user.login}"
                                           disabled>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Имя</label>
                                    <input type="text" class="form-control mb-3" id="name" name="name"
                                           value="${buyer.name}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Фамилия</label>
                                    <input type="text" class="form-control mb-3" id="lastname" name="lastname"
                                           value="${buyer.lastname}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">E-mail</label>
                                    <input type="text" class="form-control mb-3" id="email" name="email"
                                           value="${buyer.email}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Рабочая фирма</label>
                                    <input type="text" class="form-control mb-3" id="employeeCompany"
                                           name="employeeCompany"
                                           value="${buyer.employeeCompany}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Профессия</label>
                                    <input type="text" class="form-control mb-3" id="employee" name="employee"
                                           value="${buyer.employee}">
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-change-password${userId.index}">
                            <div class="card-body" style="padding: 16px">

                                <div class="form-group mb-3">
                                    <label class="form-label">Текущий пароль</label>
                                    <input type="password" id="password" name="password" class="form-control">
                                </div>

                                <div class="form-group mb-3">
                                    <label class="form-label">Новый пароль</label>
                                    <input type="password" id="newPassword" name="newPassword" class="form-control">
                                </div>

                                <div class="form-group mb-3">
                                    <label class="form-label">Подтверждение пароля</label>
                                    <input type="password" class="form-control" name="newPasswordRepeat"
                                           id="newPasswordRepeat">
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <div class="tab-pane fade" id="account-info">
                            <div class="card-body" style="padding: 16px">
                                <div class="form-group">
                                    <label class="form-label">Описание</label>
                                    <textarea class="form-control mb-3" rows="5" id="buyerDescription"
                                              name="buyerDescription"
                                              style="resize: none">${buyer.buyerDescription}</textarea>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Дата рождения</label>
                                    <input type="text" class="form-control mb-3" placeholder="дд.мм.гггг" id="birthDate"
                                           name="birthDate"
                                           value="${buyer.birthDate}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Город</label>
                                    <select class="form-select custom-select mb-3" id="town" name="town">
                                        <option>Abja-Paluoja</option>
                                        <option>Antsla</option>
                                        <option>Valga</option>
                                        <option>Viljandi</option>
                                        <option>Võru</option>
                                        <option>Võhma</option>
                                        <option>Jõgeva</option>
                                        <option>Jõhvi</option>
                                        <option>Kallaste</option>
                                        <option>Karksi-Nuia</option>
                                        <option>Keila</option>
                                        <option>Kehra</option>
                                        <option>Kiviõli</option>
                                        <option>Kilingi-Nõmme</option>
                                        <option>Kohtla-Järve</option>
                                        <option>Kunda</option>
                                        <option>Kuressaare</option>
                                        <option>Kärdla</option>
                                        <option>Lihula</option>
                                        <option>Loksa</option>
                                        <option>Maardu</option>
                                        <option>Mustvee</option>
                                        <option>Mõisaküla</option>
                                        <option>Narva</option>
                                        <option>Narva-Jõesuu</option>
                                        <option>Otepää</option>
                                        <option>Paide</option>
                                        <option>Paldiski</option>
                                        <option>Põlva</option>
                                        <option>Põltsamaa</option>
                                        <option>Püssi</option>
                                        <option>Pärnu</option>
                                        <option>Rakvere</option>
                                        <option>Rapla</option>
                                        <option>Saue</option>
                                        <option>Sillamäe</option>
                                        <option>Sindi</option>
                                        <option>Suure-Jaani</option>
                                        <option>Tallinn</option>
                                        <option>Tamsalu</option>
                                        <option>Tapa</option>
                                        <option>Tartu</option>
                                        <option>Tõrva</option>
                                        <option>Türi</option>
                                        <option>Haapsalu</option>
                                        <option>Elva</option>
                                    </select>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label">Адрес</label>
                                    <input type="text" id="address" name="address" class="form-control" value="${buyer.address}">
                                </div>
                            </div>

                            <hr class="border-light m-0">

                            <div class="card-body" style="padding: 16px">
                                <h6 class="mb-4 mt-2">Контакты</h6>
                                <div class="form-group mb-3">
                                    <label class="form-label">Номер телефона</label>
                                    <input type="text" class="form-control" id="phoneNumber" name="phoneNumber"
                                           value="${buyer.phoneNumber}">
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label">Сайт</label>
                                    <input type="text" class="form-control" id="userWebsite" name="userWebsite"
                                           value="${buyer.userWebsite}">
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="account-social-links">
                            <div class="card-body" style="padding: 16px">
                                <div class="form-group mb-3">
                                    <label class="form-label">Github</label>
                                    <input type="text" class="form-control" id="userGithub" name="userGithub"
                                           value="${buyer.userGithub}">
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label">Twitter</label>
                                    <input type="text" class="form-control" id="userTwitter" name="userTwitter"
                                           value="${buyer.userTwitter}">
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label">Instagram</label>
                                    <input type="text" class="form-control" id="userInstagram" name="userInstagram"
                                           value="${buyer.userInstagram}">
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label">Facebook</label>
                                    <input type="text" class="form-control" id="userFacebook" name="userFacebook"
                                           value="${buyer.userFacebook}">
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label">VK</label>
                                    <input type="text" class="form-control" id="userVk" name="userVk"
                                           value="${buyer.userVk}">
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label">Telegram</label>
                                    <input type="text" class="form-control" id="userTelegram" name="userTelegram"
                                           value="${buyer.userTelegram}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-right mt-2 d-flex">
            <div style="margin-left: auto">
                <button data-bs-target="#discardModal" data-bs-toggle="modal"
                        id="discardButton" class="btn btn-secondary">Отменить
                </button>
                <button type="submit" id="submit" class="btn" style="background-color: #EB984E">Сохранить</button>
            </div>
        </div>
    </div>
    <div class="modal fade" id="discardModal" tabindex="-1" aria-labelledby="discardModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">
                        Подтверждение
                    </h5>
                    <%--                    <button type="button" class="btn-close"--%>
                    <%--                            aria-label="Close"></button>--%>
                </div>
                <div class="modal-body">
                    <p>Вы уверены, что хотите покинуть эту страницу? Вы потеряете все сохранённые данные.</p>
                </div>
                <div class="modal-footer">
                    <%--                <button type="submit" class="btn btn-secondary">Да--%>
                    <%--                </button>--%>
                    <%--                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Нет--%>
                    <%--                </button>--%>
                </div>
            </div>
        </div>
    </div>
</form>

<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type="text/javascript"></script>

<style type="text/css">
    .ui-w-80 {
        width: 80px !important;
        height: auto;
    }
    .btn-default {
        border-color: rgba(24, 28, 33, 0.1);
        background: rgba(0, 0, 0, 0);
        color: #4E5155;
    }
    label.btn {
        margin-bottom: 0;
    }
    .btn-outline-warning {
        border-color: #EB984E;
        background: transparent;
        color: #EB984E;
    }
    .btn {
        cursor: pointer;
    }
    .text-light {
        color: #babbbc !important;
    }
    .btn-facebook {
        border-color: rgba(0, 0, 0, 0);
        background: #3B5998;
        color: #fff;
    }
    .btn-instagram {
        border-color: rgba(0, 0, 0, 0);
        background: #000;
        color: #fff;
    }
    .card {
        background-clip: padding-box;
        box-shadow: 0 1px 4px rgba(24, 28, 33, 0.012);
    }
    .row-bordered {
        overflow: hidden;
    }
    .account-settings-fileinput {
        position: absolute;
        visibility: hidden;
        width: 1px;
        height: 1px;
        opacity: 0;
    }
    .account-settings-links .list-group-item.active {
        font-weight: bold !important;
    }
    html:not(.dark-style) .account-settings-links .list-group-item.active {
        background: transparent !important;
    }
    .account-settings-multiselect ~ .select2-container {
        width: 100% !important;
    }
    .light-style .account-settings-links .list-group-item {
        padding: 0.85rem 1.5rem;
        border-color: rgba(24, 28, 33, 0.03) !important;
    }
    .light-style .account-settings-links .list-group-item.active {
        color: #4e5155 !important;
    }
    .material-style .account-settings-links .list-group-item {
        padding: 0.85rem 1.5rem;
        border-color: rgba(24, 28, 33, 0.03) !important;
    }
    .material-style .account-settings-links .list-group-item.active {
        color: #4e5155 !important;
    }
    .dark-style .account-settings-links .list-group-item {
        padding: 0.85rem 1.5rem;
        border-color: rgba(255, 255, 255, 0.03) !important;
    }
    .dark-style .account-settings-links .list-group-item.active {
        color: #fff !important;
    }
    .light-style .account-settings-links .list-group-item.active {
        color: #4E5155 !important;
    }
    .light-style .account-settings-links .list-group-item {
        padding: 0.85rem 1.5rem;
        border-color: rgba(24, 28, 33, 0.03) !important;
    }
</style>
</body>

<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#image').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#avatarId").change(function () {
        readURL(this);
    });
</script>

</html>