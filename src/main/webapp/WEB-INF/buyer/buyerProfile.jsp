<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="snippetContent" class="mt-5">
    <div class="container">
        <div class="main-body">
            <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center text-center">
                                <c:if test="${buyer.avatar.path eq null}">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="150" height="150" fill="currentColor"
                                         class="bi bi-question-circle-fill" viewBox="0 0 16 16">
                                        <path style="fill: #007bff"
                                              d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.496 6.033h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286a.237.237 0 0 0 .241.247zm2.325 6.443c.61 0 1.029-.394 1.029-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94 0 .533.425.927 1.01.927z"></path>
                                    </svg>
                                </c:if>
                                <c:if test="${buyer.avatar.path != null}">
                                    <img src="insertAvatar/${buyer.avatar.path}" alt="" class="rounded-circle"
                                         width="150" height="150">
                                </c:if>
                                <div class="mt-3"><h4><c:if
                                        test="${buyer.name eq null && buyer.lastname eq null}">
                                    <a href="editProfileForm"
                                       style="font-size: 14px">Добавить
                                        имя</a>
                                    <br>
                                    <a href="editProfileForm" style="font-size: 14px">Добавить
                                        профессию</a>
                                </c:if>${buyer.name} ${buyer.lastname}</h4>
                                    <p class="text-secondary mb-1"><c:if
                                            test="${buyer.employee != null && buyer.employeeCompany != null}">${buyer.employee}, ${buyer.employeeCompany}</c:if></p>
                                    <a href="editProfileForm" class="btn btn-outline-warning mt-3" style="outline-color: #EB984E">Изменить</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3">
                        <ul class="list-group list-group-flush">

                            <c:if test="${buyer.userWebsite eq null && buyer.userGithub eq null && buyer.userTwitter eq null && buyer.userInstagram eq null && buyer.userFacebook eq null}">
                                <li class="d-flex justify-content-between align-items-center flex-wrap">
                                    <a href="editProfileForm">Вы не добавили ни одной соц. сети</a></li>
                            </c:if>

                            <div class="list-group-item <c:if test="${buyer.userWebsite eq null}">d-none</c:if>"
                                 style="border-bottom: 1px solid rgba(0,0,0,.125); padding: 0.75rem 1rem">
                                <li class="d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0 d-flex flex-row">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                             viewBox="0 0 24 24"
                                             fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                             stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline">
                                            <circle cx="12" cy="12" r="10"></circle>
                                            <line x1="2" y1="12" x2="22" y2="12"></line>
                                            <path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path>
                                        </svg>
                                        <span style="margin-left: 0.5rem; margin-top: 3px">Веб сайт</span>
                                    </h6>
                                    <span class="text-secondary">${buyer.userWebsite}</span>
                                </li>
                            </div>

                            <div class="list-group-item <c:if test="${buyer.userGithub eq null}">d-none</c:if>"
                                 style=" padding: 0.75rem 1rem">
                                <li class="d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0 d-flex flex-row">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                             viewBox="0 0 24 24"
                                             fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                             stroke-linejoin="round" class="feather feather-github mr-2 icon-inline">
                                            <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path>
                                        </svg>
                                        <span style="margin-left: 0.5rem; margin-top: 3px">Github</span>
                                    </h6>
                                    <span class="text-secondary">@${buyer.userGithub}</span>
                                </li>
                            </div>


                            <div class="list-group-item <c:if test="${buyer.userTwitter eq null}">d-none</c:if>"
                                 style=" padding: 0.75rem 1rem">
                                <li class="d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0 d-flex flex-row">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                             viewBox="0 0 24 24"
                                             fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                             stroke-linejoin="round"
                                             class="feather feather-twitter mr-2 icon-inline text-info">
                                            <path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path>
                                        </svg>
                                        <span style="margin-left: 0.5rem; margin-top: 3px">Twitter</span>
                                    </h6>
                                    <span class="text-secondary">@${buyer.userTwitter}</span>
                                </li>
                            </div>

                            <div class="list-group-item <c:if test="${buyer.userInstagram eq null}">d-none</c:if>"
                                 style=" padding: 0.75rem 1rem">
                                <li class="d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0 d-flex flex-row">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                             viewBox="0 0 24 24"
                                             fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                             stroke-linejoin="round"
                                             class="feather feather-instagram mr-2 icon-inline text-danger">
                                            <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
                                            <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                            <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
                                        </svg>
                                        <span style="margin-left: 0.5rem; margin-top: 3px">Instagram</span>
                                    </h6>
                                    <span class="text-secondary">@${buyer.userInstagram}</span>
                                </li>
                            </div>

                            <div class="list-group-item <c:if test="${buyer.userFacebook eq null}">d-none</c:if>"
                                 style=" padding: 0.75rem 1rem">
                                <li class="d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0 d-flex flex-row">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                             viewBox="0 0 24 24"
                                             fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                             stroke-linejoin="round"
                                             class="feather feather-facebook mr-2 icon-inline text-primary">
                                            <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                                        </svg>
                                        <span style="margin-left: 0.5rem; margin-top: 3px">Facebook</span>
                                    </h6>
                                    <span class="text-secondary">@${buyer.userFacebook}</span>
                                </li>
                            </div>

                            <div class="list-group-item <c:if test="${buyer.userTelegram eq null}">d-none</c:if>"
                                 style=" padding: 0.75rem 1rem">
                                <li class="d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0 d-flex flex-row">
                                        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" x="0px"
                                             width="24" height="24"
                                             y="0px"
                                             viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;"
                                             xml:space="preserve">
                                            <circle style="fill:#41B4E6;" cx="255.997" cy="256" r="255.997"></circle>
                                            <path style="fill:#0091C8;" d="M512,256.003c0-6.238-0.235-12.419-0.673-18.546L405.228,131.36L106.772,248.759l114.191,114.192
	l1.498,5.392l1.939-1.955l0.008,0.008l-1.947,1.947L348.778,494.66C444.298,457.5,512,364.663,512,256.003z"></path>
                                            <polygon style="fill:#FFFFFF;" points="231.138,293.3 346.829,380.647 405.228,131.36 106.771,248.759 197.588,278.84
	363.331,167.664 "></polygon>
                                            <polygon style="fill:#D2D2D7;"
                                                     points="197.588,278.84 222.461,368.344 231.138,293.3 363.331,167.664 "></polygon>
                                            <polygon style="fill:#B9B9BE;"
                                                     points="268.738,321.688 222.461,368.344 231.138,293.3 "></polygon>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            <g>
                                            </g>
                                            </svg>
                                        <span style="margin-left: 0.5rem; margin-top: 3px">Telegram</span>
                                    </h6>
                                    <span class="text-secondary">@${buyer.userTelegram}</span>
                                </li>
                            </div>

                            <div class="list-group-item <c:if test="${buyer.userVk eq null}">d-none</c:if>"
                                 style=" padding: 0.75rem 1rem">
                                <li class="d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0 d-flex flex-row">
                                        <svg id="Capa_1" style="enable-background:new 0 0 112.196 112.196;"
                                             version="1.1" viewBox="0 0 112.196 112.196" xml:space="preserve" width="25"
                                             height="25"
                                             xmlns="http://www.w3.org/2000/svg"><g>
                                            <g>
                                                <circle cx="56.098" cy="56.098" id="XMLID_11_" r="56.098"
                                                        style="fill:#4D76A1;"></circle>
                                            </g>
                                            <path d="M53.979,80.702h4.403c0,0,1.33-0.146,2.009-0.878   c0.625-0.672,0.605-1.934,0.605-1.934s-0.086-5.908,2.656-6.778c2.703-0.857,6.174,5.71,9.853,8.235   c2.782,1.911,4.896,1.492,4.896,1.492l9.837-0.137c0,0,5.146-0.317,2.706-4.363c-0.2-0.331-1.421-2.993-7.314-8.463   c-6.168-5.725-5.342-4.799,2.088-14.702c4.525-6.031,6.334-9.713,5.769-11.29c-0.539-1.502-3.867-1.105-3.867-1.105l-11.076,0.069   c0,0-0.821-0.112-1.43,0.252c-0.595,0.357-0.978,1.189-0.978,1.189s-1.753,4.667-4.091,8.636c-4.932,8.375-6.904,8.817-7.71,8.297   c-1.875-1.212-1.407-4.869-1.407-7.467c0-8.116,1.231-11.5-2.397-12.376c-1.204-0.291-2.09-0.483-5.169-0.514   c-3.952-0.041-7.297,0.012-9.191,0.94c-1.26,0.617-2.232,1.992-1.64,2.071c0.732,0.098,2.39,0.447,3.269,1.644   c1.135,1.544,1.095,5.012,1.095,5.012s0.652,9.554-1.523,10.741c-1.493,0.814-3.541-0.848-7.938-8.446   c-2.253-3.892-3.954-8.194-3.954-8.194s-0.328-0.804-0.913-1.234c-0.71-0.521-1.702-0.687-1.702-0.687l-10.525,0.069   c0,0-1.58,0.044-2.16,0.731c-0.516,0.611-0.041,1.875-0.041,1.875s8.24,19.278,17.57,28.993   C44.264,81.287,53.979,80.702,53.979,80.702L53.979,80.702z"
                                                  style="fill-rule:evenodd;clip-rule:evenodd;fill:#FFFFFF;"></path>
                                        </g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g></svg>
                                        <span style="margin-left: 0.5rem; margin-top: 3px">VK</span>
                                    </h6>
                                    <span class="text-secondary">${buyer.userVk}</span>
                                </li>
                            </div>
                        </ul>
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3"><h6 class="mb-0">Полное имя</h6></div>
                                <div class="col-sm-9 text-secondary  d-flex flex-row justify-content-between"><c:if
                                        test="${buyer.name eq null && buyer.lastname eq null}">Не указано</c:if>${buyer.name} ${buyer.lastname}
                                    <c:if test="${buyer.name eq null && buyer.lastname eq null}">
                                        <div class="text-end">
                                            <a href="editProfileForm" style="font-size: 14px">Добавить</a>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3"><h6 class="mb-0">E-mail</h6></div>
                                <div class="col-sm-9 text-secondary d-flex flex-row justify-content-between"><c:if
                                        test="${buyer.email eq null}">Не указано</c:if>${buyer.email}
                                    <c:if test="${buyer.email eq null}">
                                        <div class="text-end">
                                            <a href="editProfileForm" style="font-size: 14px">Добавить</a>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3"><h6 class="mb-0">Номер телефона</h6></div>
                                <div class="col-sm-9 text-secondary d-flex flex-row justify-content-between"><c:if
                                        test="${buyer.phoneNumber eq null}">Не указано</c:if>
                                    +372 ${buyer.phoneNumber}
                                    <c:if test="${buyer.phoneNumber eq null}">
                                        <div class="text-end">
                                            <a href="editProfileForm" style="font-size: 14px">Добавить</a>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                            <hr>
                            <div class="row flex-nowrap">
                                <div class="col-sm-3"><h6 class="mb-0">Адрес</h6></div>
                                <div class="col-sm-9 text-secondary d-flex flex-row justify-content-between"><c:if
                                        test="${buyer.address eq null}">Не указано</c:if>
                                    ${buyer.address}
                                    <c:if test="${buyer.address eq null}">
                                        <div class="text-end">
                                            <a href="editProfileForm" style="font-size: 14px">Добавить</a>
                                        </div>
                                    </c:if>
                                </div>


                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3"><h6 class="mb-0">Статус</h6></div>
                                <div class="col-sm-9 text-secondary">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                                         class="bi bi-check-all" viewBox="0 0 16 16" style="fill: #007bff">
                                        <path d="M8.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992a.252.252 0 0 1 .02-.022zm-.92 5.14l.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486-.943 1.179z"></path>
                                    </svg>
                                    <span>Подтверждён</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>