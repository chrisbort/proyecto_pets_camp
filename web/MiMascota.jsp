<%@page import="java.text.DecimalFormatSymbols"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        

   
        <link href="css1/TablaSearch.css" rel="stylesheet" type="text/css"/>
        <script src="js1/TablaSearch.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>

        
        <title>JSP Page</title>
    </head>

    <body>

        <div style="font-size: 90%;">
            <center><h2>MI MASCOTA</h2></center>
        <div class="form-group">
            <input type="text" class="form-control pull-right" style="width:20%" id="search" placeholder="BUSCAR...">
        </div>

        <BR>
        <BR>
           <table class="table-bordered table pull-right" id="mytable" cellspacing="0" style="width: 100%;">
            <thead class="btn-outline-success">
                <tr role="row">
                 
                    <th>NOMBRE</th>
                    <th>SEXO</th>
                    <th>EDAD</th>
                    <th>RAZA</th>
                    <th>C. CLIENTE</th>
                    <th>ESTADO</th>
                    <th>OPCION</th>

                </tr>
            </thead>
             <%
                    ArrayList<Mascota> lista = Mascota_DB.obtenerMascotasHabilitados();
                    for(int i=0; i<lista.size(); i++){
                        Mascota m = lista.get(i);
                %>
            <tbody>
                <tr>
                   
            
                    <td>
                        <%=m.getNombre() %>
                    </td>                  
                    <td>
                        <%=m.getSexo()%>
                    </td>
                    <td>
                        <%=m.getEdad() %>
                    </td>
                    <td>
                        <%=m.getRaza() %>
                    </td>
                    <td>
                        <%=m.getCodigoCliente() %>
                    </td>
                    <td>
                        <%=m.getEstado_M() %>
                    </td>


                    <td >
                        <input type="button" name="btnModificar" id="btnModificar" class="btn btn-outline-danger" value="Modificar" onclick="location.href='ModificarMascota.jsp?codigoM=<%=m.getCodigoM() %>'"> 
              
                        <input type="button" name="btnEliminar" id="btnEliminar" class="btn btn-outline-warning" value="Eliminar" onclick="location.href='Servlet_Mas?CodigoM=<%=m.getCodigoM() %>&&accion=eliminar'">
                    </td>
                </tr>


            </tbody>
            <%
                }
            %>
        </table>
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

    </body>
</html>