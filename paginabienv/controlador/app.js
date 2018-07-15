$(document).ready(function () {

    $('#home').click(function () {
        $("#contenido").load("/modulos/home1.php");
    });
    $('#db').click(function () {
        $("#contenido").load("/modulos/crud_pdo/crud.php");
    });
    $('#est').click(function () {
        $("#contenido").load("/modulos/std.html");
    });
    $('#solt').click(function () {
        $("#contenido").load("/modulos/solicitud.php");
    });
    $('#pdf').click(function () {
        $("#contenido").load("/modulos/cotizador/cot.php");
    });
});