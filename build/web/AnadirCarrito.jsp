

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
        <script src="js/RegistrarCliente.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <script src="jquery.ui.datepicker-es.js"></script>
        <title>JSP Page</title>

    </head>






    <head>
        <meta charset="utf-8">

        
        <script>
            /**
             * Documentado en http://lwp-l.com/s2379
             */
            function isValidDate(day, month, year)
            {
                var dteDate;
                month = month - 1;
                dteDate = new Date(year, month, day);
                return ((day == dteDate.getDate()) && (month == dteDate.getMonth()) && (year == dteDate.getFullYear()));
            }

            /**
             * Funcion para validar una fecha
             * Tiene que recibir:
             *  La fecha en formato español dd/mm/yyyy
             * Devuelve:
             *  true o false
             */
            function validate_fecha(fecha)
            {
                var patron = new RegExp("^([0-9]{1,2})([/])([0-9]{1,2})([/])(19|20)+([0-9]{2})$");

                if (fecha.search(patron) == 0)
                {
                    var values = fecha.split("/");
                    if (isValidDate(values[0], values[1], values[2]))
                    {
                        return true;
                    }
                }
                return false;
            }

            function calcularDias()
            {
                var txtFechaI = document.getElementById("txtFechaI").value;
                var txtFechaF = document.getElementById("txtFechaF").value;
                
                var resultado = "";
                if (validate_fecha(txtFechaI) && validate_fecha(txtFechaF))
                {
                    inicial = txtFechaI.split("/");
                    final = txtFechaF.split("/");
                    // obtenemos las fechas en milisegundos
                    var dateStart = new Date(inicial[2], (inicial[1] - 1), inicial[0]);
                    var dateEnd = new Date(final[2], (final[1] - 1), final[0]);
                    if (dateStart < dateEnd)
                    {
                        // la diferencia entre las dos fechas, la dividimos entre 86400 segundos
                        // que tiene un dia, y posteriormente entre 1000 ya que estamos
                        // trabajando con milisegundos.
                        resultado = "" + (((dateEnd - dateStart) / 86400) / 1000) + " ";
                    } else {
                        resultado = "La fecha inicial es posterior a la fecha final";
                    }
                } else {
                    if (!validate_fecha(fechaInicial))
                        resultado = "La fecha inicial es incorrecta";
                    if (!validate_fecha(fechaFinal))
                        resultado = "La fecha final es incorrecta";
                }
                document.getElementById("resultado").value = resultado;
            }
        </script>

    </head>

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colrolib Templates">
        <meta name="author" content="colorlib.com">
        <meta name="keywords" content="Colrolib Templates">

        <!-- Title Page-->
        <title>Au Form Wizard</title>

        <!-- Icons font CSS-->
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="css/main.css" rel="stylesheet" media="all">
    </head>
    <%
        String cliente = request.getParameter("cliente");
        Producto p = Producto_DB.listarProductoPorCodigo(request.getParameter("codigoP"));
    %>

    <body>
        <div class="d-flex" style="font-size: 15px" align="center">
            <div class="col-sm-12">
                <div class="card">
                    <form name="frm" action="Servlet_Prod" method="post" >
                        <input type="hidden" name="txtCliente" value="<%=cliente%>">
                        <table id="tablaAnadirCarrito">
                            <tr>
                                <th colspan="2">
                                    <h1>AÑADIR RESERVA</h1>
                                </th>
                            </tr>
                            <tr>
                                <td colspan="2">
                            <dd> <input type="hidden" name="txtCodigo" value="<%=p.getCodigoP()%>" size="20" maxlength="30"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Nombre producto :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtNombreP" class="campoNoEditable" value="<%=p.getDescripcion()%>" 
                                        size="60" readonly="readonly"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    Precio producto :
                                </td>
                                <td>
                            <dd> <input type="text" name="txtPrecio" class="campoNoEditable" value="<%=p.getPrecioP()%>" size="20" maxlength="30" readonly="readonly"> </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    FECHA DE INGRESO :
                                </td>
                                <td> 
                                    <input type="text" name="txtFechaI" id="txtFechaI" value="10/07/2019">
                                </td>


                                <td>
                            <dd> <input id="resultado" name="txtCantidad" type="hidden" > </dd>
                            </td>
                            </tr>

                            <tr>
                                <td class="primeraColumna">
                                    FECHA DE SALIDA :
                                </td>
                                <td>
                                    <input type="text" name="txtFechaF" id="txtFechaF" value="11/07/2019">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="Botones" >
                                    <br>
                                    <input style="width: 226px;" type="button" name="btnCancelar" id="btnCancelar"  class="btn btn-outline-danger"  value="Cancelar">
                                    <input style="width: 226px;" onclick="calcularDias();" type="submit" name="btnGuardar" id="btnGuardar"  class="btn btn-outline-warning"  value="ADD SERVICIO">
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" name="accion" value="anadirCarrito">
                    </form>
                </div>
            </div>
        </div>
    </body>
    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/jquery-validate/jquery.validate.min.js"></script>
    <script src="vendor/bootstrap-wizard/bootstrap.min.js"></script>
    <script src="vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
</html>
