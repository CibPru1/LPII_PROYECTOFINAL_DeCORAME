<!doctype html>
<html lang="en">
  <head>
  <style>
  h1 { text-align: center;
  font-size: 30px;
  color: green;
   text-transform:none; font-family:Georgia, "Times New Roman", Times, serif;}
  
  /* GLOBAL STYLES
-------------------------------------------------- */
/* Padding below the footer and lighter body text */

body {
  padding-top: 3rem;
  padding-bottom: 3rem;
  color: #5a5a5a;
}

h2{margin: auto 15% auto 15%;}
.another_h2 {margin-left:15%; margin-right:15%;}
p {margin: auto 15% auto 15%;}
.another_p {margin-left:15%; margin-right:15%;}
div.wrapper{display:block; width:100%; margin:0; padding:0; text-align:left;}
/* CUSTOMIZE THE CAROUSEL
-------------------------------------------------- */

/* Carousel base class */
.carousel {
  margin-bottom: 4rem;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  bottom: 3rem;
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel-item {
  height: 32rem;
  background-color: #777;
}
.carousel-item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 32rem;
}

.active{padding:-5px;  overflow: hidden;
 border:1px solid #ffffff; text-align:center;
}
/* MARKETING CONTENT
-------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .col-lg-4 {
  margin-bottom: 1.5rem;
  text-align: center;
}
.marketing h2 {
  font-weight: 400;
}
.marketing .col-lg-4 p {
  margin-right: .75rem;
  margin-left: .75rem;
}


/* Featurettes
------------------------- */

.featurette-divider {
  margin:2 5rem 0; /* Space out the Bootstrap <hr> more */
}

/* Thin out the marketing headings */
.featurette-heading {
  font-weight: 100;
  line-height: 1;
  letter-spacing: -.05rem;
}


/* RESPONSIVE CSS
-------------------------------------------------- */

@media (min-width: 40em) {
  /* Bump up size of carousel content */
  .carousel-caption p {
    margin-bottom: 1.25rem;
    font-size: 1.25rem;
    line-height: 1.4;
  }

  .featurette-heading {
    font-size: 50px;
  }
}

@media (min-width: 62em) {
  .featurette-heading {
    margin-top: 7rem;
  }
}
  
  
  </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   <link rel="stylesheet" href="css/layout.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">	


    <title>HOME</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

  </head>
  <body>

    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a  style="font-family:courier; font-size:200%;"class="navbar-brand" href="carousel.jsp">DeCORAME</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="col-8">
            	<ul class="nav nav-pills nav-fill">
				  <li class="nav-item">
				    <a class="nav-link" href="#">Conócenos</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">¿Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Clientes</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Contáctenos</a>
				  </li>
				</ul>
            </div>
            <div class="col-2">
                <button type="button" class="btn btn-outline-success">Decórame</button>
            </div>
          
        </div>
      </nav>
    </header>

    <main role="wrapper row2">

      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
 <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
             <img class="one_quarter" src="img/Portada/p3.jpg"  alt="First slide" style="width:20%;heigth:100%">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1 >[TEST]Estilo Deco</h1>
                <p>¿No sabes por dónde empezar con la decoración de tu hogar? Es normal tener la idea desordenada en la cabeza y no saber llevarla a cabo.</p>
<p>Descubre cual es tu estilo y empieza el viaje hacia la casa de tus sueños, saberlo te ayudará a tomar mejores decisiones.</p>
                <p><a class="btn btn-lg btn-primary" href="Test.jsp" role="button">EMPEZAR AHORA EL TEST</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="one_quarter" src="img/Portada/p3.jpg" alt="Second slide" style="width:20%;heigth:100%">
           
          </div>
          <div class="carousel-item">
            <img class="one_quarter" src="img/Portada/p4.jpg" alt="Second slide" style="width:20%;heigth:100%">
           
          </div>
           <div class="carousel-item">
            <img class="one_quarter" src="img/Portada/p5.jpg" alt="Second slide" style="width:20%;heigth:100%">
            
          </div>
           <div class="carousel-item">
            <img class="one_quarter" src="img/Portada/p6.jpg" alt="Second slide" style="width:20%;heigth:100%">
          </div>
      
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>


    

        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 style="font-family:verdana;"  class="text-center">¿Buscando un diseñador de interiores?</h2>
            <p class="lead">Cuéntanos sobre ti y tu espacio, para que podamos ofrecerte el proyecto perfecto.
          Trabajamos con tu presupuesto, estilo y espacio único. Rellena un formulario muy facilito para que te conozcamos, adjúntanos fotos y medidas. 
          Cuéntanos sobre ti y tu espacio, para que podamos ofrecerte el proyecto perfecto. Trabajamos con tu presupuesto, estilo y espacio único. 
          Rellena un formulario muy facilito para que te conozcamos, adjúntanos fotos y medidas.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="img/Principal/P001.JPG" alt="">
          </div>
        </div>

      </div><!-- /.container -->
 
    </main>
 <hr class="featurette-divider">
  </body>
    <footer class="row">
    
            <div class="col-md-3">
             <br>  <br>  <br>
               <p style="background-color:white; color:black;font-family:courier; font-size:200%; text-align:center;">DeCORAME</p>
            </div>
			<div class="col-md-4">
                <ul class="nav flex-column">
				  <li class="nav-item">
				    <a class="nav-link" href="#">Conócenos</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">¿Sabes como decorarme?</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Servicios</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Clientes</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Contáctenos</a>
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
            			<button type="button" class="btn btn-success" disabled>Siguenos en Redes</button>
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
     
</html>
