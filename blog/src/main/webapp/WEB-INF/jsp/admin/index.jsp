<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Artículos</title>
	<style>
		.contenido {
			width: 80%;
		}
			
		.articulo {
			border: 1px solid black;
			margin-left: auto;
			margin-right: auto;
		}
		
		.articulo.texto {
			font-weight: bold;
		}
		
		.articulo h1 {
			text-align: center;
		}
	</style>
</head>
<body>
	<div class="contenido">
		<h1>Admin de Artículos</h1>

		Administración de artículos...		
	</div>
	
	<a href="articulos.do">Inicio</a>
	<a href="app-logout">Salir</a>

 	<sec:authorize access="hasRole('ROLE_INFO')">
		<div>Este mensaje sólo lo pueden ver los que tienen el rol INFO</div>
		<a href="#">Info</a>
	</sec:authorize>
</body>
</html>

