

var nombre = $("#usuario").val();
var key = $("#key").val();





function Vacio(nombre, key) {


  
  swal({
    title: "<i>Estos son el </i>", 
    html: correo+" hola <b>test</b>",  
    confirmButtonText:con+ "V <u>redu</u>", 
  });

  if (nombre ==""){
    swal({
      title: "<i>Campos vacios</i>", 
      html: correo+" <b>Por favor ingrese nombre</b>",  
      confirmButtonText:con+ "<u>OK</u>", 
    });
  }else{if(key==""){
    swal({
      title: "<i>Campos vacios</i>", 
      html: correo+" <b>Por favor ingrese nombre y contraseña</b>",  
      confirmButtonText:con+ "<u>OK</u>", 
    });


  };};
     

};

function ocultar_ventanas() {
  var x = document.getElementsByName('Adm');
  if (token == true) {
    x.style.visibility = 'visible';
  } else {
    x.style.visibility = 'hidden';
  }
};


function passVal() {
  var data = {
    fn: "filename",
    str: "this_is_a_dummy_test_string"
  };

  $.post("test.php", data);
}
passVal();

function Ingresar() {

  /* $("#usuario")
    .keyup(function () {
      var value = $(this).val();
      $("p").text(value);
    })
    .keyup();
     */
    var correo=$("input[name=correo]").val();
    var con=$("input[name=contrasena]").val();
 
    Vacio(correo,con);

};

