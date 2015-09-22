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
		<h1>Artículos</h1>
		
		<c:forEach var="a" items="${articulos}">
			<div class="articulo">
				<div class="texto">${a.texto}</div>
				<div class="titulo">${a.titulo}</div>
			</div>
			<br>
		</c:forEach>
	</div>
	
	<a href="admin.do">Admin</a>
</body>
</html>

