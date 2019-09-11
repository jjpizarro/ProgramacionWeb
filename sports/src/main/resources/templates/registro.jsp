<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Registro usuarios</title>
<link rel="stylesheet" th:href="@{/css/estilos.css}">
</head>
<body>
<img alt="" th:src="@{/images/unimag.png}">
<h1>Registro</h1>
<form action="#" th:action="@{/registro}" th:object="${usuario}" method="post">
	<label for="nombre">Nombre:</label>
	<input type="text" th:field="*{nombre}" id="nombre" placeholder="Nombre">

	<label for="username">username:</label>
	<input type="text" th:field="*{username}" id="username" placeholder="Nombre usuario">
	<label for="email">Correo lectr&oacute;nico:</label>
	<input type="text" th:field="*{email}" id="email" placeholder="Correo electronico">
	<input type="submit" velue="Registrarse"/>
</form>
</body>
</html>