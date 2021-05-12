<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculadora</title>
</head>
<body>

	<p style="color:red">${mensaje}</p>

	<p>Podemos hacer la peticion por GET mediante un enlace </p>
	<a href="calcular?numero1=4&numero2=8">peticion GET <b>calcular?numero1=4&numero2=8</b></a>

	
	<p>Podemos hacer la peticion por POST mediante un formulario </p>
	<form method="post" action="calcular">
		<input type="text" name="numero1">
		<br>
		<input type="text" name="numero2">
		<br>
		<input type="submit" value="Sumar">
	</form>	
	
	<figure>
		<img src="images/calculadora.jpg" alt="flujo de navegacion" style="width: 100%">
		<figcaption>Flujo de navegación</figcaption>
	</figure>

</body>
</html>