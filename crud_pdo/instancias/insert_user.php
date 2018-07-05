<?php

/**
 * Created by JetBrains PhpStorm.
 * User: isra
 * Date: 23/02/13
 * Time: 10:46
 */
if (!isset($_POST['marca'])) {  /**envio condicion con variable marca post instancia */
    header("Location: ../");
} else {

    require_once '../class/users.class.php'; 

    $usuarios = Users::singleton(); 

    $marca = $_POST['marca']; /** instancia  id*/
    $volumen = $_POST['volumen'];/** instancia  volumen*/
    $precio = $_POST['precio'];/** instancia  precio */
    $empaque = $_POST['empaque'];/** instancia  empaque */
    $registro = date('Y-m-d');/** instancia  fecha*/
    $usuarios->insert_usuario($marca, $volumen, $precio, $empaque, $registro);/** metodo guardar usuario */
}
?>