<?php session_start(); ?>
<html>
	<head>
		<title>Formulario de Registro</title>
		<link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css">
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
	<body>
	
	<?php include "php/navbar.php"; ?>
	<div class="container">
	<div class="row">
	<div class="col-md-6">
			<h2>Login</h2>
	
			<form role="form" name="login" action="php/login.php" method="post">
				<div class="form-group">
					<label for="username">Nombre de usuario</label>
					<input type="text" class="form-control" id="username" name="username" placeholder="Nombre de usuario">
				</div>
				<div class="form-group">
					<label for="password">Contrase&ntilde;a</label>
					<input type="password" class="form-control" id="password" name="password" placeholder="Contrase&ntilde;a">
				</div>
	
				<button type="submit" class="btn btn-default">Acceder</button>
			</form>
	</div>
	</div>
	</div>
			<script src="js/valida_login.js"></script>

	</body>
</html>