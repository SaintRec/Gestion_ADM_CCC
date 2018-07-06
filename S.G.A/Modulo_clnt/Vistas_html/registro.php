<?php session_start(); ?>
<html>
	<head>
		<title>Formulario de Registro</title>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Página Principal</title>

    <!-- favicon -->
    <link href="images/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <!-- css class -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/css-bright.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- animate -->
    <link rel="stylesheet" href="css/animate.css">
    <!--<link rel="stylesheet" href="../../../cdn.jsdelivr.net/animatecss/3.1.0/animate.css">-->
    <!-- scroll Plugin -->
    <link href="css/scrolling-nav.css" rel="stylesheet">
    <!-- fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,300,400,700' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:light' rel='stylesheet' type='text/css'>
    <script src="js/sweetalert2.all.js"></script>
    <!-- JQUERY -->

    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script src="js/jquery.countdown.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <script src="Página.js"></script>

	</head>
	<body>
	<?php include "php/navbar.php"; ?>
<div class="container">
<div class="row">
<div class="col-md-6">
		<h2>Registro</h2>

		<form role="form" name="registro" action="php/registro.php" method="post">
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

		<script src="js/valida_registro.js"></script>
	</body>
</html>