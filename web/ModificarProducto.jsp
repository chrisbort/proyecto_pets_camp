

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/ModificarProd.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>

    <%
        Producto p = Producto_DB.listarProductoPorCodigo(request.getParameter("codigoP"));
    %>

    <body onload="cargar()">
        <div class="d-flex">
            <div class="col-sm-12">
                <div class="card">
                    <form name="frm" action="Servlet_Prod" method="post" id="frmModificarProd">
                        <table id="tablaModificarProd">
                            <tr>
                                <th colspan="2">
                                    <h1>Modificar producto</h1>
                                </th>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="hidden" name="txtCodigo" value="<%=p.getCodigoP()%>">
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Codigo producto :
                                </td>
                                <td>
                            <dd> <%=p.getCodigoP()%> </dd>
                            </td>
                            </tr>

                            <tr>
                                <td class="primeraColumna">
                                    Descripcion producto :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtDescripcionP" id="txtDescripcionP" value="<%=p.getDescripcion()%>" size="30" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Precio producto :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtPrecioP" id="txtPrecioP" value="<%=p.getPrecioP()%>" size="30" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Imagen actual : 
                                </td>
                                <td>
                            <dd> <input type="radio" name="selected" value="SelectImagenActual" id="SelectImagenActual" checked="checked"> 
                                <input type="text" name="txtImagen" id="txtImagen" value="<%=p.getImagenP()%>" size="30" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Modificar imagen : 
                                </td>
                                <td>
                            <dd> <input type="radio" name="selected" value="SelectModificarImagen" id="SelectModificarImagen"> 
                                <input type="file" name="txtModificarImagen" id="txtModificarImagen" size="30"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="Botones">
                                    <br>
                                    <input type="button" name="btnCancelar" id="btnCancelar" class="button btn btn-outline-danger" value="Cancelar">
                                    <input type="button" name="btnGuardar" id="btnGuardar" class="button btn btn-outline-info" value="Guardar">
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
