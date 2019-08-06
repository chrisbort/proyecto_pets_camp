<!DOCTYPE html>
<html>
    <head>


        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script src="js/RegistrarCliente.js" type="text/javascript"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>RegistrationForm_v1 by Colorlib</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <script src="js/RegistrarCliente.js" type="text/javascript"></script>
        <!-- MATERIAL DESIGN ICONIC FONT -->
        <link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

        <!-- STYLE CSS -->
        <link href="css/styleRegistrar.css" rel="stylesheet" type="text/css"/>
        <!-- VALIDACION -->
        <script src="validar.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#btnRegistrar').click(function () {
                    if ($("#txtEmail").val().indexOf('@hotmail', 0) == -1 || $("#txtEmail").val().indexOf('.com', 0) == -1) {
                        alert('El correo electrónico introducido no es correcto.');

                        return false;
                    } else {

                        return true;
                    }

                });
            });

        </script>
        ¡
    </head>

    <body>


        <div class="wrapper"  style="background-color: #198A40" >
            <div class="inner" >
                <div class="image-holder" >

                    <img src="img/premiun.jpg" alt="">

                </div>
                <form name="frm" action="Servlet_Usu" method="post" id="frmRegistrarUsuario" onsubmit="return validarDatos();">
                    <input type="hidden" name="accion" value="registrar">
                    <table id="tablaRegistrarUsuario">

                        <div class="form-group">
                            <input onblur="limpiar()" onkeypress="return soloLetras(event)" type="text" name="txtNombres" id="txtNombre" placeholder="ingrese nombres" class="form-control" required="">
                            <input onblur="limpiar()" onkeypress="return soloLetras(event)" type="text" name="txtApellidos" id="txtApellido" placeholder="ingrese apellidos" class="form-control" required="">
                        </div>
                        <div class="form-wrapper">
                            <input onkeypress="return soloNumeros(event)"maxlength=8" type="text" name="txtDni" id="txtDni" placeholder="Ingrese Dni" class="form-control"required="">

                        </div>
                        <div class="form-group">
                            <input type="text" name="txtEmail" id="txtEmail" placeholder="Ingrese Email" class="form-control" required="">
                            <input type="text" name="txtConfirmarEmail" id="txtConfirEmail" placeholder="Confirmar Email" class="form-control" required="">
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="txtDepartamento" id="txtDepartamento" value="Lima" readonly="" placeholder="" class="form-control">

                            <input type="hidden" name="txtProvincia" id="txtProvincia" value="Lima" readonly="" placeholder="" class="form-control">


                        </div>
                        <div class="form-group">
                            <select name="txtDistrito" id="txtDistrito" class="form-control"required="">
                                <option value="" disabled selected>Distrito</option>
                                <option value="Ancón">Ancón</option>
                                <option value="Ate">Ate</option>
                                <option value="Barranco">Barranco</option>
                                <option value="Breña">Breña</option>
                                <option value="Carabayllo">Carabayllo</option>
                                <option value="Chaclacayo">Chaclacayo</option>
                                <option value="Chorrillos">Chorrillos</option> 
                                <option value="Chosica">Chosica</option>
                                <option value="Comas">Comas</option>
                                <option value="El Agustino">El Agustino</option>
                                <option value="Independencia">Independencia</option>
                                <option value="Jesús María">Jesús María</option>
                                <option value="La Molina">La Molina</option>
                                <option value="La Victoria">La Victoria</option>
                                <option value="Lince">Lince</option>
                                <option value="Los Olivos">Los Olivos</option>
                                <option value="Lurin">Lurin</option>
                                <option value="Magdalena del Mar">Magdalena del Mar</option>
                                <option value="Miraflores">Miraflores</option>
                                <option value="Pachacamac">Pachacamac</option>
                                <option value="Pucusana">Pucusana</option>
                                <option value="Pueblo Libre">Pueblo Libre</option>
                                <option value="Puente Piedra">Puente Piedra</option>
                                <option value="Punta Hermosa">Punta Hermosa</option>
                                <option value="Punta Negra">Punta Negra</option>
                                <option value="Rímac">Rímac</option>
                                <option value="San Bartolo">San Bartolo</option>
                                <option value="San Borja">San Borja</option>
                                <option value="San Isidro">San Isidro</option>
                                <option value="San Juan de Lurigancho">San Juan de Lurigancho</option>
                                <option value="San Juan de Miraflores">San Juan de Miraflores</option>
                                <option value="San Luis">San Luis</option>
                                <option value="San Martín de Porres">San Martín de Porres</option>
                                <option value="San Miguel">San Miguel</option>
                                <option value="Santa Anita">Santa Anita</option>
                                <option value="Santa María del Mar">Santa María del Mar</option>
                                <option value="Santa Rosa">Santa Rosa</option>
                                <option value="Santiago de Surco">Santiago de Surco</option>
                                <option value="Surquillo">Surquillo</option>
                                <option value="Villa El Salvador">Villa El Salvador</option>
                                <option value="Villa María del Triunfo">Villa María del Triunfo</option>
                            </select>

                        </div>
                        <div class="form-wrapper">
                            <textarea style="min-height: 100px; max-height: 200px;max-width: 100%;" type="text" name="txtDireccion1" id="txtDireccion1" placeholder="Escribir referencia" class="form-control" required=""></textarea>
                        </div>
                        <div class="form-group">
                            <input  onkeypress="return soloNumeros(event)"maxlength=9" type="text" name="txtTelefono" id="txtTelefono" placeholder="Telefono" class="form-control"required="">
                            <input type="text" name="txtUsuario" id="txtUsuario" placeholder="Usuario" class="form-control"required="">
                        </div>
                        <div class="form-group">
                            <input type="password" name="txtClave" id="txtClave" placeholder="Contraseña" class="form-control"required="">

                            <input type="password"  name="txtConfirmarClave" id="txtConfirClave" placeholder="Confirmar Contraseña" class="form-control"required="">

                        </div>

                        <div class="form-group">

                            <button name="btnRegistrar" id="btnRegistrar">Registrar
                                <i class="zmdi zmdi-arrow-right"></i>
                            </button>

                        </div>
                    </table>
                </form>
            </div>
        </div>
        <script src="bootstrap-validate.js"></script>
        <script src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js"></script>
        <script>
                                bootstrapValidate('#txtNombre', 'required:')
                                bootstrapValidate('#txtApellido', 'required:')
                                bootstrapValidate('#txtDni', 'min:8:')
                                bootstrapValidate('#txtEmail', 'email:')
                                bootstrapValidate('#txtConfirEmail', 'matches:#txtEmail:')
                                bootstrapValidate('#txtConfirClave', 'matches:#txtClave:')
                                bootstrapValidate('#txtTelefono', 'min:9:')

        </script>
        <script>
            function soloLetras(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                especiales = [8, 37, 39, 46];

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (letras.indexOf(tecla) == -1 && !tecla_especial)
                    return false;
            }

            function limpiar() {
                var val = document.getElementById("txtNombre").value;
                var tam = val.length;
                for (i = 0; i < tam; i++) {
                    if (!isNaN(val[i]))
                        document.getElementById("txtNombre").value = '';
                }
            }
        </script>
        <script type="text/javascript">
            // Solo permite ingresar numeros.
            function soloNumeros(e) {
                var key = window.Event ? e.which : e.keyCode
                return (key >= 48 && key <= 57)
            }
        </script>
        <script type="text/javascript">
            // Solo permite ingresar numeros.
            function soloNumeros(e) {
                var key = window.Event ? e.which : e.keyCode
                return (key >= 48 && key <= 57)
            }
        </script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>