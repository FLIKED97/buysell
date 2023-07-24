<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h3>Детальна інформація про користувача ${user.name}</h3>
<b>Номер телефона</b> ${user.phoneNumber}<br>
<b>Ел. пошта</b> ${user.email}<br>

<h4>Товари користувача ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} грн. <a href="/product/${product.id}">Детальніше...</a></p>

    </div>
    <#else>
    <h3>Товарів немає</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: aqua">${errorMessage}</h2>
</#if>
</body>
</html>