

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
        <script src="js/MiPerfil.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>

    <%
        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(request.getParameter("codigoU"));
    %>

    <body>
        <div class="d-flex" style="font-size: 15px">
            <div class="col-sm-12">
                <div class="card">
                    <center>
                        <form action="Servlet_Usu" class="was-validated" method="post" id="frmModificarUsuario" class=" was-validated" >
                            <table id="tablaModificarUsuario">
                                <tr>
                                    <th colspan="3">
                                        <h1>Mi perfil</h1>
                                    </th>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <input type="hidden" name="txtCodigo" value="<%=usu.getCodigoUsuario()%>" > 
                                    </td>
                                </tr>
                                <tr>
                                    <td class="primeraColumna">
                                        Nombre : 
                                    </td>
                                    <td>
                                <dd class="soloTexto"> <%=usu.getNombreUsuario()%> </dd>
                                <dd> <input type="text" name="txtNombre" onkeypress="return soloLetras(event)" onblur="limpia()" id="txtNombre" class="campoOculto" value="<%=usu.getNombreUsuario()%>" size="30" maxlength="50"> </dd>

                                </td>
                                <td></td>
                                </tr>
                                <tr>
                                    <td class="primeraColumna">
                                        Apellidos : 
                                    </td>
                                    <td>
                                <dd class="soloTexto"> <%=usu.getApellidosUsuario()%> </dd>
                                <dd> <input type="text" onkeypress="return soloLetras(event)" name="txtApellidos" id="txtApellido" class="campoOculto" value="<%=usu.getApellidosUsuario()%>" size="30" maxlength="50"> </dd>
                                </td>
                                <td></td>
                                </tr>
                                <tr>
                                    <td class="primeraColumna">
                                        DNI :
                                    </td>
                                    <td>
                                <dd class="soloTexto"> <%=usu.getDniUsuario()%> </dd>
                                <dd> <input  onkeypress="return soloNumeros(event)" type="text" name="txtDni" id="txtDni" class="campoOculto" value="<%=usu.getDniUsuario()%>" size="30" maxlength="8"> </dd>
                                </td>
                                <td></td>
                                </tr>
                                <tr>
                                    <td class="primeraColumna">
                                        Email :
                                    </td>
                                    <td>
                                <dd> <%=usu.getEmailUsuario()%> </dd>
                                </td>
                                <td>
                                <dd> <a href="ModificarEmail.jsp?codigoU=<%=usu.getCodigoUsuario()%>" class="Enlace">Cambiar email</a> </dd>
                                </td>
                                </tr>
                                <tr>
                                    <td class="primeraColumna">
                                        Contraseña :
                                    </td>
                                    <td>
                                <dd> **** </dd>
                                </td>
                                <td>
                                <dd> <a href="ModificarContraseña.jsp?codigoU=<%=usu.getCodigoUsuario()%>" class="Enlace">Cambiar contraseña</a> </dd>
                                </td>
                                </tr>
                                <tr>
                                    <td class="primeraColumna">
                                        Departamento :
                                    </td>
                                    <td>
                                <dd class="soloTexto"> <%=usu.getDepartamentoUsuario()%> </dd>
                                <dd> <input type="text" name="txtDepartamento" id="txtDepartamento" value="Lima" readonly=""  class="campoOculto" value="<%=usu.getDepartamentoUsuario()%>" size="30" maxlength="20"> </dd>
                                </td>
                                <tdq></td>
                                    </tr>
                                    <tr>
                                        <td class="primeraColumna">
                                            Provincia :
                                        </td>
                                        <td>
                                    <dd class="soloTexto"> <%=usu.getProvinciaUsuario()%> </dd>
                                    <dd> <input type="text" name="txtProvincia" id="txtProvincia" value="Lima" readonly="" class="campoOculto" value="<%=usu.getProvinciaUsuario()%>" size="30" maxlength="20"> </dd>
                                    </td>
                                    <td></td>
                                    </tr>
                                    <tr>
                                        <td class="primeraColumna">
                                            Distrito :
                                        </td>
                                        <td>
                                    <dd class="soloTexto"> <%=usu.getDistritoUsuario()%> </dd>
                                    <dd> <select onkeypress="return soloLetras(event)" name="txtDistrito" id="txtDistrito"   class="campoOculto" value="<%=usu.getDistritoUsuario()%>" >
                                            <option value="Ancón">Ancon</option>
                                            <option value="Ate">Ate</option>
                                            <option value="Barranco">Barranco</option>
                                            <option value="Breña" \u00f1>Breña</option>
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
                                    </dd>
                                    </td>
                                    <td></td>
                                    </tr>
                                    <tr>
                                        <td class="primeraColumna">
                                            Direccion 1 :
                                        </td>
                                        <td>
                                    <dd class="soloTexto"> <%=usu.getDireccion1Usuario()%> </dd>
                                    <dd> <input type="text" name="txtDireccion1" id="txtDireccion1" class="campoOculto" value="<%=usu.getDireccion1Usuario()%>" size="30" maxlength="50"> </dd>
                                    </td>
                                    <td></td>
                                    </tr>
                                    <tr>
                                        <td class="primeraColumna">
                                            Direccion 2 :
                                        </td>
                                        <td>
                                    <dd class="soloTexto"> <%=usu.getDireccion2Usuario()%> </dd>
                                    <dd> <input type="text" name="txtDireccion2" id="txtDireccion2" class="campoOculto" value="<%=usu.getDireccion2Usuario()%>" size="30" maxlength="50"> </dd>
                                    </td>
                                    <td></td>
                                    </tr>
                                    <tr>
                                        <td class="primeraColumna">
                                            Telefono :
                                        </td>
                                        <td>
                                    <dd class="soloTexto"> <%=usu.getTelefonoUsuario()%> </dd>
                                    <dd> <input  onkeypress="return soloNumeros(event)" type="text" name="txtTelefono" id="txtTelefono" class="campoOculto" value="<%=usu.getTelefonoUsuario()%>" size="30" maxlength="9"> </dd>
                                    </td>
                                    <td></td>
                                    </tr>
                                    <tr>

                                    </tr>
                                    <tr>
                                        <td colspan="3" class="Botones">
                                            <br>
                                            <input type="button" name="btnCancelar" id="btnCancelar" class="button btn btn-outline-danger"value="Cancelar">
                                            <input type="button" name="btnModificar" id="btnModificar" class="button btn btn-outline-warning" value="Modificar">
                                            <input type="button" name="btnGuardar" id="btnGuardar" class="campoOculto btn btn-outline-info" value="Guardar">
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
                                            var val = document.getElementById("miInput").value;
                                            var tam = val.length;
                                            for (i = 0; i < tam; i++) {
                                                if (!isNaN(val[i]))
                                                    document.getElementById("miInput").value = '';
                                            }
                                        }

                                        function soloNumeros(e) {
                                            var key = window.Event ? e.which : e.keyCode
                                            return (key >= 48 && key <= 57)
                                        }
                                    </script>




                                    </script>

                                    </tr>
                                    <tr>
                                        <td>
                                            <br>
                                        </td>
                                    </tr>
                            </table>
                            <input type="hidden" name="accion" value="modificarUsuario">

                        </form>
                    </center>
                </div>
            </div>
                                    
        </div>
    </body>
</html>
