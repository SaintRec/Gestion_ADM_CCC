<?php
require_once 'class/users.class.php';
$users = users::singleton();
$data = $users->get_usuarios();
?>
    <link rel="stylesheet" type="text/css" href="/modulos/crud_pdo/css/960.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="/modulos/crud_pdo/css/text.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="/modulos/crud_pdo/css/reset.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="/modulos/crud_pdo/css/estilos.css" media="screen" />
    <script type="text/javascript" src="/modulos/crud_pdo/js/funciones.js"></script>

<style >
      ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

 html {
        height:100%;
        width:100%;
    }
        body {
            background: #aaa4a427;
        }
    </style>
   
<br>
    <div class="container_12">
        <h1>REGISTRO DE PRODUCTOS</h1>
        <div class="grid_12">
            <div class="grid_12" id="head">
                <div class="grid_2" id="head_marca">Marca</div>
                <div class="grid_1" id="head_volumen">Volumen</div>
                <div class="grid_1" id="head_precio">Precio</div>
                <div class="grid_1" id="head_empaque">empaque</div>
                <div class="grid_2" id="head_registro">Fecha de registro</div>
                <div class="grid_1" id="head_eliminar">Eliminar</div>
                <div class="grid_1" id="head_editar">Editar</div>
            </div>
            <?php
            foreach ($data as $fila) :
            ?>
            <div class="grid_12" id="body">
                <div class="grid_2" id="marca<?= $fila['id'] ?>"><?= $fila['marca'] ?></div>
                <div class="grid_1" id="volumen<?= $fila['id'] ?>"><?= $fila['volumen'] ?></div>
                <div class="grid_1" id="precio<?= $fila['id'] ?>"><?= $fila['precio'] ?></div>
                <div class="grid_1" id="empaque<?= $fila['id'] ?>"><?= $fila['empaque'] ?></div>
                <div class="grid_2" id="registro<?= $fila['id'] ?>"><?= $fila['registro'] ?></div>
                <div class="grid_1" id="eliminar"><input type="button" value="Eliminar" id="<?= $fila['id'] ?>" class="eliminar"></div>
                <div class="grid_1" id="editar"><input type="button" value="Editar" id="<?= $fila['id'] ?>" class="editar"></div>
            </div>
            <?php
            endforeach;
            ?>
            <div class="grid_12" id="agregar"><input type="button" value="Añadir" id="<?= $fila['id'] ?>" class="agregar"></div>
        </div>
    </div>
