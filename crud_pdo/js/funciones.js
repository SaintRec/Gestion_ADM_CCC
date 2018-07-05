$(document).ready(function () {/**funcion editart */
    //editamos datos del producto
    $(".editar").on('click', function () { /**funcion actulizar nuevos productos adentro de un modal */
        var id = $(this).attr('id');
        var marca = $("#marca" + id).html();
        var volumen = $("#volumen" + id).html();
        var precio = $("#precio" + id).html();
        var empaque = $("#empaque" + id).html();
        $("<div class='edit_modal'><form name='edit' id='edit' method='post' action='http://localhost/crud_pdo/instancias/edit_user.php'>" +/**se muestra un modal con las siguientes opciones en editar */
            "<label>Marca</label><input type='text' name='marca' class='marca' value=" + marca + " id='marca' /><br/>" + /** marca dentro del modal edtar o actualizar */
            "<label>Volumen</label><input type='text' name='volumen' class='volumen' value=" + volumen + " id='volumen' /><br/>" +/** volumen dentro del modal edtar o actualizar */
            "<input type='hidden' name='id' class='id' id='id' value=" + id + ">" +/** id se actualiza automaticamente dentro del modal edtar o actualizar */
            "<label>Precio</label><input type='email' name='precio' class='precio' value=" + precio + " id='precio' /><br/>" +/** precio dentro del modal edtar o actualizar */
            "<label>Empaque</label><input type='empaque' name='empaque' class='empaque' value=" + empaque + " id='empaque' /><br/>" +/** empaque dentro del modal edtar o actualizar */
            "</form> </div>").dialog({
                resizable: false,
                title: 'Editar Producto.',
                height: 300,
                width: 350,
                modal: true,
                buttons: {
                    "Editar": function () { /**funcion eliminar ajax */
                        $.ajax({
                            url: $('#edit').attr("action"),
                            type: $('#edit').attr("method"),
                            data: $('#edit').serialize(),
                            complete: function () {
                                $('.edit_modal').dialog("close");
                                $("<div class='edit_modal'>El producto fué editado correctamente</div>").dialog({
                                    resizable: false,
                                    title: 'Producto editado.',
                                    height: 200,
                                    width: 450,
                                    modal: true
                                });
                                setTimeout(function () {
                                    window.location.href = "http://localhost/crud_pdo";
                                }, 2000);
                            }, error: function (error) {
                                $('.edit_modal').dialog("close");
                                $("<div class='edit_modal'>Ha ocurrido un error!</div>").dialog({
                                    resizable: false,
                                    title: 'Error editando!.',
                                    height: 200,
                                    width: 450,
                                    modal: true
                                });
                            }
                        });
                        return false;
                    },
                    Cancelar: function () {
                        $(this).dialog("close");
                    }
                }
            });
    });

    //eliminamos datos del producto
    $(".eliminar").on('click', function () { /**funcion eliminar  */
        var id = $(this).attr('id');
        var marca = $("#marca" + id).html();
        $("<div class='delete_modal'>¡Estás seguro que deseas eliminar al producto " + marca + "?</div>").dialog({
            resizable: false,
            title: 'Eliminar al Producto ' + marca + '.',
            height: 200,
            width: 450,
            modal: true,
            buttons: {
                "Eliminar": function () { /**funcion eliminar  ajax*/
                    $.ajax({
                        type: 'POST',
                        url: 'http://localhost/crud_pdo/instancias/delete_user.php',
                        async: true,
                        data: { id: id },
                        complete: function () {
                            $('.delete_modal').dialog("close");
                            $("<div class='delete_modal'>El Producto " + marca + " fué eliminado correctamente</div>").dialog({
                                resizable: false,
                                title: 'Producto eliminado.',
                                height: 200,
                                width: 450,
                                modal: true
                            });
                            setTimeout(function () {
                                window.location.href = "http://localhost/crud_pdo";
                            }, 2000);
                        }, error: function (error) {
                            $('.delete_modal').dialog("close");
                            $("<div class='delete_modal'>Ha ocurrido un error!</div>").dialog({
                                resizable: false,
                                title: 'Error eliminando al Producto!.',
                                height: 200,
                                width: 450,
                                modal: true
                            });
                        }
                    });
                    return false;
                },
                Cancelar: function () {
                    $(this).dialog("close");
                }
            }
        });
    });

    //añadimos productos nuevos
    $(".agregar").on('click', function () {/**funcion guardar nuevos productos adentro de un modal */
        var id = $(this).attr('id');
        var marca = $("#marca" + id).html();

        $("<div class='insert_modal'><form name='insert' id='insert' method='post' action='http://localhost/crud_pdo/instancias/insert_user.php'>" +/**se muestra un modal con las siguientes opciones */
            "<label>Marca</label><input type='text' name='marca' class='marca' id='marca' /><br/>" +  /** marca dentro del modal */
            "<label>Volumen</label><input type='text' name='volumen' class='volumen' id='volumen' /><br/>" +/** volumen dentro del modal */
            "<label>Precio</label><input type='email' name='precio' class='precio' id='precio' /><br/>" +/** precio dentro del modal */
            "<label>Empaque</label><input type='email' name='empaque' class='empaque' id='empaque' /><br/>" + /** producto dentro del modal */
            "</form> </div>").dialog({
                resizable: false,
                title: 'Añadir nuevo producto.',
                height: 300,
                width: 350,
                modal: true,
                buttons: {
                    "Insertar": function () {
                        $.ajax({
                            url: $('#insert').attr("action"),
                            type: $('#insert').attr("method"),
                            data: $('#insert').serialize(),
                            complete: function () {
                                $('.insert_modal').dialog("close");
                                $("<div class='insert_modal'>El producto fué añadido correctamente</div>").dialog({ /**modal de confirmacion */
                                    resizable: false,
                                    title: 'Producto añadido.',
                                    height: 200,
                                    width: 450,
                                    modal: true
                                });
                                setTimeout(function () {
                                    window.location.href = "http://localhost/crud_pdo";
                                }, 2000);
                            }, error: function (error) {
                                $('.insert_modal').dialog("close");
                                $("<div class='insert_modal'>Ha ocurrido un error!</div>").dialog({/**modal de error */
                                    resizable: false,
                                    title: 'Error añadiendo!.',
                                    height: 200,
                                    width: 450,
                                    modal: true
                                });
                            }
                        });
                        return false;
                    },
                    Cancelar: function () {
                        $(this).dialog("close");
                    }
                }
            });
    });
});