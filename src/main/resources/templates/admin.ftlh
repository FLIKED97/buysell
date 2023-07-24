<!DOCTYPE html>
<html>
<head>
    <title>Buysell</title>
</head>
<body>
<h1>BUYSELL </h1>
<h4>Панель адміністрації</h4>
<table border="1">
   <tr>
       <th>Ел. пошта</th>
       <th>Номер телефона</th>
       <th>Активність</th>
       <th>Ролі</th>
       <th>Бан</th>
       <th>Редагування</th>
       <th>Детальніше</th>
   </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active> true<#else> false </#if></th>
            <th><#list user.roles as role>${role}<#sep>, </#list> </th>
            <th><form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан">
                </form> </th>
            <th><a href="/admin/user/edit/${user.id}">Редагування</a></th>
            <th> <a href="/user/${user.id}"> Детальніше </a></th>
        </tr>
        <#else>
        <h3>Користувача не існує</h3>
    </#list>

<#--    <#list users as user>-->
<#--        <tr>-->
<#--            <th>${user.email}</th>-->
<#--            <th>${user.phoneNumber}</th>-->
<#--            <th><#if user.active>true<#else>false</#if></th>-->
<#--            <th><#list user.roles as role>${role}</#list></th>-->
<#--            <th>-->
<#--                <form action="/admin/user/ban/${user.id}" method="post">-->
<#--                    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                    <input type="submit" value="Бан">-->
<#--                </form>-->
<#--            </th>-->
<#--            <th><a href="/admin/user/edit/${user.id}">Редактировние</a></th>-->
<#--            <th><a href="/user/${user.id}">Подробная информация</a></th>-->
<#--        </tr>-->
<#--    <#else>-->
<#--        <h3>Пользователей нет</h3>-->
<#--    </#list>-->
</table>

</body>
</html>