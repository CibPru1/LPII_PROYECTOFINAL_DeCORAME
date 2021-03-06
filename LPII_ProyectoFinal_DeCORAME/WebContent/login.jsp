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
				    <a class="nav-link" href="Index.jsp">Con�cenos</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Test.jsp">�Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Planes.jsp">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="RegUsuario.jsp">Clientes</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Contacte.jsp">Cont�ctenos</a>
				  </li>
				</ul>
            </div>
            <div class="col-2">
                <button type="button" class="btn btn-outline-success">Dec�rame</button>
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
	        	<form action="usuario" method="post">
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
		                <label for="txtClave" class="col-3 col-form-label margen">Contrase�a</label>
		                <div class="col-5">
		                    <input type="password" name="txtClave" class="form-control" placeholder="Ingrese contrase�a" required>
		                </div>
		            </div>
				    <br>
				    <br>      		            
		            <div class="form-group row">
		                <label class="col-2">&nbsp;</label>
		                <div class="input-group col-3">
		                    <button type="submit" class="btn btn-outline-primary tamano" name="btns" value="v">Ingresar</button>
		                </div>
		                <div class="col-5">

		                	<p style="text-align:left;">Eres nuevo? Reg�strate<a href="cli_serv?btns=m_f_r">aqu�</a></p>
		            	</div>
		            </div>
		        </form>
        	</div>
        	<div class="col-3">
        	</div>
        	<br>
		</div>
		<main>		
				<section>
					<figure3>
						<img src="img/Crud/muchosAmbientes.jpg"alt="">
						<figcaption></figcaption>
					</figure3>
					<br>
					<br>
				</section>
			<br>
		</main>
		<br>
			
     <footer class="row">
            <div class="col-md-3">
             <br>  <br>  <br>
              
               <img src="img/Planes/LogoDecorame.png" alt="Facebook">
            </div>
			<div class="col-md-4">
                <ul class="nav flex-column">
				  <li class="nav-item">
				    <a class="nav-link" href="Index.jsp">Con�cenos</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Test.jsp">�Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Planes.jsp">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="RegUsuario.jsp">Clientes</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Contacte.jsp">Cont�ctenos</a>
				  </li>
				</ul>
            </div>
            <div class="col-md-2">
            	<div class="row">
            		<div class="col-md-12">
            			<button type="button" class="btn btn-success" >  Dec�rame</button>
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
            			<button type="button" class="btn btn-success" disabled>S�guenos en:</button>
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