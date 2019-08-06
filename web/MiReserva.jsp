

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

        <link href="css1/TablaSearch.css" rel="stylesheet" type="text/css"/>
        <script src="js1/TablaSearch.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/MiPerfil.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>JSP Page</title>

    </head>

    <%

    %>

    <body>

        <div class="d-flex" style="font-size: 15px">
            <div class="col-sm-12">
                <div class="card">

                    <div class="form-group">
                        <input type="text" class="form-control pull-right" style="width:20%" id="search" placeholder="BUSCAR...">
                    </div>

                    <BR>
                    <BR>

                    <table class="table-bordered table pull-right" id="mytable" cellspacing="0" style="width: 100%; " >
                        <thead>
                            <tr role="row">
                                <th>CODIGO</th>
                                <th>CODIGO CLIENTE</th>

                                <th>MASCOTA</th>




                            </tr>
                        </thead>
                        <%                ArrayList<Venta> lista = Venta_DB.listarVentaPorCodigo(request.getParameter("codigoU"));
                            for (int i = 0; i < lista.size(); i++) {
                                Venta v = lista.get(i);
                        %>
                        <tbody>
                            <tr>

                                <td><%=v.getCodigoVenta()%></td>
                                <td><%=v.getCodigoCliente()%></td>
                                <td><%=v.getMascota()%></td>

                        </tbody>
                        <%
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>


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
    </body>
</html>
