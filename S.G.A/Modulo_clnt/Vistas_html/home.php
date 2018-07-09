<?php
/*
session_start();
if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == null) {
	print "<script>alert(\"Acceso invalido!\");window.location='login.php';</script>";
}
*/
?>

<!DOCTYPE html>
<html lang="en">

<head>
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
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,300,400,700' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:light' rel='stylesheet' type='text/css'>
	
    <!--Librerias -->
    
    <script src="../Controlador/jquery-3.3.1.min.js"></script>
    <script src="../Controlador/jquery.countdown.js"></script>
    <script src="../Controlador/Página.js"></script>
    <script src="../Controlador/sweetalert2.all.js"></script>
     <script src="../Controlador/General.js"> </script>

<style>
    html {zoom: 160%;}
</style>

</head>

<body data-spy="scroll" data-target=".navbar-fixed-top" >

    <!-- Barra navegaciòn-->
    <nav class="navbar navbar-default navbar-fixed-top ">
        <div class="container-fluid">
            <div class="navbar-header page-scroll">
                <a class="navbar-brand" href="#">
                    <img alt="Coca Cola" src="Imagenes/Logo.png" style="width:10%;height:100%;border:0;">
				</a>

            
			</div>
			<div class="pull-right">
			<a class="navbar-brand" style="pull-right:0%;" href="./php/logout.php" >
                <img alt="SALIR" src="">
            </a>
			</div>  
        </div>
    </nav>

    <!-- Barra navegaciòn Fin-->


    <!--Demostración de Contenido-->
    <div class="container-fluid About-Us" style="display:block;padding-top:25% " id="cuerpo">
      
            <!--Opciones Superiores-->
            <div class="row justify-content-center align-items-center" style="display:block; border-top: 0% ;padding-left:15%;padding-right:7%;border-bottom:0%; height: 30vh;">
                <div class="Opciones_1">
                    
                        <row style="">
                            <!--Opcion 1-->
                            <div class="col-xs-3 col-sm-3 col-md-3" style="top:10%;">
                                    <h3>
                                        <a href="#" style="font-size:30px; ">Cotizaciones</a>
                                    </h3>
                                    <h4>Productos</h4>
                                    <p> -Gaseosas
                                        <br> -Snacks
                                        <br> -Ofertas
                                        <br>
                                    </p>
                                    <a id="op_coti" class="btn btn-primary" href="#" role="button" data-anijs="if: mouseover, do: pulse animated">Información</a>
                                    </p>
                               
                            </div>
                            <!--Opcion 1 Fin-->


                            <!--Opcion 2-->
                            <div class="col-xs-3 col-sm-3 col-md-3" style="top:10%;" name="Adm">
                             

                                    <h3>
                                        <a href="#" style="font-size:30px">Gestor de Solicitudes</a>
                                    </h3>
									<h4>Salidas y Entradas</h4>
                                    <a id="op_gest" class="btn btn-primary" href="#" role="button" data-anijs="if: mouseover, do: pulse animated">Información</a>

									</p>
									
                             
                            </div>
							<!--Opcion 2 Fin-->
							
							 <!--Opcion 3-->
							<div class="col-xs-3 col-sm-3 col-md-3" style="top:10%;" name="Adm">

                            

                                <h3>
                                    <a href="#" style="font-size:30px">Base de Datos</a>
                                </h3>
                                <h4></h4>
                                <p>
                                    <br>
								</p>
                                    <a id="op_base"class="btn btn-primary" href="#" role="button" data-anijs="if: mouseover, do: pulse animated">Información</a>

								</p>
								</div>
						   
							 <!--Opcion 3 Fin-->

							 <!--Opcion 4-->

							 <div class="col-xs-3 col-sm-3 col-md-3" style="top:10%;" name="Adm">
                           

                                <h3>
                                    <a href="#" style="font-size:30px">Estadísticas</a>
                                </h3>
                                <h4></h4>
                                <p>

								</p>
                                    <a id="op_esta" class="btn btn-primary" href="#" role="button" data-anijs="if: mouseover, do: pulse animated">Información</a>

                                </p>
							<!--Opcion 4 Fin-->
                        </div>
                        
                        </row>
                    
                </div>
     
        </div>
        <!--Opciones Superiores Fin-->
<<script>
document.getElementById('op_coti').onclick = function(){
    swal({
		title: "Modulo de Cotización",
		text: "Determine convenientemente los precios de los productos que desea , para  un acuerdo de compra ",
		imageUrl: '../Imagenes/coti.jpg'
    });
};

document.getElementById('op_gest').onclick = function(){
    swal({
		title: "Módulo de Gestion de cotizaciones",
		text: "Modulo desigando para la compilación de las actas de cotización para su aprobación o no.",
		imageUrl: '../Imagenes/gest.png'
    });
};
document.getElementById('op_base').onclick = function(){
    swal({
		title: "Modulo de Cotización",
		text: "Modulos de gestion de datos utilizados en el sistema para su edición",
		imageUrl: '../Imagenes/base.jpg'
    });
};
document.getElementById('op_esta').onclick = function(){
    swal({
		title: "Módulo Estadístico",
		text: " Modulo de recopilación de información principal correspondiente al sistema",
		imageUrl: '../Imagenes/esta.jpg'
    });
};

/*
function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
};
*/
</script>

</body>

</html>

