<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
</body>
</html>

