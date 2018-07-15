<?php
/**
 * Created by JetBrains PhpStorm.
 * User: isra
 * Date: 23/02/13
 * Time: 10:15
 */
if (!isset($_POST['id'])) {  /**envio condicion con variable id post instancia */
    header("Location: ../");
} else {

    require_once '../class/users.class.php'; 

    $usuarios = Users::singleton();

    $id = $_POST['id']; /** instancia  id*/
    $usuarios->delete_usuario($id); /** metodo eliminar usuario */
}
?>