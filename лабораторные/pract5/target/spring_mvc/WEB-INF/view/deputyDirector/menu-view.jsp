<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <a href="/">Вернуться назад!</a>
    <title>Main Menu</title>
</head>
<body>


<h1>Добро пожаловать в главное меню ${user.name} ${user.surname}, Ваш адрес ${user.address}</h1>

<br><br>

<h3>Выберите функцию!</h3>

<%--Сформировать задание на составление тура--%>
<hr>
<a href="/deputyDirector/task-generate-view">Сформировать задание на составление тура</a>
<hr>

<%--Ознакомится с текущими продажами путевок--%>
<hr>
<a href="/deputyDirector/show-ticket-sales-view">Ознакомится с текущими продажами путевок</a>
<hr>

<%--Учредить должность в фирме--%>
<hr>
<a href="/deputyDirector/establish-position-view">Учредить должность в фирме</a>
<hr>


<%--Принять сотрудника на работу--%>
<hr>
<a href="/deputyDirector/hire-employee-view">Принять сотрудника на работу</a>
<hr>

<%--Дать задание в тех. Отдел по работе с туром--%>
<hr>
<a href="/deputyDirector/assign-task-view">Дать задание в тех. Отдел по работе с туром</a>
<hr>

<%--Назначить турменеджера на тур--%>
<hr>
<a href="/deputyDirector/appoint-tour-manager-view">Назначить турменеджера на тур</a>
<hr>

<%--Проконтролировать работу по составлению тура--%>
<hr>
<a href="/deputyDirector/supervise-preparation-view">Проконтролировать работу по составлению тура</a>
<hr>

<%--Ознакомится отзывами клиентов по туру.--%>
<hr>
<a href="/deputyDirector/show-reviews-view">Ознакомится отзывами клиентов по туру.</a>
<hr>

<%--Перевести тур в зал продаж.--%>
<hr>
<a href="/deputyDirector/translate-tour-view">Перевести тур в зал продаж..</a>
<hr>

<%--Удалить тур--%>
<hr>
<a href="/deputyDirector/delete-tour-view">Удалить тур.</a>
<hr>

<%--Посмотреть продажу путевок по туру.--%>
<hr>
<a href="/deputyDirector/show-tour-sales">Посмотреть продажу путевок по туру..</a>
<hr>

</body>
</html>
