<?php
header('Content-Type: application/json');
require_once '../ConexionDB/conexiondb.php';

$query = sprintf("SELECT 
marca.name_m,cantidad,volumen.name_v
FROM
stock
    INNER JOIN
(presentaciones
INNER JOIN marca ON presentaciones.id_m = marca.id_m
INNER JOIN volumen ON presentaciones.id_v = volumen.id_v
)
ON stock.id_p= presentaciones.id_p
WHERE marca.name_m = 'Fanta'");

//execute query
$result = $mysqli->query($query);

//loop through the returned data
$data = array();
foreach ($result as $row) {
    $data[] = $row;
}
//free memory associated with result
$result->close();

//close connection
$mysqli->close();

//now print the data
print json_encode($data);
?>