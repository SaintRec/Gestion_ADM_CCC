<nav class="navbar navbar-default" role="navigation">
  <nav class="navbar navbar-default navbar-fixed-top ">
        <div class="container-fluid">
            <div class="navbar-header page-scroll" >
                <?php if (!isset($_SESSION["user_id"])) : ?>
                    <a class="navbar-brand" href="./registro.php" >
                        <img alt="REGISTRO" src="images/bright/logo.png">
                    </a>
                <?php else : ?>
                    <a class="navbar-brand" href="./php/logout.php" >
                        <img alt="SALIR" src="images/bright/logo.png">
                    </a>
                <?php endif; ?>         
            </div>
        </div>
    </nav>
</nav>
