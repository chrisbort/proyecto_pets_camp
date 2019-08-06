

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/CambiarPass.js"></script>
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

                    <form action="Servlet_Usu" method="post" id="frmModificarClave">
                        <table id="tablaModificarClave">
                            <tr>
                                <th colspan="2">
                                    <h1>Cambiar contrase&ntildea</h1>
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
                                    Ingrese su contrase&ntildea actual : 
                                </td>
                                <td>
                            <dd> <input type="password" name="txtClaveActual" id="txtClaveActual" class="textBox" size="20" maxlength="20"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Ingrese nueva contrase&ntildea : 
                                </td>
                                <td>
                            <dd> <input type="password" name="txtClave" id="txtClave" class="textBox" size="20" maxlength="20"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Confirmar su contrase&ntildea :
                                </td>
                                <td>
                            <dd> <input type="password" name="txtConfirmarClave" id="txtConfirClave" class="textBox" size="20" maxlength="20"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="Botones">
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
                        <input type="hidden" name="accion" value="modificarClave">
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
