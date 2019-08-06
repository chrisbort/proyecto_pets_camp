<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <div class="d-flex"  aligen="center">
            <div class="col-sm-12">
                <div class="card">
                    <div style="font-size: 15px">
                        <center><h2>MANTENIMIENTO</h2></center>
                        <table class="table" style="font-size: 20px;">
                            <thead class="btn-outline-success">
                                <tr>
                                    <th>NUEVO</th>
                                    <th>HABILITADOS</th>
                                    <th>INHABILITADOS</th>
                                    <th>RESERVAS</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a href="RegistrarProducto.jsp">+ Producto</a></td>
                                    <td><a href="MostrarProducto.jsp" class="link">Producto</a></td>
                                    <td> <a href="MostrarProductosEliminados.jsp" class="link">Producto</a></td>
                                    <td><a href="MostrarVenta.jsp" class="link">Ir a Reportes</a></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><a href="MostrarUsuario.jsp" class="link">Usuario</a></td>
                                    <td> <a href="MostrarUsuarioEliminado.jsp" class="link">Usuario</a></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><a href="MostrarMascota.jsp" class="link">Mascota</a></td>
                                    <td><a href="MostrarMascotasEliminadas.jsp" class="link">Mascota</a></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                    <a href="javascript:history.back(1)" class="btn btn-outline-success" >Volver Atrás</a>
                </div>
            </div>
        </div>
    </body>
</html>