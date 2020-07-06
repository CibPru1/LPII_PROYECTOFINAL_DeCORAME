<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeCORAME - Ingreso</title>
<link href="css/stilos.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles-form.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">	
</head>

<body>

	<div class="container-fluid">
	
        <header id="cabecera" class="row">
            <div class="col-2">
				<a class="navbar-brand" href="#">
				  <img src="img/logofree.png" style="width:80%;margin-top:-15px" alt="Decorame">
				</a>
            </div>
            <div class="col-8">
            	<ul class="nav nav-pills nav-fill">
				  <li class="nav-item">
				    <a class="nav-link" href="#">Conócenos</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">¿Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Clientes</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Contáctenos</a>
				  </li>
				</ul>
            </div>
            <div class="col-2">
                <button type="button" class="btn btn-outline-success">Decórame</button>
            </div>
        </header>

        <div id="seccion" style="height: 450px;padding-top:50px;" class="row">
        	<div class="col-3"></div>
        	<div class="col-6">
	        	<form action="ingreso" method="post">
		            <h2 style="text-align:center;">Bienvenido</h2>
		            <hr>
		            <div class="form-group row">
		            	<div class="col-2"></div>
		                <label for="txtUsuario" class="col-3 col-form-label margen">Correo</label>
		                <div class="col-5">
		                    <input type="text" name="txtUsuario" class="form-control" placeholder="Ingrese correo" required>
		                </div>
		                <div class="col-2"></div>
		            </div>
		            <div class="form-group row">
		            	<div class="col-2"></div>
		                <label for="txtClave" class="col-3 col-form-label margen">Contraseña</label>
		                <div class="col-5">
		                    <input type="password" name="txtClave" class="form-control" placeholder="Ingrese contraseña" required>
		                </div>
		                <div class="col-2"></div>
		            </div>
		            <div class="form-group row">
		                <label class="col-3">&nbsp;</label>
		                <div class="input-group col-3">
		                    <button type="submit" class="btn btn-outline-primary tamano">Ingresar</button>
		                </div>
		                <div class="col-6">
		                	<p style="text-align:left;">Eres nuevo? Regístrate <a href="registro.jsp">aquí</a> </p>
		            	</div>
		            </div>
		        </form>
        	</div>
        	<div class="col-3">
        	</div>
		</div>

        <footer class="row">
            <div class="col-md-3">
                <img src="img/logofree.png" style="width:80%;" alt="Decorame">
            </div>
			<div class="col-md-4">
                <ul class="nav flex-column">
				  <li class="nav-item">
				    <a class="nav-link" href="#">Conócenos</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">¿Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Clientes</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Contáctenos</a>
				  </li>
				</ul>
            </div>
            <div class="col-md-3">
            	<div class="row">
            		<div class="col-md-12">
            			<button type="button" class="btn btn-success" disabled>Decórame</button>
            		</div>
            		<div class="col-md-12">
	            		<p>Cuentanos tu proyecto y juntos</p> 
	            		<p>decoraremos tus ideas</p>
            		</div>
            	</div>
            </div>
            <div class="col-md-2">
            	<div class="row">
            		<div class="col-md-12">
            			<button type="button" class="btn btn-success" disabled>Siguenos en Redes</button>
            		</div>
            		<div class="col-md-12 redes">
	            		<img src="img/youtube.png" alt="Youtube">
		                <img src="img/twitter.png" alt="Twitter">
		                <img src="img/facebook.png" alt="Facebook">
            		</div>
            	</div>
            </div>
        </footer>

    </div>
    
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/libreria.js"></script>
</body>
</html>