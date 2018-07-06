<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Bienvenido</title>

 
    <!-- logo -->
    <link href="../Imagenes/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <!-- bootstrap temas -->
    <link href="../CSS/bootstrap.min.css" rel="stylesheet">
    <link href="../CSS/css-bright.css" rel="stylesheet">
    <!-- fuente -->
    <link rel="stylesheet" href="../CSS/font-awesome.min.css">
    <!-- animacion boton -->
    <link rel="stylesheet" href="../CSS/animate.css">
    <!--<link rel="stylesheet" href="../../../cdn.jsdelivr.net/animatecss/3.1.0/animate.css">-->
    <!-- scroll -->
    <link href="../CSS/scrolling-nav.css" rel="stylesheet">
    <!-- fuentes -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,300,400,700' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:light' rel='stylesheet' type='text/css'>
	<script src="js/sweetalert2.all.js"></script>

    <!-- JQUERY -->

    <script type="text/javascript" src="../Controlador/jquery-3.3.1.min.js"></script>
    <script src="../Controlador/js/jquery.countdown.js"></script>

    <script src="../Controlador/html5shiv.min.js"></script>
    <script src="../Controlador/respond.min.js"></script>
    <script src="../Controlador/Página.js"></script>

</head>

<body data-spy="scroll" data-target=".navbar-fixed-top">


<div class="container-fluid">
  <section id="services">
      <div class="row About-Us-left">
          <section class="col-lg-8 col-md-12 se-container-left" data-sr='wait 0.1s, then enter bottom and hustle 50px over 2s'>
              <div class="se-slope-left">
                  <article class="se-content-left">
                      <!--<div class="arrow-left"></div>-->
                      <h3  style="font-size:30px">Bienvenido al Sistema  de Gestión y administración de productos</h3>
                      
                      <h4></h4>
                      <p style="font-size:20px">
                        Cree rápidamente una tabla de precios con sus productos favoritos de Arca Continental para su negocio .
                      </p>
                      <section class="col-lg-10 col-md-10 se-container-left" data-sr='wait 0.1s, then enter bottom and hustle 50px over 2s'>
                          <section class="col-lg-6 col-md-6 se-container-center" data-sr='wait 0.1s, then enter bottom and hustle 50px over 2s'>  
                      <a style="font-size:15px" class="btn btn-primary" href="login.php" role="button" data-anijs="if: mouseover, do: pulse animated">Ingresar</a>
                      </section>
                      <section class="col-lg-6 col-md-6 se-container-center" data-sr='wait 0.1s, then enter bottom and hustle 50px over 2s'>
                      <a style="font-size:15px" class="btn btn-primary" href="registro.php" role="button" data-anijs="if: mouseover, do: pulse animated">Registrarse</a></p>
                    </section>
                      </section>
                  </article>
              </div>
          </section>
          <section class="col-lg-4 col-md-12 se-container-left" data-sr='wait 0.1s, then enter bottom and hustle 50px over 2s'>
              <img alt="Coca Cola" src="Imagenes/arcacontal.svg" style="width:120%;height:100%;border:0;margin-left:-15%">
          </section>
      </div>
  </section>
</div>



</body>

</html>