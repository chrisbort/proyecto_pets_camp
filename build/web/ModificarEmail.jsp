
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/CambiarEmail.js"></script>
        <link type="text/css" rel="stylesheet" href="css1/css1.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>

    <%
        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(request.getParameter("codigoU"));
    %>

    <body onload="cargar()">
        <div class="d-flex">
            <div class="col-sm-12">
                <div class="card">
                    <form action="Servlet_Usu" method="post" id="frmModificarEmail">
                        <table id="tablaModificarEmail">
                            <tr>
                                <th colspan="2">
                                    <h1>Cambiar E-mail</h1>
                                </th>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="hidden" name="txtCodigo" value="<%=usu.getCodigoUsuario()%>">
                                    <input type="hidden" name="txtCaracter" value="<%=usu.getClaveUsuario()%>">
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Correo actual : 
                                </td>
                                <td>
                            <dd> <%=usu.getEmailUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Ingrese nuevo Email : 
                                </td>
                                <td>
                            <dd> <input type="text" name="txtEmail" id="txtEmail" class="textBox" size="30" maxlength="50"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Confirmar su Email :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtConfirmarEmail" id="txtConfirEmail" class="textBox" size="30" maxlength="50"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Ingrese su contraseña :
                                </td>
                                <td>
                            <dd> <input type="password" name="txtPass" id="txtPass" class="textBox" size="30" maxlength="50"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="Botones">
                                    <br>
                                    <input type="button" name="btnCancelar" id="btnCancelar" class="button" value="Cancelar">
                                    <input type="button" name="btnGuardar" id="btnGuardar" class="button" value="Guardar">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" name="accion" value="modificarEmail">
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
