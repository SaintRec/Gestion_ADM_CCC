<?php
header('Content-Type: application/json');
require_once '../ConexionDB/conexiondb.php';

$query = sprintf("SELECT * FROM account");

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