

<%@page import="Clase.DetalleVenta_DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<%@page import="java.text.*" %>
<!DOCTYPE html>
<html>
    <head>

        <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
        <script src="js/RegistrarVenta.js" type="text/javascript"></script>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
          <link href="css/css1.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <script src="jquery.ui.datepicker-es.js"></script>

        <script>

            $(function () {
                $("#txtFI").datepicker({
                    onClose: function (selectedDate) {
                        $("#txtFF").datepicker("option", "minDate", selectedDate);
                    }
                });
                $("#txtFF").datepicker({
                    onClose: function (selectedDate) {
                        $("#txtFI").datepicker("option", "maxDate", selectedDate);
                    }

                });
            });
        </script>


    </head>



    <body>
        <div class="d-flex" align="center">
            <div class="col-sm-12">
                <div class="card">

                    <%
                        String codigoVenta = ObtenerCodigo.CodigoVenta();
                        String cliente = (String) session.getAttribute("parametroCliente");
                    %>

                    <form action="Servlet_Venta" method="post" id="frmRegistrarVenta">
                        <br>
                        <table id="tablaRegistrarVenta">
                            <tr>
                                <th colspan="12" style="background-color: #449d44">
                                    <h3>CARRITO DE COMPRAS</h3>
                                    <input type="hidden" name="txtCodigoV" value="<%=codigoVenta%>">
                                </th>
                            </tr>
                            <tr>
                                <th colspan="2" style="background-color: #449d44">
                                    CLIENTE :  
                                </th>
                                <td colspan="8" class="Contenido">
                                    <%=cliente%>
                                    <input type="hidden" name="txtCliente" value="<%=cliente%>" size="50" readonly="readonly">
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2" style="background-color: #449d44">
                                    MASCOTA:  
                                </th>
                                <td colspan="8" class="Contenido">
                            <dd> <input type="text" name="txtMascota"  class="textBox" required=""> </dd>
                            </td>
                            </tr>


                            <tr>
                                <th style="background-color: #449d44">
                                    N°
                                </th>
                                <th style="background-color: #449d44">
                                    PRODUCTO 
                                </th>
                                <th style="background-color: #449d44" >
                                    P/U (S/.)
                                </th>
                                <th style="background-color: #449d44"  >
                                    CANTIDAD 
                                </th>

                                <th style="background-color: #449d44">
                                    DESC (S/.)
                                </th>
                                <th style="background-color: #449d44">
                                    SUBTOTAL (S/.)
                                </th>
                                <th style="background-color: #449d44">
                                    FECHA INICIO 
                                </th>
                                <th style="background-color: #449d44">
                                    FECHA FIN 
                                </th >

                                <th style="background-color: #449d44">
                                    OPCION
                                </th>
                            </tr>

                            <%
                                DecimalFormat df = new DecimalFormat("0.00");
                                DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                                dfs.setDecimalSeparator('.');
                                df.setDecimalFormatSymbols(dfs);

                                double total = 0;
                                ArrayList<DetalleVenta> lista = (ArrayList<DetalleVenta>) session.getAttribute("carrito");

                                if (lista != null) {
                                    for (DetalleVenta dv : lista) {
                            %>

                            <tr>
                                <td class="Contenido" >
                                    <%=dv.getNumero()%>
                                </td>
                                <td class="Contenido">
                                    <%=dv.getNombreProducto()%>
                                    <input type="hidden" name="nombreProd" value="<%=dv.getNombreProducto()%>">
                                </td>
                                <td class="Contenido">
                                    <%=df.format(dv.getPrecio())%>
                                    <input type="hidden" name="precioProd" value="<%=dv.getPrecio()%>">
                                </td>
                                <td class="Contenido">
                                    <%=dv.getCantidad()%>
                                    <input type="hidden" name="cantidadProd" value="<%=dv.getCantidad()%>">
                                </td>

                                <td class="Contenido">
                                    <%=df.format(dv.getDescuento())%>
                                    <input type="hidden" name="descuentoProd" value="<%=dv.getDescuento()%>">
                                </td>
                                <td class="Contenido">
                                    <div> <%=df.format(dv.getSubTotal())%> </div>
                                    <input type="hidden" name="subTotalProd" value="<%=dv.getSubTotal()%>">
                                </td> 
                                <td class="Contenido">
                                    <%=dv.getFechaInicio()%>
                                    <input type="hidden" name="FechaInicio" value="<%=dv.getFechaInicio()%>">
                                </td>
                                <td class="Contenido">
                                    <%=dv.getFechaFin()%>
                                    <input type="hidden" name="FechaFin" value="<%=dv.getFechaFin()%>">
                                </td>


                                <td whidh="100" class="Opcion">
                                    <input type="button" name="btnEliminar" id="btnEliminar" class="btn btn-outline-danger" value="Eliminar" onclick="location.href = 'Servlet_Venta?numero=<%=dv.getNumero()%>&&accion=quitar'">
                                </td>
                            </tr>
                            <%
                                        total = total + dv.getSubTotal();
                                    }
                                }
                            %>
                            <tr>
                                <th colspan="8" style="background-color: #449d44">
                                    <div> TOTAL (S/.)  </div>
                                </th>
                                <th class="Contenido">
                                    <div> <%=String.valueOf(df.format(total))%> </div>
                                    <input type="hidden" name="txtTotal" value="<%=String.valueOf(df.format(total))%>" readonly="readonly">
                                </th>


                            </tr>

                            <tr>
                                <td colspan="12" style="background-color: #449d44">
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
                                    <input type="button" name="btnRegistrar" id="btnRegistrarVenta" class="btn btn-outline-success" value="Registrar compra">
                                <a href="javascript:history.back(1)" class="btn btn-outline-success" >Volver Atrás</a>
                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>        
                        <input type="hidden" name="accion" value="RegistrarVenta"><br>

                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
