$(document).ready(function(){
    
    
    $('#btnCancelar').click(function(){
        history.back();
    });
    
    $('#btnGuardarMasc').click(function(){
        validarDatos();
    });
    
  
   
});

function validarDatos(){
   
   var nombre = $('#txtNombre').val();
    var sexo = $('#txtSexo').val();
    var edad = $('#txtEdad').val();
    var raza = $('#txtRaza').val();
    var Codigo_U = $('#txtCodigoCliente').val();

     if(nombre == ""){
        alert("El campo nombre de la mascota no puede estar vacio");
        $('#txtNombre').focus();
    }
    else if(sexo == ""){
        alert("El campo sexo de la mascota no puede estar vacio");
        $('#txtSexo').focus();
    }
    else if(edad == ""){
        alert("El campo edad no puede estar vacio");
        $('#txtEdad').focus();
    }
    else if(raza == ""){
        alert("El campo raza no puede estar vacio");
        $('#txtRaza').focus();
    }else if(Codigo_U == ""){
        alert("El campo Codigo_U no puede estar vacio");
        $('#txtCodigoCliente').focus();
    }
    else{
        $('#frmModificarMasc').submit();
    }
}