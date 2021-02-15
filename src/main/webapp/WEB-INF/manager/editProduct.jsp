<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Редактирование товара</title>
</head>
<body>

<h1>Редактирование товара</h1>
<a href="../../index.jsp">Домой</a>
<hr>
<form action="editProduct" method="POST">

    <h2>Выберите продукт</h2>

    <label>
        <select name="productId">
            <c:forEach var="product" items="${listProducts}" varStatus="status">
                <option value="${product.id}">${status.index+1}. <strong>Название: </strong>${product.title} ${product.model},
                    <strong>Цена: </strong>${product.price}, <strong>Осталось: </strong>${product.count}шт.
                </option>
            </c:forEach>
        </select>
    </label>

    <br><br>

    <input type="hidden" name="productId" value="${product.id}">

    <label for="title">Название товара:</label>
    <input type="text" name="title" id="title" value="${product.title}" required>

    <br><br>

    <label for="model">Модель товара:</label>
    <input type="text" name="model" id="model" value="${product.model}" required>

    <br><br>

    <label for="price">Цена товара:</label>
    <input type="text" name="price" id="price" value="${product.price}" required>

    <br><br>

    <label for="count">Количество товара:</label>
    <input type="text" name="count" id="count" value="${product.count}" required>

    <br><br>

    <input type="submit" name="submit" value="Изменить товар">
</form>
</body>
</html>
