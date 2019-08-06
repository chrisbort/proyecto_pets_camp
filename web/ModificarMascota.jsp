

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/ModificarMasc.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>

    <%
        Mascota m = Mascota_DB.listarMascotaPorCodigo2(request.getParameter("codigoM"));
    %>

    <body onload="cargar()">
        <div class="d-flex">
            <div class="col-sm-12">
                <div class="card">
                    <form name="frm" action="Servlet_Mas" method="post" id="frmModificarMasc">
                        <table >
                            <tr>
                                <th colspan="2">
                                    <h1>Modificar mascota</h1>
                                </th>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="hidden" name="txtCodigo" value="<%=m.getCodigoM()%>">
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Codigo mascota :
                                </td>
                                <td>
                            <dd> <%=m.getCodigoM()%> </dd>
                            </td>
                            </tr>

                            <tr>
                                <td class="primeraColumna">
                                    Nombre mascota :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtNombre" id="txtNombre" value="<%=m.getNombre()%>" size="30" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>

                            <tr>
                                <td class="primeraColumna">
                                    Sexo mascota :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtSexo" id="txtSexo" value="<%=m.getSexo()%>" size="30" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Edad mascota :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtEdad" id="txtEdad" value="<%=m.getEdad()%>" size="30" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Raza mascota :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtRaza" id="txtRaza" value="<%=m.getRaza()%>" size="30" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>

                                <td>
                            <dd> <input type="hidden" name="txtCodigoCliente" id="txtCodigoCliente" value="<%=m.getCodigoCliente()%>" size="30" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="Botones">
                                    <br>
                                    <input type="button" name="btnCancelar" id="btnCancelar" class="button btn btn-outline-danger " value="Cancelar">
                                    <input type="button" name="btnGuardar" id="btnGuardarMasc" class="button btn btn-outline-info" value="Guardar">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" name="accion" value="actualizar">
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
