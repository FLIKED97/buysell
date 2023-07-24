<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Вся інформація о товарі</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Назва товара: </b>${product.title}<br>
<b>Опис товара: </b>${product.description}<br>
<b>Ціна: </b>${product.price}<br>
<b>Місто: </b>${product.city}<br>
<b>Автор: </b> <a href="/user/${product.user.id}">${product.user.name}</a> <br>
<hr>

</body>
</html>