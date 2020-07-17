<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="/WEB-INF/libreria.tld" prefix="ct"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeCORAME - Carrito Compras</title>
<link rel="stylesheet" type="text/css" href="css/Carro.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type='text/javascript' src="fly.js"></script>

<meta name="view">

<link href="css/displaytag.css" rel="stylesheet" type="text/css">
<link href="css/screen.css" rel="stylesheet" type="text/css"
	media="screen">

</head>

<body>
	<header><jsp:include page="RArriba.jsp"></jsp:include></header>
	<br><br><br><br>
	<br>
	
	<div class="container" id="div-regForm">
		<h1>Listado de PLANES</h1>
		

				<form action="aseso_serv">
					<table>


					<display:table name="${listProd}" decorator="com.decorame.decorator.Wrapper">
						<display:column title="" property="foto"/>
						<display:column title="NOMBRE DEL PRODUCTO" property="nombre"/>
						<display:column title="PRECIO UNITARIO" property="precio"/>
						<display:column title="" property="imagen" />
						<display:column title="" property="imagenl" />
						
					</display:table>

					</table>
				</form>

			</div>
	

	
	<br>
	<br>
	<br>
	<footer><jsp:include page="Refabajo.jsp"></jsp:include></footer>


</body>
</html>