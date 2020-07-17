<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="JavaScript">
function pregunta(){
    if (confirm('¿Estas seguro de enviar este test?')){
       document.tuformulario.submit()
    }
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link rel="stylesheet" href="css/test.css" type="text/css">

<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	 <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
       <img   width="200" height="70"src="img/Planes/LogoDecorame.png"alt="">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
             <div class="col-8">
            	<ul class="nav nav-pills nav-fill">
				  <li class="nav-item" style=" text-align: right;">
				    <a class="nav-link"  style=" text-align:left; font-size:14px;color: green;text-transform:none; margin:auto 10% auto 20%; font-family:verdana;"href="Index.jsp">Conócenos</a>
				  </li>
				  <li class="nav-item" style=" text-align: right;">
				    <a class="nav-link" style=" text-align:center; font-size: 15px;color: green;text-transform:none; margin:auto 10% auto 20%; font-family:verdana;" href="Test.jsp">¿Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item" style=" text-align: right;">
				    <a class="nav-link"  style="text-align: left; font-size:15px;color: green;text-transform:none; margin:auto 10% auto 20%; font-family:verdana;"href="Servicios.jsp">Servicios</a>
				  </li>
				  <li class="nav-item" style=" text-align: right;">
				    <a class="nav-link" style="text-align:left; font-size:15px;color: green;text-transform:none; margin:auto 10% auto 20%;font-family:verdana;"  href="login.jsp">Clientes</a>
				  </li>
				  <li class="nav-item" style=" text-align: right;">
				    <a class="nav-link"  style=" text-align:left; font-size:15px;color: green;text-transform:none; margin:auto 10% auto 20%;font-family:verdana;" href="Contacte.jsp">Contáctenos</a>
				  </li>
				  <li  class="btn " style=" text-align: right;"> 
				  <button type="button"  class="btn btn-warning" style=" text-align: right; font-size:20px; height:40px; position:relative;top:-2%; left:100%;"><a href="cli_serv?btns=m_f_r">Regístrate</a>
				  <button type="button"  class="btn btn-warning" style=" text-align: right; font-size:20px; height:40px; position:relative;top:-2%; left:100%;"><a href="usuario?btns=v">Ingresa</a>
				  
				</button>
				</ul>
				</div>
        </div>
        </nav>
    </header>
<br> <br> 
<h1  style="text-align: center;font-size: 30px;color: green;font-style:italic; text-transform:none; font-family:Georgia, "Times New Roman", Times, serif;"> ¿CUÁL ES TU ESTILO DECORATIVO?</h1>
<p style=" text-align: center; font-size: 15px;color: black;text-transform:none; margin:auto 10% auto 15%;">Elige la definición de estilo que más te atrae: </p>

<div class="pregresp" style="text-align:center;">
  <div class="pregunta"  style="text-align:center;">1. ¿Pasado o presente?<br /> 
  </div>
  
   <div class="gallery">
    <input   class="desc"TYPE=CHECKBOX name="preg1"/> Contemporáneo<br />  <img src="img/Test/contemporaneo3.jpg" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;">
    </div>
  
      <div class="gallery">
    <input  class="desc" TYPE=CHECKBOX name="preg1"/> Rústico francés<br />  <img src="img/Test/rusticof.jpg" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;"> 
    </div>
      <div class="gallery">
    <input   class="desc"TYPE=CHECKBOX name="preg1"/> Tradicional  <br /> <img src="img/Test/tradicional.JPG" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;">
  </div>
  
    </div>


<br /> 
<div class="pregresp" style="text-align:center;">
  <div class="pregunta" style="text-align:center;">2. ¿Lleno de color o neuto?<br />
  </div>
       <div class="gallery">
    <input TYPE=CHECKBOX name="preg1" /> Tradicional <br><img src="img/Test/tradicional1.jpg" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;">
    </div>
       <div  class="gallery">
    <input TYPE=CHECKBOX name="preg1" /> Contemporáneo <br> <img src="img/Test/contemporaneo2.jpg" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;"><br />
    </div>
       <div class="gallery">
    <input TYPE=CHECKBOX name="preg1" /> Ecléctico <br> <img src="img/Test/eclectico.jpg" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;"><br />
   </div>
  </div>


<br />
<div class="pregresp" style="text-align:center;">
  <div class="pregunta" style="text-align:center;">3. ¿Menos es más o más es más?<br />
  </div>
     <div class="gallery">
    <input TYPE=CHECKBOX name="preg1" /> Moderno <br> <img src="img/Test/moderno.JPG" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;"><br/>
    </div>
  
   <div class="gallery">
    <input TYPE=CHECKBOX name="preg1" /> Escandinavo <br> <img src="img/Test/escandinavo.jpg" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;"><br />
    </div> 
    <div class="gallery">
    <input TYPE=CHECKBOX  name="preg1" /> Contemporáneo  <br><img src="img/Test/contemporaneo.jpg" alt="Smiley face" width="120px" height="150px" style="border:2px solid green; padding:-5;"><br />
  
  </div>
  </div>
 <br>
 <br>

<div class="boton" style="text-align:center;" >
<form name=tuformulario action="Index.jsp">

<input type=button onclick="pregunta()" value="Enviar">
</form>
</div>
<br>
	<br>
			<hr class="featurette-divider">
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


</body>
</html>