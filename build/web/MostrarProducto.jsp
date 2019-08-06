<%@page import="java.text.DecimalFormatSymbols"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

  
    </head>
    <head>
        <link href="css/TablaSearch.css" rel="stylesheet" type="text/css"/>
        <script src="js/TablaSearch.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
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
                            <tr role="row" >
                                <th>CODIGO</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>IMAGEN</th>
                                <th>ESTADO</th>
                                <th>OPCION</th>

                            </tr>
                        </thead>
                        <%
                            ArrayList<Producto> lista = Producto_DB.obtenerProductosHabilitados();
                            for (int i = 0; i < lista.size(); i++) {
                                Producto P = lista.get(i);
                        %>
                        <tbody>
                            <tr>
                                <td> <%=P.getCodigoP()%></td>
                                <td> <%=P.getDescripcion()%></td>
                                <td><%=P.getPrecioP()%></td>
                                <td><%=P.getImagenP()%></td>
                                <td><%=P.getEstadoP()%></td>



                                <td >
                                    <input type="button" name="btnModificar" id="btnModificar" class="btn btn-outline-warning" value="Modificar" onclick="location.href = 'ModificarProducto.jsp?codigoP=<%=P.getCodigoP()%>'"> 

                                    <input type="button" name="btnEliminar" id="btnEliminar" class="btn btn-outline-danger" value="Eliminar" onclick="location.href = 'Servlet_Prod?codigoP=<%=P.getCodigoP()%>&&accion=eliminar'">
                              
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
