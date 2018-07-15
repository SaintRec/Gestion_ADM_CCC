<?php session_start(); 
?>
			
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Login</title>
	<!-- logo -->
	<link href="/imagenes/favicon.ico" type="image/x-icon" rel="shortcut icon">
	<!-- bootstrap temas -->
	<link href="/css/1bootstrap.min.css" rel="stylesheet">
	<!-- fuente -->
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<!-- animacion boton -->
	<link rel="stylesheet" href="/css/animate.css">
	<link rel="stylesheet" href="/login-register.css">
	<script src="/login-register.js" type="text/javascript"></script>

	<!--<link rel="stylesheet" href="../../../cdn.jsdelivr.net/animatecss/3.1.0/animate.css">-->
	<!-- scroll -->
	<link href="/css/scrolling-nav.css" rel="stylesheet">
	<!-- fuentes -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,300,400,700' rel='stylesheet'
	 type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:light' rel='stylesheet' type='text/css'>
	<script src="js/sweetalert2.all.js"></script>
	<!-- JQUERY -->
	<script type="text/javascript" src="/controlador/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/controlador/js/jquery.countdown.js"></script>
	<script type="text/javascript" src="/controlador/html5shiv.min.js"></script>
	<script type="text/javascript" src="/controlador/respond.min.js"></script>
	<script type="text/javascript" src="/controlador/Página.js"></script>
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
						<label for="password">Contraseña</label>
						<input type="password" class="form-control" id="password" name="password" placeholder="Contraseña">
					</div>

					<button type="submit" class="btn btn-default">Acceder</button>
				</form>
			</div>
		</div>
	</div>

	

	<script src="/controlador/valida_login.js"></script>

</body>

</html>