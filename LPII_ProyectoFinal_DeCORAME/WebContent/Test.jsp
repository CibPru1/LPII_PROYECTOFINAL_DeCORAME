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
<jsp:include page="RArriba.jsp"></jsp:include>
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

<jsp:include page="Refabajo.jsp"></jsp:include>


</body>
</html>