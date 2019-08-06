

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarProd.js"></script>
        <link type="text/css" rel="stylesheet" href="css1/css1.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>

    <%
        String Codigo_P = ObtenerCodigo.CodigoProducto();
    %>

    <body onload="cargar()">
        <form class="was-validated" name="frm" action="Servlet_Prod" method="post" id="frmRegistrarProd">
            <table id="tablaRegistrarProd" align="center">
                <tr>
                    <th colspan="2">
                        <h1> Registrar producto  </h1>
                    </th>
                </tr>
                <tr>
                    <td class="form-group">
                        <label>CODIGO :</label>
                    </td>
                    <td>
                <dd> <input type="text" name="txtCodigo" value="<%=Codigo_P%>" readonly="readonly" required class="form-control"> </dd>
                </td>
                </tr>

                <tr>
                    <td class="form-group">
                        <label> DESCRIPCIÓN : </label>
                    </td>
                    <td>
                <dd> <input type="text" name="txtDescripcion" id="txtDescripcion"  onblur="limpia()" onkeypress="return soloLetras(event)" class="form-control"> </dd>
                </td>
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

                    function limpia() {
                        var val = document.getElementById("txtDescripcion").value;
                        var tam = val.length;
                        for (i = 0; i < tam; i++) {
                            if (!isNaN(val[i]))
                                document.getElementById("txtDescripcion").value = '';
                        }
                    }
                </script>
                </tr>
                <tr>
                    <td class="form-group">
                        <div>PRECIO :</div>
                    </td>
                    <td>
                <dd> <input type="text" name="txtPrecio" id="txtPrecio" class="form-control" onkeypress="return soloNumeros(event)" maxlength=2" required> </dd>                   
                </td>

                </tr>
                <tr>
                    <td class="form-group">
                        <div>IMAGEN :</div>
                    </td>
                    <td>

                <dd> <input type="file" name="txtImagen" size="30" class="form-control" id="txtImagen" class="textBox"> </dd>

                <p id="texto"> </p>



                <img id="img" src="" />
                </td>
                </tr>
                <tr>
                    <td colspan="2" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="btn btn-outline-danger" value="Cancelar">
                        <input type="button" name="btnRegistrar" id="btnRegistrar" class="btn btn-outline-warning" value="Registrar">
                     <a href="javascript:history.back(1)" class="btn btn-outline-success" >Volver Atrás</a>
                    
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                
            <input type="hidden" name="accion" value="insertar">
        </form>
        <script type="text/javascript">
// Solo permite ingresar numeros.
            function soloNumeros(e) {
                var key = window.Event ? e.which : e.keyCode
                return (key >= 48 && key <= 57)
            }
        </script>  
        <script type="text/javascript">
            $(document).ready(function () {

                var extensionesValidas = ".png, .gif, .jpeg, .jpg";
                var pesoPermitido = 1024;

                // Cuando cambie #fichero
                $("#txtImagen").change(function () {

                    $('#texto').text('');
                    $('#img').attr('src', '');

                    if (validarExtension(this)) {

                        if (validarPeso(this)) {

                            verImagen(this);

                        }

                    }

                });

                // Validacion de extensiones permitidas

                function validarExtension(datos) {

                    var ruta = datos.value;
                    var extension = ruta.substring(ruta.lastIndexOf('.') + 1).toLowerCase();
                    var extensionValida = extensionesValidas.indexOf(extension);

                    if (extensionValida < 0) {

                        $('#texto').text('La extensión no es válida Su fichero tiene de extensión: .' + extension);
                        return false;

                    } else {

                        return true;

                    }

                }

                // Validacion de peso del fichero en kbs

                function validarPeso(datos) {

                    if (datos.files && datos.files[0]) {

                        var pesoFichero = datos.files[0].size / 1024;

                        if (pesoFichero > pesoPermitido) {

                            $('#texto').text('El peso maximo permitido del fichero es: ' + pesoPermitido + ' KBs Su fichero tiene: ' + pesoFichero + ' KBs');
                            return false;

                        } else {

                            return true;

                        }

                    }

                }

                // Vista preliminar de la imagen.
                function verImagen(datos) {

                    if (datos.files && datos.files[0]) {

                        var reader = new FileReader();

                        reader.onload = function (e) {

                            $('#img').attr('src', e.target.result);

                        };

                        reader.readAsDataURL(datos.files[0]);

                    }

                }

            });
        </script>  

    </body>
</html>
