<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- logo -->
    <link href="/imagenes/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <title>ArcaContinental</title>
    <!-- bootstrap temas -->
    <link href="/css/1bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/slope.css">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

    <!-- lib modal  -->

    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet" />
    
       <link href="login-register.css" rel="stylesheet" />
       <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
       
       <script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
       <script src="bootstrap3/js/bootstrap.js" type="text/javascript"></script>
       <script src="login-register.js" type="text/javascript"></script>
</head>

<body>
    <section>
        <div class="content">
            <center>
                <h3 style="font-size:30px">Bienvenido al Sistema de Gestión y administración de productos</h3>
                <hr class="line">
                <br>
                <p style="font-size:20px">
                    Cree rápidamente una tabla de precios con sus productos favoritos de Arca Continental distribuidor oficial de The Coca Cola
                    Company.
                </p>
                <a class="btn btn-primary" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Ingresar</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="btn btn-primary" href="mas.php" data-anijs="if: mouseover, do: pulse animated">Información</a>

            </center>

            <!-- modal -->
        

    <div class="modal fade login" id="loginModal">
 <div class="modal-dialog login animated">
     <div class="modal-content">
        <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
           <h4 class="modal-title">Ingresar</h4>
       </div>
       <div class="modal-body">  
           <div class="box">
                <div class="content">
                   <div class="division">
                       <div class="line l"></div>
                       <div class="line r"></div>
                   </div>
                   <div class="error"></div>
                   <div class="form loginBox">
                       <form role="form" name="login" action="php/login.php" method="post" accept-charset="UTF-8">
                       <input id="username" class="form-control" type="text" placeholder="Correo electrónico" name="username">
                       <input id="password" class="form-control" type="password" placeholder="Contraseña" name="password">
                       <button type="submit" class="btn btn-default">Acceder</button>
                       </form>
                   </div>
                </div>
           </div>
           <script src="../controlador/valida_login.js"></script>



           <div class="box">
               <div class="content registerBox" style="display:none;">
                <div class="form">
                    
   <form role="form" name="registro" action="php/registro.php" method="post" html="{:multipart=>true}" data-remote="true" accept-charset="UTF-8">
  
   
       
       <input type="text" class="form-control" id="username" name="username" placeholder="Nombre de usuario">
       <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Nombre Completo">
       <input type="email" class="form-control" id="email" name="email" placeholder="Correo Electronico">
       <input type="password" class="form-control" id="password" name="password" placeholder="Contrase&ntilde;a">
       <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirmar Contrase&ntilde;a">
       <button type="submit" class="btn btn-default">Registrar</button>


                   </form>
                   </div>
               </div>
           </div>
           <script src="../controlador/valida_registro.js"></script>

           
       </div>
       <div class="modal-footer">
           <div class="forgot login-footer">
               <span>¿Desea registrarse? 
                    <a href="javascript: showRegisterForm();">Crear Cuenta</a>
               </span>
           </div>
           <div class="forgot register-footer" style="display:none">
                <span>¿Ya dispone de cuenta?</span>
                <a href="javascript: showLoginForm();">Ingresar</a>
           </div>
       </div>        
     </div>
 </div>
</div>
<!-- modal -->
</body>

</html>