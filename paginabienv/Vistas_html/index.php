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
    <script src="/bootstrap/jquery.min.js"></script>
    <script src="/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <link href="/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="/bootstrap/popper.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/css/slope.css">
    <link rel="stylesheet" href="/css/loginmodal.css">
    <script src="/controlador/loginmodal.js" type="text/javascript"></script>
    <link href="/css/fontawesome/css/all.css" rel="stylesheet" />
</head>

<body>
    <section>
        <div class="content text-justify">
            <center>
                <h3 style="font-size:30px">Bienvenido al Sistema de Gestión y administración de productos</h3>
                <hr class="line">
                <br>
                <p style="font-size:20px">
                    Cree rápidamente una tabla de precios con sus productos favoritos de Arca Continental distribuidor oficial de
                    <br> The Coca Cola Company.
                </p>
                <a class="btn btn-primary" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Ingresar</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="btn btn-primary" href="/Vistas_html/informacion.php" data-anijs="if: mouseover, do: pulse animated">Información</a>
            </center>
        </div>
        <div class="image">
            <div class="container">
                <img src="/imagenes/Arca_continental_logo.png" alt="ArcaContinental" width="400px">
            </div>
        </div>
    </section>
    <!-- Inicio Modal -->
    <div class="modal fade login" id="loginModal">
        <div class="modal-dialog login animated">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title ">Ingresar</h4>

                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="box">
                        <div class="content1">
                            <div class="error"></div>
                            <div class="form loginBox">
                                <form role="form " name="login" action="php/login.php" method="post" accept-charset="UTF-8">
                                    <div class="col-auto">
                                        <label class="sr-only" for="inlineFormInputGroup">Username</label>
                                        <div class="input-group mb-2">
                                            <input type="text" class="form-control text-center" name="username" id="username" placeholder="Usuario o Correo">
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <label class="sr-only" for="inlineFormInputGroup">Password</label>
                                        <div class="input-group mb-2">
                                            <input type="password" class="form-control text-center" placeholder="Contraseña" id="password" name="password">
                                        </div>
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <button type="submit" class="btn btn-light ">Acceder</button>
                                </form>
                                <script src="../controlador/valida_login.js "> </script>
                            </div>
                        </div>
                    </div>
                    <div class="box">
                        <div class="content1 registerBox" style="display:none;">
                            <div class="form">
                                <form role="form" name="registro" action="php/registro.php" method="post" html="{:multipart=>true}" data-remote="true" accept-charset="UTF-8">
                                    <input type="text" class="form-control" id="username" name="username" placeholder="Nombre de usuario">
                                    <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Nombre Completo">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Correo Electronico">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Contraseña">
                                    <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirmar Contraseña">
                                    <button type="submit" class="btn btn-default">Registrar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <script src="../controlador/valida_registro.js "> </script>

                </div>
                <div class="modal-footer">
                    <div class="forgot login-footer">
                        <span>¿Desea Registrarse?
                            <a href="javascript: showRegisterForm();">Crear Cuenta</a>
                        </span>
                    </div>
                    <div class="forgot register-footer" style="display:none">
                        <span>¿Ya dispone de una Cuenta?</span>
                        <a href="javascript: showLoginForm();">Ingresar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Fin Modal -->
</body>

</html>