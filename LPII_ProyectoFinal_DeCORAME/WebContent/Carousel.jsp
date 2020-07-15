<!DOCTYPE html>
<html lang="en">
<head>
  <title>carousel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
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
          <p style=" text-align: left; background-color:DodgerBlue;  font-size: 16px;">¿No sabes por dónde empezar con la decoración de tu hogar? Es normal tener la idea desordenada en la cabeza y no saber llevarla a cabo.</p>
          <p style=" text-align: left; background-color:DodgerBlue;  font-size: 16px;">Descubre cual es tu estilo y empieza el viaje hacia la casa de tus sueños, saberlo te ayudará a tomar mejores decisiones.</p>
           <p><a class="btn btn-warning" href="Test.jsp" role="button">EMPEZAR AHORA EL TEST</a></p>
        </div>
      </div>

      <div class="item">
        <img src="img/Portada/p8.jpg" alt="Chicago" style="width:100%;  height:400px;">
        <div class="carousel-caption">
          <h3 style="text-align: center; font-size: 35px;color: green;text-transform:none; font-family:Times, serif;">Estilo Romántico</h3>
          <p style="font-size: 20px;"> El estilo romántico en la decoración de interiores no es de los más conocidos pero aunque no tenga mucha popularidad sí tiene sus adeptos.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="img/Portada/p7.jpg" alt="New York" style="width:100%;  height:400px;">
        <div class="carousel-caption">
          <h3 style="text-align: center; font-size: 35px;color: green;text-transform:none; font-family:Times, serif;">Estilo Rústico</h3>
          <p style="font-size: 20px;">Estilo Rústico Naturalidad, elegancia descuidada y un ambiente natural, esto es lo caracteriza a la decoración de interiores rústicos.</p>
        </div>
      </div>
      
      <div class="item">
        <img src="img/Portada/p9.jpg" alt="New York" style="width:100%;  height:400px;">
        <div class="carousel-caption">
          <h3 style="text-align: center; font-size: 35px;color: Blue;text-transform:none; font-family:Times, serif;">MID CENTURY</h3>
          <p style=" font-size: 20px;">. El estilo Mid Century hace referencia al modernismo estadounidense, un legado de evolución que se adapta a la vida contemporánea, te mostramos cómo ha evolucionado el estilo hasta las casas de hoy. </p>
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

</body>
</html>
