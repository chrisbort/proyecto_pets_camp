$(document).ready(function(){
    $('#txtModificarImagen').attr('disabled','disabled');
    
    $('#btnCancelar').click(function(){
        history.back();
    });
    
    $('#btnGuardar').click(function(){
        validarDatos();
    });
    
    $('#SelectImagenActual').click(function(){
        $('#txtImagen').removeAttr('disabled');
        $('#txtModificarImagen').attr('disabled','disabled');
    });
    
    $('#SelectModificarImagen').click(function(){
        $('#txtImagen').attr('disabled','disabled');
        $('#txtModificarImagen').removeAttr('disabled');
    });
});

function validarDatos(){
   
    var descripcionP = $('#txtDescripcionP').val();
    var precioP = $('#txtPrecioP').val();
    var imagenP = $('#txtImagen').val();
    

     if(descripcionP == ""){
        alert("El campo descripcion producto no puede estar vacio");
        $('#txtDescripcionP').focus();
    }
    else if(precioP == ""){
        alert("El campo precio producto no puede estar vacio");
        $('#txtPrecioP').focus();
    }
    else if(imagenP == ""){
        alert("El campo imagen producto no puede estar vacio");
        $('#txtImagen').focus();
    }
    else{
        $('#frmModificarProd').submit();
    }
}