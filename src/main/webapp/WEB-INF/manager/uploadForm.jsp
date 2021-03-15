<%@page contentType="text/html" pageEncoding="UTF-8" %>
<h3 class="text-center">Загрузить файл</h3>
<form action="uploadCover" class="mt-5" method="POST" enctype="multipart/form-data">
    <div class="row mb-3 w-25 mx-auto mt-5">
        <label for="file" class="form-label">Выберите локальный файл</label>
        <input class="form-control" type="file" name="file" id="file">
    </div>
    <div class="row mb-3 w-25 mx-auto">
        <label for="description" class="form-label">Описание</label>
        <input class="form-control" type="text" name="description" id="description" placeholder="The frame of the sofa is made of plywood and solid wood">
    </div>
    <div class="row w-25 mx-auto mt-5">
        <div class="w-50 mx-auto">
            <button type="submit" class="btn w-100" style="background-color: #EB984E">Загрузить файл</button>
        </div>
    </div>
</form>