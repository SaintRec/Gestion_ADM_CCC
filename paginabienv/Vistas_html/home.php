<?php
session_start();
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == null) {
    print "<script>alert(\"Acceso invalido!\");window.location='index.php';</script>";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Inicio</title>
    <!-- logo -->
    <link href="/imagenes/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <!-- bootstrap temas -->
    <script src="/bootstrap/jquery.min.js"></script>
    <link href="/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="/bootstrap/bootstrap.js"></script>
    <link href="/css/scrolling-nav.css" rel="stylesheet">
    <!-- fuentes -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,300,400,700' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:light' rel='stylesheet' type='text/css'>
    <script src="/bootstrap/jquery.min.js"></script>
    <!-- <script src="js/sweetalert2.all.js"></script> -->
    <script type="text/javascript" src="/controlador/app.js"></script>
    <link rel="stylesheet" href="/bootstrap/dashboard.css">
    <script type="text/javascript" src="/bootstrap/Chart.min.js"></script>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Lato'>
</head>

<body>

    <div class="container">
        <br>
        <nav class="navbar navbar-expand-lg navbar-light bg-light border border-danger rounded">
            &nbsp;&nbsp;&nbsp;
            <a class="navbar-brand" href="home.php">
                <img src="/imagenes/Arca_continental_logo.png" alt="Arca Continental" height="45px" width="75px">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href='home.php'>Inicio
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">Welcome,
                            <?php echo $_SESSION['user_name']; ?>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#"><span data-feather="user"></span>&nbsp;Perfil</a>
                            <a class="dropdown-item" href="#"><span data-feather="edit"></span>&nbsp;Act. Datos</a>
                            <div class="dropdown-divider"></div>
                            
                            <a class="dropdown-item" href="./php/logout.php"><span data-feather="log-out"></span>&nbsp;Salir</a>
                        </div>
                    </li>
                </ul>
                &nbsp;&nbsp;&nbsp;
            </div>
        </nav>
        <br>
        <div class="container">
            <div id="contenido">
                <div class="card-deck">
                    <div class="card border border-danger rounded">
                        <img class="card-img-top" src="https://mc.qcloudimg.com/static/img/2742c21902443c72d3b0e198b7c49efb/MySQL.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Base de datos</h5>
                            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                            <p class="card-text">
                                <center>
                                    <button type="button" class="btn btn-outline-danger" href="#" id="db">
                                        </a>Ingresar</button>
                                </center>
                            </p>
                        </div>
                    </div>
                    <div class="card border border-danger rounded">
                        <img class="card-img-top" src="https://www.definicionabc.com/wp-content/uploads/estadistica.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Estadisticas</h5>
                            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                            <p class="card-text">
                                <center>
                                    <button type="button" class="btn btn-outline-danger" href="#" id="est">Ingresar</button>
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
                                    <button type="button" class="btn btn-outline-danger" href="#" id="solt">Ingresar</button>
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
                                    <button type="button" class="btn btn-outline-danger" href="#" id="pdf">Ingresar</button>
                                </center>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Icons -->
<script src="/bootstrap/feather.min.js"></script>
<script>
    feather.replace()
</script>

    <footer class="page-footer font-small blue pt-4">

        <div class="footer-copyright text-center py-3">© 2018 Copyright
            <a href="https://mdbootstrap.com/bootstrap-tutorial/">
                <font color="00000">by SGAP</font>
            </a>
        </div>


    </footer>

</body>

</html>