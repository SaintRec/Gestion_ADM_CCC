<?php
session_start();
if(!isset($_SESSION["user_id"]) || $_SESSION["user_id"]==null){
	print "<script>alert(\"Acceso invalido!\");window.location='login.php';</script>";
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Página Principal</title>

    <!-- logo -->
    <link href="/imagenes/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <!-- bootstrap temas -->
    <link href="/css/1bootstrap.min.css" rel="stylesheet">
    <link href="/css/css-bright.css" rel="stylesheet">
    <!-- fuente -->
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <!-- animacion boton -->
    <link rel="stylesheet" href="/css/animate.css">
    <!--<link rel="stylesheet" href="../../../cdn.jsdelivr.net/animatecss/3.1.0/animate.css">-->
    <!-- scroll -->
    <link href="/css/scrolling-nav.css" rel="stylesheet">
    <!-- fuentes -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,300,400,700' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:light' rel='stylesheet' type='text/css'>
    <script src="js/sweetalert2.all.js"></script>
</head>

<body>


    <div class="container">
        <br>
        <nav class="navbar navbar-expand-lg navbar-light bg-light border border-danger rounded">
            &nbsp;&nbsp;&nbsp;
            <a class="navbar-brand" href="#">
                <img src="/imagenes/Arca_continental_logo.png" alt="Arca Continental" height="45px" width="75px">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./php/logout.php">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>
        <br>
        <div class="card-deck">
            <div class="card border border-danger rounded">
                <img class="card-img-top" src="https://mc.qcloudimg.com/static/img/2742c21902443c72d3b0e198b7c49efb/MySQL.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Base de datos</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    <p class="card-text">
                        <center>
                                <button type="button" class="btn btn-outline-danger">Ingresar</button>
                        </center>
                    </p>
                </div>
            </div>
            <div class="card border border-danger rounded">
                <img class="card-img-top" src="http://imagen.ula.ve/download/file/fid/2285" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Estadisticas</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    <p class="card-text">
                        <center>
                                <button type="button" class="btn btn-outline-danger" href="#">Ingresar</button>
                        </center>
                    </p>
                </div>
            </div>
            <div class="card border border-danger rounded">
                <img class="card-img-top" src="https://www.recompra.es/images/sampledata/asimages/main_menu/solicitud.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Solicitudes</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    <p class="card-text">
                        <center>
                                <button type="button" class="btn btn-outline-danger">Ingresar</button>
                        </center>
                    </p>
                </div>
            </div>
            <div class="card border border-danger rounded">
                <img class="card-img-top" src="https://images-na.ssl-images-amazon.com/images/I/51eFJFSBSLL.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title center">Cotizacion</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    <p class="card-text">
                        <center>
                                <button type="button" class="btn btn-outline-danger">Ingresar</button>
                        </center>
                    </p>
                </div>
            </div>
        </div>

    </div>


</body>

</html>