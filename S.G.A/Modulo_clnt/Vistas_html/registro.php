<?php session_start(); ?>
<html>
	<head>
		<title>Formulario de Registro</title>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Página Principal</title>
 <!-- Icono -->
 <link href="../Imagenes/favicon.ico" type="image/x-icon" rel="shortcut icon">
 <!-- clases de css -->
 <link href="../CSS/bootstrap.min.css" rel="stylesheet">
 <link href="../CSS/css-bright.css" rel="stylesheet">
 <!-- fuentes -->
 <link rel="stylesheet" href="../CSS/font-awesome.min.css">
 <!-- animar boton -->
 <link rel="stylesheet" href="../CSS/animate.css">
 <!--<link rel="stylesheet" href="../../../cdn.jsdelivr.net/animatecss/3.1.0/animate.css">-->
 <!-- arrastrar -->
 <link href="../CSS/scrolling-nav.css" rel="stylesheet">
 <!-- fuentes -->
 <link href='../Letras1/CSS/' rel='stylesheet'
	 type='text/css'>
 <link href='../Letras2/CSS' rel='stylesheet' type='text/css'>
 
 <!--Librerias -->
 
 <script src="../Controlador/jquery-3.3.1.min.js"></script>
 <script src="../Controlador/jquery.countdown.js"></script>
 <script src="../Controlador/sweetalert2.all.js"></script>
	 <script src="../Controlador/html5shiv.min.js"></script>
 <script src="../Controlador/valida_registro.min.js"> </script>
 <script src="../Controlador/General.js"> </script>

	</head>
	<body>
	<?php include "componentes/navbar.php"; ?>
<div class="container">
<div class="row">
<div class="col-md-6">
		<h2>Registro</h2>

		<form role="form" name="registro" action="../conexion_m/registro.php" method="post">
		  <div class="form-group">
		    <label for="username">Nombre de usuario</label>
		    <input type="text" class="form-control" id="username" name="username" placeholder="Nombre de usuario">
		  </div>
		  <div class="form-group">
		    <label for="fullname">Nombre Completo</label>
		    <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Nombre Completo">
		  </div>
		  <div class="form-group">
		    <label for="email">Correo Electronico</label>
		    <input type="email" class="form-control" id="email" name="email" placeholder="Correo Electronico">
		  </div>
		  <div class="form-group">
		    <label for="password">Contrase&ntilde;a</label>
		    <input type="password" class="form-control" id="password" name="password" placeholder="Contrase&ntilde;a">
		  </div>
		  <div class="form-group">
		    <label for="confirm_password">Confirmar Contrase&ntilde;a</label>
		    <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirmar Contrase&ntilde;a">
		  </div>

		  <button type="submit" class="btn btn-default">Registrar</button>
		</form>
		</div>
		</div>
		</div>

		<script src="../Controlador/valida_registro.js"></script>
	</body>
</html>