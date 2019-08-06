$(document).ready(function (){
    var tipo = $('#txtTipo').val();
    
    if(tipo == "ADMINISTRADOR"){
        cuentaAdministrador()
    }
    else if(tipo == "CLIENTE"){
        cuentaUsuario();
    }
    else{
        cuentaNegada();
        $('.BotonADD').click(function (){
            $(location).attr('href',"Login.jsp");
        });
    }
});

function cuentaAdministrador(){
    $('#MiCuenta').show();
    $('#MiMascota').hide();
    $('#MiReserva').hide();
    $('#Administrar').show();
    $('#Login').hide();
    $('#RegistrarMascota').hide();
    $('.BotonModificar').show();
    $('#Salir').show();
    $('#AñadirCarrito').hide();
}
function cuentaUsuario(){
    $('#RegistrarMascota').show();
    $('#MiReserva').hide();
    $('#MiCuenta').show();
    $('#MiMascota').show();
    $('#Login').hide();
    $('#Administrar').hide();
    $('.BotonModificar').hide();
    $('#Salir').show();
    $('#AñadirCarrito').show();
}
function cuentaNegada(){
     $('#RegistrarMascota').hide();
    $('#Login').show();
    $('#Salir').hide();
    $('#Administrar').hide();
    $('#MiCuenta').hide();
    $('#MiMascota').hide();
    $('#MiReserva').hide();
    $('.BotonModificar').hide();
    $('#AñadirCarrito').hide();
}