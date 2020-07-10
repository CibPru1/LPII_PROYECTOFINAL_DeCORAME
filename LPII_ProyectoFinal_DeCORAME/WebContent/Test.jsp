<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<style>
.pregresp {
border: 1px solid #7DA5E0;
padding: 15px;
margin: 10px;
font-family: Arial, Verdana, Helvetica, sans-serif;
font-size: 15px;
font-weight: bold;
}

.pregunta {
color: #7DA5E0;
}

.respuestas {
color: #000000;
}
h1 { text-align: center;
  font-size: 30px;
  color: green;
  font-style:italic; text-transform:none;
}
p { text-align: center;
  font-size: 15px;
  color: black;
   text-transform:none;
}
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.desc {
  padding: 15px;
  text-align: center;
}
* {
  box-sizing: border-box;
}

.box {
  float: left;
  width:25%;
  padding: 5px;
  height: 350px;
}

.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
img:hover {
  opacity: 0.5;
}
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 350px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}
p {margin:auto 10% auto 15%;}
 h1 { text-align: center;
  font-size: 30px;
  color: green;
   text-transform:none; font-family:Georgia, "Times New Roman", Times, serif;}
</style>
<link rel="stylesheet" href="css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
<jsp:include page="RArriba.jsp"></jsp:include>
<br> <br> <br> <br>
<h1> ¿CUÁL ES TU ESTILO DECORATIVO?</h1>
<p>Elige la definición de estilo que más te atrae: </p>
<div class="pregresp">
  <div style="background-color:Gray; color:white;font-family:courier; font-size:200%; text-align:center;" class="pregunta">1. ¿Pasado o presente?<br /> 
  </div>
  <br />
  <div class="respuestas">
   <div class="dropdown">
    <input type="radio" name="preg1" value="1" /> Contemporáneo<br />
    <div class="dropdown-content">
  <img src="img/Test/contemporaneo3.jpg" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Contemporáneo</div>
  </div>
    </div>
    <br /> <br />
      <div class="dropdown">
    <input type="radio" name="preg1" value="1" /> Rústico francés<br />
    <div class="dropdown-content">
  <img src="img/Test/rusticof.jpg" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Rústico francés</div>
  </div>
    </div>
    <br /> <br />
      <div class="dropdown">
    <input type="radio" name="preg1" value="1" /> Tradicional<br />
    <div class="dropdown-content">
  <img src="img/Test/tradicional.JPG" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Tradicional</div>
  </div>
    </div>
   
  </div>
</div>
<br /> <br />
<div class="pregresp">
  <div  style="background-color:Gray; color:white;font-family:courier; font-size:200%; text-align:center;"class="pregunta">2. ¿Lleno de color o neuto?<br />
  </div>
  <br />
  <div class="respuestas">
       <div class="dropdown">
    <input type="radio" name="preg1" value="1" /> Tradicional<br />
    <div class="dropdown-content">
  <img src="img/Test/tradicional1.jpg" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Tradicional</div>
  </div>
    </div>
    <br /> <br />
       <div  class="dropdown">
    <input type="radio" name="preg1" value="1" /> Contemporáneo<br />
    <div class="dropdown-content">
  <img src="img/Test/contemporaneo2.jpg" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Contemporáneo</div>
  </div>
    </div>
    <br /> <br />
       <div class="dropdown">
    <input type="radio" name="preg1" value="1" /> Ecléctico<br />
    <div class="dropdown-content">
  <img src="img/Test/eclectico.jpg" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Ecléctico</div>
  </div>
    </div>
    <br /> <br />
  </div>
</div>
<br />
<div class="pregresp">
  <div  style="background-color:Gray; color:white;font-family:courier; font-size:200%; text-align:center;"class="pregunta">3. ¿Menos es más o más es más?<br />
  </div>
  <br /><br />
  <div class="respuestas">
     <div class="dropdown">
    <input type="radio" name="preg1" value="1" /> Moderno<br />
    <div class="dropdown-content">
  <img src="img/Test/moderno.JPG" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Moderno</div>
  </div>
    </div>
    <br /> <br />
   <div class="dropdown">
    <input type="radio" name="preg1" value="1" /> Escandinavo<br />
    <div class="dropdown-content">
  <img src="img/Test/escandinavo.jpg" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Escandinavo</div>
  </div>
    </div> <br /> <br />
    <div class="dropdown">
    <input type="radio" name="preg1" value="1" /> Contemporáneo<br />
    <div class="dropdown-content">
  <img src="img/Test/contemporaneo.jpg" alt="Cinque Terre" width="300" height="200">
  <div class="desc">Contemporáneo</div>
  </div>
    </div>
  </div>
</div>

<div class="container">
  
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">ENVIAR</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      <br>
      <div class="col-md-12 mb-3">
							<label for="nombre">Nombre: </label> <input type="text"
								id="nombre" name="txtNombre" class="form-control"
								placeholder="Ingrese su Nombre" required>
						</div>
       <div class="col-md-12 mb-3">
							<label for="nombre">Email: </label> <input type="text"
								id="nombre" name="txtDescripcion" class="form-control"
								placeholder="Ingrese su email" required>
						</div>
        <div class="modal-body">
          <p style=" color:black;font-family:courier; font-size:200%; text-align:center;">Sino has recibido el email revisa que has escrito tu email bien, sino me puedes escribir a hola@DeCORANDO.com</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">ACEPTAR</button>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="Refabajo.jsp"></jsp:include>
<br> 
</body>
</html>