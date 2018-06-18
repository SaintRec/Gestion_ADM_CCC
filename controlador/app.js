$(document).ready(function () {
    /* $('#Python').click(function () {
        $("#contenido").load("c_python.html");
    }); */

    $('#producto').click(function () {
        $("#contenido").load('/VistasEstadisticas/productos.html');
    });
    $('#pedidos').click(function () {
        $("#contenido").load("/VistasEstadisticas/pedidos.html");
    });
    $('#entradas').click(function () {
        $("#contenido").load("/VistasEstadisticas/entradas.html");
    });
    $('#salidas').click(function () {
        $("#contenido").load("/VistasEstadisticas/salidas.html");
    });
    $('#integrations').click(function () {
        $("#contenido").load("/VistasEstadisticas/integrations.html");
    });
});