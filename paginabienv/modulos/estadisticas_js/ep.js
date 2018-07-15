$(document).ready(function () {
    $('#inicio').click(function () {
        $("#contenido1").load("/modulos/VistasEstadisticas/todas.php");
    });
    $('#producto').click(function () {
        $("#contenido1").load('/modulos/VistasEstadisticas/productos.php');
    });
    $('#powerade').click(function () {
        $("#contenido1").load("/modulos/VistasEstadisticas/pedidos.html");
    });
    $('#fanta').click(function () {
        $("#contenido1").load("/modulos/VistasEstadisticas/fanta.html");
    });
    $('#delvalle').click(function () {
        $("#contenido1").load("/modulos/VistasEstadisticas/delv.html");
    });
    $('#cocacola').click(function () {
        $("#contenido1").load("/modulos/VistasEstadisticas/cocac.html");
    });
});