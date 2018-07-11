<nav class="navbar navbar-default" role="navigation">

  <!-- Brand and toggle get grouped for better mobile display -->


  <!-- Collect the nav links, forms, and other content for toggling -->

  <nav class="navbar navbar-default navbar-fixed-top ">
    <div class="container-fluid">
        <div class="navbar-header page-scroll" >
        <?php if(!isset($_SESSION["user_id"])):?>
            <a class="navbar-brand" href="./registro.php" >
                <img alt="COTIZACIONES" src="">
						</a>
						<a class="navbar-brand" href="./login.php" >
                <img alt="GESTOR SOLICITUDES" src="">
            </a>
            <a class="navbar-brand" href="./login.php" >
                <img alt="BASE DE DATOS" src="">
            </a>
            <a class="navbar-brand" href="./login.php" >
                <img alt="ESTADÌSTICAS" src="">
            </a>
            <?php else:?>
						<a class="navbar-brand" href="./php/logout.php" >
                <img alt="SALIR" src="">
            </a>
            <?php endif;?>
            
        </div>
    </div>
</nav>


</nav>
