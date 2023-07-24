<!DOCTYPE html>
<html>
<head>
    <title>Buysell</title>
</head>
<body>
<h1>BUYSELL </h1><hr>
<#if user.email??>
    <h3><i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Вийти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель адміністратора</a>
    </#if>
    <#else>
        <a href="/login">Увійти</a>
</#if>
<hr>

<h4>Всі об'явлення</h4>
<form action="/" method="get">
    Пошук по назві об'явлення: <input type="text" name="title"><br>
    <input type="submit" value="Пошук"/>
</form>
<#list products as  product>
    <div>
        <p><b>${product.title}</b> ${product.price} грн. <a href="/product/${product.id}">Детальніше...</a></p>

    </div>
<#else>
    <h3>Товарів немає</h3>
</#list>
<#if user.email??>

    <hr>
    <h3>Створити нове об'явлення</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Назва товару: <input type="text" name="title"/><br><br>
        Опис товару: <input type="text" name="description"/><br><br>
        Ціна товару: <input type="number" name="price"/><br><br>
        Місто: <input type="text" name="city"/><br><br>
        Перша фотографія: <input type="file" name="file1"/><br><br>
        Друга фотографія: <input type="file" name="file2"/><br><br>
        Третя фотографія: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Добавити товар"/>
    </form>

</#if>
</body>
</html>