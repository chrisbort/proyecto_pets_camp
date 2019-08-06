

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<%@page import="java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/css1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>

    <%
        String CodigoVenta = (String) session.getAttribute("CodigoVenta");
        String CodigoCliente = (String) session.getAttribute("CodigoCliente");
        String Cliente = (String) session.getAttribute("Cliente");
        String Fecha = (String) session.getAttribute("FechaVenta");
        String FechaInicio = (String) session.getAttribute("FechaInicio");
        String FechaFin = (String) session.getAttribute("FechaFin");
        String Mascota = (String) session.getAttribute("Mascota");
        String Importe = (String) session.getAttribute("Importe");
    %>

    <body>
        <div class="d-flex">
            <div class="col-sm-12">
                <div class="card">
                    <%
                        ArrayList<DetalleVenta> lista = DetalleVenta_DB.obtenerDetalleVenta(CodigoVenta);%>
                    <form action="Servlet_Prod" method="post" >
                        <br>

                        <table id="tablaMostrarDetalleVenta">
                            <tr>
                                <th colspan="5" class="TituloDV">
                                    <h3>RESERVA - <%=CodigoVenta%> </h3>
                                </th>
                            </tr>
                            <tr>
                                <th class="TituloDV">
                                    CLIENTE :  
                                </th>
                                <td colspan="4" class="Contenido">
                                    <%=Cliente%>
                                </td>
                            </tr>
                            <tr>

                                <th class="TituloDV">
                                    FECHA DE INGRESO 
                                </th>
                                <th class="TituloDV">
                                    FECHA DE SALIDA
                                </th>
                            </tr>

                            <%
                                for (int i = 0; i < lista.size(); i++) {
                                    DetalleVenta dv = lista.get(i);
                            %>
                            <tr>

                                <td class="Contenido"><%=dv.getFechaInicio()%></td>
                                <td class="Contenido"><%=dv.getFechaFin()%></td>
                                </div>
                            </tr>
                            <%
                                }
                            %>

                        </table>
                        <table id="tablaMostrarDetalleVenta">


                            <tr>
                                <td colspan="5" class="FilaEnBlanco">
                                    <br>
                                </td>
                            </tr>
                            <tr>
                                <th class="TituloDV">
                                    PRODUCTO 
                                </th>
                                <th class="TituloDV">
                                    P/U (S/.)
                                </th>
                                <th class="TituloDV">
                                    CANTIDAD 
                                </th>
                                <th class="TituloDV">
                                    DESC (S/.)
                                </th>
                                <th class="TituloDV">
                                    SUBTOTAL (S/.)
                                </th>

                            </tr>

                            <%
                                DecimalFormat df = new DecimalFormat("0.00");
                                DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                                dfs.setDecimalSeparator('.');
                                df.setDecimalFormatSymbols(dfs);

                                for (int i = 0; i < lista.size(); i++) {
                                    DetalleVenta dv = lista.get(i);
                            %>
                            <tr>
                                <td class="Contenido"><%=dv.getNombreProducto()%></td>
                                <td class="Contenido"><%=df.format(dv.getPrecio())%></td>
                                <td class="Contenido"><%=df.format(dv.getCantidad())%></td>
                                <td class="Contenido"><%=df.format(dv.getDescuento())%></td>
                                <td class="Contenido"> <div> <%=df.format(dv.getSubTotal())%> </div>

                                    </div>
                            </tr>
                            <%
                                }
                            %>
                            <tr>
                                <th colspan="4" class="TituloDV">
                                    <div> TOTAL (S/.)  </div>
                                </th>
                                <th class="Contenido">
                                    <div> <%=df.format(Double.parseDouble(Importe))%> </div>
                                </th>
                            </tr>
                            <tr>
                                <td colspan="5" class="FilaEnBlanco">
                                    <br>
                                </td>
                            </tr>
                        </table>




                        <table id="tablaRegresar">
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="javascript:history.back(1)" class="btn btn-outline-success" >Volver Atrás</a>
                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>

                    </form>

                    <form >
                        <br>
                        <table id="tablaMostrarDatosCliente">
                            <%
                                Usuario usu = Usuario_DB.listarUsuarioPorCodigo(CodigoCliente);
                            %>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Fecha : </dd>
                            </td>
                            <td>
                            <dd> <%=Fecha%> </dd>
                            </td>
                            </tr>


                            <tr>
                                <td class="primeraColumna">
                            <dd> Codigo cliente : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getCodigoUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Cliente : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getNombreUsuario()%>, <%=usu.getApellidosUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Mascota : </dd>
                            </td>
                            <td>
                            <dd> <%=Mascota%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Dni : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getDniUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Email : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getEmailUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Departamento : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getDepartamentoUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Provincia : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getProvinciaUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Distrito : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getDistritoUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Domicilio1 : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getDireccion1Usuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Domicilio2 : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getDireccion2Usuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                            <dd> Telefono : </dd>
                            </td>
                            <td>
                            <dd> <%=usu.getTelefonoUsuario()%> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>
                                           </form>
                </div
            </div>
        </div>

    </body>
</html>
