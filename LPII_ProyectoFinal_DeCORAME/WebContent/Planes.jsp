Servicios.jsp<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="css/estilos2.css" rel="stylesheet">


</head>
<body>

<div id="contenedor">

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

	<main>
		<section>
			<br>
			<br>
			<br>
			<br>
			<div>
				<h1 style="text-align: center; font-size: 50px;color: green; font-style:italic; text-transform:none;">Elije tu plan Perfecto</h1>
				<p>El diseño es algo muy personal y tu felicidad es importante para nosotros. 
				Trabajarás con un diseñador de interiores uno a uno, todo online, para crear 
				el espacio de tus sueños.</p>
			</div>

			<figure>
				<img src="img/Planes/PlanLight.jpg"alt="">
				<figcaption></figcaption>
				<h2 style="font-family:verdana;"  class="text-center">Plan Light</h2>
				<h1>S/ 308.00</h1>
	            <p class="lead">¿Quieres darle un aire nuevo a tu decoración</p>
	            <ul>
	            	<li>Dos propuestas de diseño</li>
	            	<li>Selección de complementos </li>
	            	<li>Entrega 3/5 días hábiles</li>
	            	<li>Hasta 3 revisiones</li>
	            	<li>Asistencia 2 semanas post diseño </li>
	            </ul>
	             <p><a class="btn btn-outline-success" href="carrocompras.jsp" role="button">Comprar</a></p>
			</figure>
			<figure>
				<img src="img/Planes/PlanFull.jpg"alt="">
				<figcaption></figcaption>
				<h2 style="font-family:verdana;"  class="text-center">Plan Full</h2>
				<h1>S/ 776.00</h1>
	            <p class="lead">¿Tienes un espacio vacío pero no sabes por dónde empezar para amueblarlo y decorarlo?</p>
	            <ul>
	            	<li>Dos propuestas de diseño</li>
	            	<li>Selección de complementos </li>
	            	<li>Selección de mobiliario</li>
	            	<li>Planos de distribución</li>
	            	<li> Fotomontaje producto real</li>
	            	<li>Entrega 3/5 días hábiles</li>
	            	<li>Revisiones ilimitadas </li>
	            	<li> Asistencia 4 semanas post diseño</li>
	            </ul>
	             <p><a type="button" class="btn btn-outline-success" href="carrocompras.jsp" role="button">Comprar</a></p>
			</figure>
		</section>
		<br>
		<br>
	</main>
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


</body>
</html>