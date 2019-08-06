
<%@page import="java.text.DecimalFormatSymbols"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">


        <link href="css/TablaSearch.css" rel="stylesheet" type="text/css"/>
        <script src="js/TablaSearch.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/MiPerfil.js"></script>
     
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>

    <body>

        <div class="d-flex" style="font-size: 15px">
            <div class="col-sm-12">
                <div class="card">

                    <div class="form-group">
                        <input type="text" class="form-control pull-right" style="width:20%; font-size: 15px" id="search" placeholder="BUSCAR...">
                    </div>

                    <BR>
                    <BR>

                    <table class="table-bordered table pull-right" id="mytable" cellspacing="0" style="width: 100%;">
                        <thead class="btn-outline-success">
                            <tr role="row">
                                <th>CODIGO</th>
                                <th>CLIENTE</th>
                                <th>IMPORTE (S/.)</th>
                                <th>FECHA & HORA</th>
                                <th>OPCION</th>

                            </tr>
                        </thead>
                        <%
                            DecimalFormat df = new DecimalFormat("0.00");
                            DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                            dfs.setDecimalSeparator('.');
                            df.setDecimalFormatSymbols(dfs);

                            ArrayList<Venta> lista = Venta_DB.ObtenerVentas();
                            for (int i = 0; i < lista.size(); i++) {
                                Venta v = lista.get(i);
                        %>
                        <tbody>
                            <tr>
                                <td> <%=v.getCodigoVenta()%></td>
                                <td> <%=v.getCliente()%></td>
                                <td><%=df.format(v.getTotal())%></td>
                                <td><%=v.getFecha()%></td>



                                <td >
                                    <input type="button" name="btnDetalle" id="btnDetalle" class="btn btn-outline-success" value="Detalle venta" onclick="location.href = 'Servlet_Venta?codigoV=<%=v.getCodigoVenta()%>&&cliente=<%=v.getCliente()%>&&importe=<%=v.getTotal()%>&&FechaV=<%=v.getFecha()%>&&MascotaC=<%=v.getMascota()%>&&codigoCli=<%=v.getCodigoCliente()%>&&=<%=v.getCodigoCliente()%>&&accion=MostrarDetalle'">

                                    <input type="button" name="btnEliminar" id="btnEliminar" class="btn btn-outline-warning" value="Eliminar" onclick="location.href = 'Servlet_Venta?codigoV=<%=v.getCodigoVenta()%>&&accion=EliminarVenta'"> 
                                </td>
                            </tr>


                        </tbody>
                        <%
                            }
                        %>
                    </table>
                     <a href="javascript:history.back(1)" class="btn btn-outline-success" >Volver Atrás</a>
                    
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
                    <script>
                                        // Write on keyup event of keyword input element
                                        $(document).ready(function () {
                                            $("#search").keyup(function () {
                                                _this = this;
                                                // Show only matching TR, hide rest of them
                                                $.each($("#mytable tbody tr"), function () {
                                                    if ($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
                                                        $(this).hide();
                                                    else
                                                        $(this).show();
                                                });
                                            });
                                        });
                    </script>
                </div>
            </div>
        </div>
    </body>
</html>
