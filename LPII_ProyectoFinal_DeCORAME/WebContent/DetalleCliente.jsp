<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="css/DetalleC.css" rel="stylesheet">

<title>DetalleCliente</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<img src="img/Planes/LogoDecorame.png" alt="">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="col-8">
					<ul class="nav nav-pills nav-fill">
						<li class="nav-item"><a class="nav-link" href="#">Conócenos</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">¿Sabes
								como decorarme?</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Servicios</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Clientes</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Contáctenos</a>
						</li>
					</ul>
				</div>
				<div class="col-2">
					<button type="button" class="btn btn-outline-success">Decórame</button>
				</div>
			</div>
		</nav>
	</header>
	<br>

	<br>
	<br>
	<br>
	<br>

	<br>
	<main>

		<div id="div-regForm">

			<div class="form-title"></div>

			<form id="regForm" action="submit.php" method="post">
				<table>
					<tbody>
						<tr>

							<td><label for="pedido">N° Pedido</label></td>
							<td><div class="input-container">
									<input name="fpedido" id="fpedido" type="text" />
								</div></td>

						</tr>

						<tr>

							<td><label for="fecha">Fecha</label></td>
							<td><div class="input-container">
									<input name="fecha" id="fecha" type="date" />
								</div></td>

						</tr>

						<tr>

							<td><label for="nombre">Nombre</label></td>
							<td><div class="input-container">
									<input name="fname" id="fname" type="text" />
								</div></td>

						</tr>
						<tr>

							<td><label for="apep">Apellido Paterno</label></td>
							<td><div class="input-container">
									<input name="lname" id="lname" type="text" />
								</div></td>

						</tr>

						<tr>

							<td><label for="fec">Celular</label></td>
							<td><div class="input-container">
									<input name="celular" id="cel" type="text" />
								</div></td>

						</tr>
						<tr>

							<td><label for="email">Email</label></td>
							<td><div class="input-container">
									<input name="email" id="email" type="text" />
								</div></td>

						</tr>
						<tr>

							<td><label for="direc">Dirección</label></td>
							<td><div class="input-container">
									<input name="lname" id="lname" type="text" />
								</div></td>

						</tr>

					</tbody>
				</table>

			</form>

			<div id="error">&nbsp;</div>

		</div>
		<div class="conte">

			<table class="table">
				<tr>
					<th>N° Pedido</th>

					<th>Plan</th>

					<th>Ammbiente</th>

					<th>Comentario
					<th>
				</tr>

				<tr>

					<td></td>
					<td></td>
					<td></td>
					<td></td>

				</tr>
				<tr>

					<td></td>
					<td></td>
					<td></td>
					<td></td>

				</tr>

			</table>
			<div class="adjunto">
				<p>DETALLE PEDIDO</p>
				<ul>
					<li>Planos de Ambiente

						<form name="form1" enctype="multipart/form-data" method="post"
							action="mailto:correo@dominio.com">
							<input type="file" name="file"> <input type="submit"
								name="Submit" value="Enviar">
						</form>
					</li>
				</ul>

				<ul>
					<li>Lista de Compras
						<form name="form1" enctype="multipart/form-data" method="post"
							action="mailto:correo@dominio.com">
							<input type="file" name="file"> <input type="submit"
								name="Submit" value="Enviar">
						</form>
					</li>
				</ul>

				<ul>
					<li>Lista de Colores
						<form name="form1" enctype="multipart/form-data" method="post"
							action="mailto:correo@dominio.com">
							<input type="file" name="file"> <input type="submit"
								name="Submit" value="Enviar">
						</form>
					</li>
				</ul>
			</div>
			<div class="botones">
		   <button class="button">Aceptar</button>
			<button class="button button2">Guardar</button>
			<button class="button button3">Enviar</button>

		</div>
			
		</div>
		
	</main>
	<jsp:include page="Refabajo.jsp"></jsp:include>

</body>
</html>