<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Servicios.css">
<title>Servicios</title>
</head>
<jsp:include page="RArriba.jsp"></jsp:include>
<br>
<br>
<body>
<p></p>
			<% String msjCli = (String)request.getAttribute("mensaje"); 
				if(msjCli != null){
			%>
			<div class="alert alert-success" role="alert">
			  ${mensaje}
			</div>
			<%} %>


 <h1>SERVICIOS</h1>
<div class="galeria">
    <h2>ASESORAMIENTO</h2>
     <p>Te asesoramos a diseñar tu ambiente de acuerdo a tu preferencia </p> 
    <div class="linea">  </div>
    <div class="contenedor-imagenes">
  
      <div class="imagen">
   
        <img src="img\Servicios\cocina.jpg" alt=""> 
        <div class="overlay">
     
        <p class= "texto">Queremos ser parte de tu día a día y porque no en donde engríes a tu familia con un rico postre o una comida criolla </p>
        
          <p><a class="btn btn-outline-success" href="Planes.jsp" role="button">Mas Info</a></p>
         </div>
         
      </div>
       <div class="imagen">
         <img src="img\Servicios\dormitorio.jpg"  alt="" > 
         <div class="overlay">
             
          <p class= "texto">Vive la magia de diseñar el dormitorio de tus sueños </p>
        
          <p><a class="btn btn-outline-success" href="Planes.jsp" role="button">Mas Info</a></p>
        </div>
       </div>
       <div class="imagen">
        <img src="img\Servicios\WalkInclose.jpg" alt="" > 
        <div class="overlay">
               <p class= "texto">¿No sabes como organizar tu closet? Nosotros te asesoramos a diseñar cada estilo y puedas lucir toda la ropa </p>
        
          <p><a class="btn btn-outline-success" href="Planes.jsp" role="button">Mas Info</a></p>
        </div>
      </div>
       <div class="imagen">
        <img src="img\Servicios\sala.jpg" alt="" > 
        <div class="overlay">
               <p class= "texto">Momentos inolvidables se viven en familia compartiendo en un ambiente acogedor, te asesoramos con el diseño para que tu sala pueda vivir junto a tu familia bellos recuerdos</p>
        
          <p><a class="btn btn-outline-success" href="Planes.jsp" role="button">Mas Info</a></p>
        </div>
      </div>
  
    <div class="imagen">
        <img src="img\Servicios\oficina.jpg" alt=""> 
        <div class="overlay">
              <p class= "texto">Sientéte como en casa, tu oficina es el espacio que debes sentir todas las buenas energías, con nuestro diseño y tus preferencias lo podemos lograr</p>
          <p><a class="btn btn-outline-success" href="Planes.jsp" role="button">Mas Info</a></p>
         </div>
         
      </div>
       <div class="imagen">
        <img src="img\Servicios\SalaDeJuegos.jpg" alt="" > 
        <div class="overlay">
             <p class= "texto">¿Has pensado en tener una Sala de Juegos? Estamos para ti, te asesoramos para que tu ambiente quede como una sala de juegos de pelicula</p>
        
          <p><a class="btn btn-outline-success" href="Planes.jsp" role="button">Mas Info</a></p>
        </div>
      </div>
    </div>
 </div>
</body>
<br>
<jsp:include page="Refabajo.jsp"></jsp:include>
</html>