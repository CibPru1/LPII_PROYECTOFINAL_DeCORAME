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
				    <a class="nav-link" href="Index.jsp">Conócenos</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Test.jsp">¿Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Servicios.jsp">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="login.jsp">Clientes</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Contacte.jsp">Contáctenos</a>
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
				<br>
			</main>
			
		<div id="seccion" style="height: 450px;padding-top:50px;" class="row">
        	<div class="col-3"></div>
        	<div class="col-6">
	        	<form action="ambiente">
		            <h2 style="text-align:center;">Mantenimiento de Ambientes</h2>
		            <hr>
		            
					  <div class="form-group row">
					    <label for="inputIdAmbiente" class="col-sm-2 col-form-label">IdAmbiente</label>
					    <div class="col-sm-10">
					      <input type="number" class="form-control" id="IdAmbiente" name= "IdAmbiente">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label for="inputAmbiente" class="col-sm-2 col-form-label">Ambiente</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="Ambiente" name= "txtAmbiente">
					    </div>
					  </div>
		            
				    <br>
				    <br>      		            
		            <button type="submit" class="btn btn-outline-primary tamano" 	name="btns" value="r">Registrar</button>
					<button type="submit" class="btn btn-info" 		name="btns" value="a">Actualizar</button>
					<button type="submit" class="btn btn-danger" 	name="btns" value="e">Eliminar</button>
					<button type="submit" class="btn btn-secondary" 	name="btns" value="l">Listar</button>
		        </form>
		        	
		     <br>   	
			<%-- Muestra el atributo mensaje --%>
			<p>${mensaje}</p>
			
			<br>
			<p>Ir a Carrito de compras <a href="carrocompras.jsp">aquí</a></p>
        	</div>
        	<br>
			<br>
			<br>
			<br>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
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
				    <a class="nav-link" href="Index.jsp">Conócenos</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Test.jsp">¿Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Servicios.jsp">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="login.jsp">Clientes</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="Contacte.jsp">Contáctenos</a>
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