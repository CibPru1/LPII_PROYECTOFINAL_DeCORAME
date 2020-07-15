<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeCORAME - Ingreso</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="css/estilos2.css" rel="stylesheet">

</head>

<body>

	<div class="container-fluid">
	
	 <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <img src="img/Planes/LogoDecorame.png"alt="">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
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
        </div>
    </header>
			<br>
			<br>
			<br>
			<br>
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
		            </div>
				    <br>
				    <br>      		            
		            <div class="form-group row">
		                <label class="col-2">&nbsp;</label>
		                <div class="input-group col-3">
		                    <button type="submit" class="btn btn-outline-primary tamano">Registrar</button>
		                </div>
		                <div class="col-5">
		                	<p style="text-align:left;">Eres nuevo? Regístrate <a href="registro.jsp">aquí</a> </p>
		            	</div>
		            </div>
		        </form>
        	</div>
        	<div class="col-3">
        	</div>
        	<br>
			<br>
		</div>
		<main>		
			<section>
				<figure2>
					<img src="img/Login/comedor.jpg"alt="">
					<figcaption>Transforma tu Comedor</figcaption>
				</figure2>
				<figure2>
					<img src="img/Login/dormitorio.jpg"alt="">
					<figcaption>Renueva tu Dormitorio</figcaption>
				</figure2>
				<figure2>
					<img src="img/Login/sala.jpg"alt="">
					<figcaption>Ilumina tu sala</figcaption>
				</figure2>
				<figure2>
					<img src="img/Login/terraza.jpg"alt="">
					<figcaption>Dale vida a la terraza</figcaption>
									<br>
				</figure2>
				<br>
				<br>
			</section>
			<br>
			<br>
		</main>
		<br>
		<br>
			
     <footer class="row">
            <div class="col-md-3">
             <br>  <br>  <br>
              
               <img src="img/Planes/LogoDecorame.png" alt="Facebook">
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
            <div class="col-md-2">
            	<div class="row">
            		<div class="col-md-12">
            			<button type="button" class="btn btn-success" >  Decórame</button>
            		</div>
            		<br>
            		<br>
            		<div class="col-md-12">
	            		<p class="blockquote-footer">Cuentanos tu proyecto y juntos
	            	decoraremos tus ideas</p>
            		</div>
            	</div>
            </div>
             <div class="col-md-2">
            	<div class="row">
            		<div class="col-md-12">
            			<button type="button" class="btn btn-success" disabled>Síguenos en:</button>
            		</div>
            		<br>
            		<br>
            		<div class="col-md-12 redes">
            			<img src="img/facebook.png" alt="Facebook">
	            		<img src="img/youtube.png" alt="Youtube">
		                <img src="img/twitter.png" alt="Twitter">

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