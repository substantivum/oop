<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
    <title>Tour Manager</title>
</head>
<body>


<h1>Показать туры которые выставлены на продажу</h1>

<br><br>


<form:form action="/tourComposer/compile-applications-view/" modelAttribute="tour">

    <hr>
    Название тура <%--Еще не готово --%>
    <hr>
    Тип тура <%--Еще не готово --%>
    <hr>
    Страна <%--Еще не готово --%>
    <hr>
    Дата начала <%--Еще не готово --%>
    <hr>
    Дата завершения <%--Еще не готово --%>
    <hr>
    Номер программы <%--Еще не готово --%>
    <hr>
    <input type="submit" value="Посмотреть">

</form:form>


</body>
</html>