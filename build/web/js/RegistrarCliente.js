$(document).ready(function (){
    limpiarCampos();
    
    $('#btnRegistrar').click(function (){
        validarDatos();
    });
    
    $('#btnCancelar').click(function (){
        history.back();
    });
    
    $('#SelectDepartamento').change(function (){
        $('#text_depart').val("1");
        $.pos
        $.post("cbProvincia.jsp","#frmDepartamento".serialize(),function(data){
            $('#SelectProvincia').html(data);
        });
    });
});

function limpiarCampos(){
    $('.textBox').val("");
}

function validarDatos(){
    var nombre = $('#txtNombre').val();
    var apellido = $('#txtApellido').val();
    var dni = $('#txtDni').val();
    var email = $('#txtEmail').val();
    var email2 = $('#txtConfirEmail').val();
    var distrito = $('#txtDistrito').val();
    var direccion1 = $('#txtDireccion1').val();
    var telefono = $('#txtTelefono').val();
    var usuario = $('#txtUsuario').val();
    var pass1 = $('#txtClave').val();
    var pass2 = $('#txtConfirClave').val();
    
    if ( telefono > 900000009 && telefono < 1000000000){
        return true;
        
    }
    else{
        alert('el numero no es valido')
        
        return false;
    }
    
    if(nombre == ""){
        alert("El campo nombre no puede estar vacio");
        $('#txtNombre').focus();
    }else if (nombre.length > 30) {
        alert("El nombre es muy largo");
        return false;
    } 
    else if(apellido == ""){
        alert("El campo apellido no puede estar vacio");
        $('#txtApellido').focus();
    }else if (apellido.length > 30) {
        alert("El apellido es muy largo");
        return false;
    }
    else if(apellido.length>30){
        alert("El apellido es muy largo");
        return false;
    }
    else if(dni == ""){
        alert("El campo dni no puede estar vacio");
        $('#txtDni').focus();
        return false;
    }else if (dni.length < 8) {
        alert("El DNI tiene que tener 8 digitos");
        $('#txtDni').focus();
        return false;
    }
    else if(email == ""){
        alert("El campo email no puede estar vacio");
        $('#txtEmail').focus();
        return false;
    }
    else if(email.length>40){
        alert("El email es muy largo");
        return false;
    }
    else if(email2 == ""){
        alert("El campo confirmar email no puede estar vacio");
        $('#txtConfirEmail').focus();
        return false;
    }
    else if(distrito == ""){
        alert("El campo distrito no puede estar vacio");
        $('#txtDistrito').focus();
    }
    else if(direccion1 == ""){
        alert("El campo direccion1 no puede estar vacio");
        $('#txtDireccion1').focus();
    }else if (direccion1.length > 50) {
        alert("La direccion es muy largo");
        return false;
    } 
    else if(telefono == ""){
        alert("El campo telefono no puede estar vacio");
        $('#txtTelefono').focus();
        return false;
    }else if (telefono.length < 9) {
        alert("El telefono tiene que tener 9 digitos");
        $('#txtDni').focus();
        return false;  
        
    }else if(usuario == ""){
        alert("El campo usuario no puede estar vacio");
        $('#txtUsuario').focus();
    } else if (usuario.length > 20) {
        alert("su usuario es muy largo");
        return false;
    } 
    else if(pass1 == ""){
        alert("El campo clave no puede estar vacio");
        $('#txtClave').focus();
    }else if (pass1.length > 20) {
        alert("su contraseña es muy largo");
        return false;
    }
    else if(pass2 == ""){
        alert("El campo confirmar clave no puede estar vacio");
        $('#txtConfirClave').focus();
    }
    else{
        if(email != email2){
            alert("Los correos electronicos no son iguales");
            return false;
        }
        else if(pass1 != pass2){
            alert("Las contraseñas no son iguales");
            return false;
        }
        else{
            $('#frmRegistrarUsuario').submit();
        }
        
    }
}