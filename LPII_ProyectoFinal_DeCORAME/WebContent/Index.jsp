<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
       <link rel="stylesheet" href="css/layout.css" type="text/css">
       <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/index.css" type="text/css">
   <link rel="stylesheet" href="css/estilos.css" type="text/css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <title>HOME</title>
 </head>
  <body>
    <header>
     <jsp:include page="RArriba.jsp"></jsp:include>
    </header>
<br> <br>
    <section><div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/Portada/p10.jpg" alt="Los Angeles" style="width:100%; height:400px;">
        <div class="carousel-caption">
          <h3 style="text-align: center; font-size: 35px;color: green;text-transform:none; font-family:Times, serif;">[TEST]Estilo Deco</h3>
          <p style=" text-align: left; background-color:DodgerBlue;  font-size: 16px;">�No sabes por d�nde empezar con la decoraci�n de tu hogar? Es normal tener la idea desordenada en la cabeza y no saber llevarla a cabo.</p>
          <p style=" text-align: left; background-color:DodgerBlue;  font-size: 16px;">Descubre cual es tu estilo y empieza el viaje hacia la casa de tus sue�os, saberlo te ayudar� a tomar mejores decisiones.</p>
           <p><a class="btn btn-warning" href="Test.jsp" role="button">EMPEZAR AHORA EL TEST</a></p>
        </div>
      </div>

      <div class="item">
        <img src="img/Portada/p8.jpg" alt="Chicago" style="width:100%;  height:400px;">
        <div class="carousel-caption">
          <h3 style="text-align: center; font-size: 35px;color: green;text-transform:none; font-family:Times, serif;">Estilo Rom�ntico</h3>
          <p style="font-size: 20px;"> El estilo rom�ntico en la decoraci�n de interiores no es de los m�s conocidos pero aunque no tenga mucha popularidad s� tiene sus adeptos.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="img/Portada/p7.jpg" alt="New York" style="width:100%;  height:400px;">
        <div class="carousel-caption">
          <h3 style="text-align: center; font-size: 35px;color: green;text-transform:none; font-family:Times, serif;">Estilo R�stico</h3>
          <p style="font-size: 20px;">Estilo R�stico Naturalidad, elegancia descuidada y un ambiente natural, esto es lo caracteriza a la decoraci�n de interiores r�sticos.</p>
        </div>
      </div>
      
      <div class="item">
        <img src="img/Portada/p9.jpg" alt="New York" style="width:100%;  height:400px;">
        <div class="carousel-caption">
          <h3 style="text-align: center; font-size: 35px;color: Blue;text-transform:none; font-family:Times, serif;">MID CENTURY</h3>
          <p style=" font-size: 20px;">. El estilo Mid Century hace referencia al modernismo estadounidense, un legado de evoluci�n que se adapta a la vida contempor�nea, te mostramos c�mo ha evolucionado el estilo hasta las casas de hoy. </p>
        </div>
      </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</section>
    <main role="wrapper row2" >
     <hr class="featurette-divider">
     <div class="row featurette">
          <div class="col-md-7">
            <h2   class="text-center" style="text-align: center; font-size: 50px;color: green; font-style:italic; text-transform:none; ">�Buscando un dise�ador de interiores?</h2>
            <p class="text-muted" style="text-align: center; font-size:20px; font-style:Courier New; text-transform:none; ">Cu�ntanos sobre ti y tu espacio, para que podamos ofrecerte el proyecto perfecto.
          Trabajamos con tu presupuesto, estilo y espacio �nico. Rellena un formulario muy facilito para que te conozcamos, adj�ntanos fotos y medidas. 
          Cu�ntanos sobre ti y tu espacio, para que podamos ofrecerte el proyecto perfecto. Trabajamos con tu presupuesto, estilo y espacio �nico. 
          Rellena un formulario muy facilito para que te conozcamos, adj�ntanos fotos y medidas.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="img/Principal/P001.JPG" alt="">
          </div>
        </div>
        <br>
        <jsp:include page="Refabajo.jsp"></jsp:include>
      </body>
</html>
