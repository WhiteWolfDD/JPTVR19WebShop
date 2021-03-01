<%@page contentType="text/html" pageEncoding="UTF-8" %>
<h3 class="mx-auto text-center w-100">Загрузить файл</h3>
<form action="uploadCover" method="POST" enctype="multipart/form-data">
    <div class="row mb-3 w-50 mx-auto">
        <label for="file" class="form-label">Выберите локальный файл</label>
        <input class="form-control" type="file" name="file" id="file">
    </div>
    <div class="row mb-3 w-50 mx-auto">
        <label for="description" class="form-label">Описание</label>
        <input class="form-control" type="text" name="description" id="description">
    </div>
    <div class="row w-25 mx-auto">
        <button type="submit" class="btn" style="background-color: #EB984E">Загрузить файл</button>
    </div>
</form>