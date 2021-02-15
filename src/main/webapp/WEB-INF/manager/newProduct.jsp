<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Добавить товар</title>
</head>
<body>
<div style="margin-left: 1rem">
    <h1>Добавить товар</h1>
    <a href="../../index.jsp">Домой</a>
</div>
<hr>
<div style="margin-left: 1rem">
    <form action="createProduct" method="POST">
        <label for="title">Название товара:</label>
        <input type="text" name="title" id="title" required>

        <br><br>

        <label for="model">Модель товара:</label>
        <input type="text" name="model" id="model" required>

        <br><br>

        <label for="price">Цена товара:</label>
        <input type="text" name="price" id="price" required>

        <br><br>

        <label for="count">Количество товара:</label>
        <input type="text" name="count" id="count" required>

        <br><br>

        <input type="submit" value="Добавить новый товар">
    </form>
</div>
</body>
</html>
