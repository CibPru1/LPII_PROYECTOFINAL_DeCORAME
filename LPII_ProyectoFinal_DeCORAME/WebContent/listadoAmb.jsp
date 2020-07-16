<!DOCTYPE html>
<%@page import="com.decorame.beans.AmbienteDTO"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" 
	  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="css/estilos2.css" rel="stylesheet">
</head>
<body>

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
				    <a class="nav-link" href="Planes.jsp">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="RegUsuario.jsp">Clientes</a>
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

	<div class="container" action="ambiente">
		<h2 style="text-align: center; font-size: 20px;color: green; font-style:italic; text-transform:none;">Listado de Ambientes</h2>

	</div>
	
	<div class="container" style="height: 450px;padding-top:50px;" class="row">
		<table class="table">
		

			<tr> <%--Cabecera --%>
				<th></th>
				<th>IdAmbiente</th>
				<th>Nombre</th>
				<th></th>
				<th></th>
			</tr>

		<% 
			//codigo java, captura el listado enviado desde el servlet(como atributo) y mostrarlo
			ArrayList<AmbienteDTO> lista=(ArrayList<AmbienteDTO>)request.getAttribute("listadito");
			
			//--muestra los datos, si la lista tiene datos
			if(lista != null){
				for(AmbienteDTO x: lista){
				%>
					
				<tr class="grilla_campo">
					<td></td>
					<td><%=x.getIdAmbiente()  %></td>
					<td><%=x.getNombre()  %></td>
					<td></td>					
					<td></td>
				</tr>
		
				<% 		
				}
			}
		%>

		</table>
		
		<a class="btn btn-secondary" href="CrudServicios.jsp">Regresar</a>
	</div>

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
				    <a class="nav-link" href="Planes.jsp">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="RegUsuario.jsp">Clientes</a>
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



</body>
</html>

