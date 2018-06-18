<?php
$servername = "localhost";
$username = "root";
$password = "Kacheadg01";
$db_name = "db_cotizacion";
//$sucessdb = "Tu Conexión ha sido exitosa";
// Create connection
$mysqli = new mysqli($servername, $username, $password, $db_name);

// Check connection
/* if ($mysqli->connect_error) {
    die("Conexión Fallida: " . $mysqli->connect_error);

} else {

    echo $sucessdb."<br>";
} */