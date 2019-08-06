

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/StyleLogin.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script src="js/Login1.js" type="text/javascript"></script>
        

        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<head>
	
      <script src="assets/js/custom.js"></script>
	
   </head>

        <title>JSP Page</title>
    </head>

    <body style="background-color: #198A40">






        <br> <img src="img/logo.png" width="100" height="100" alt=""/>
        <div class="login">
            <img src="img/user.png" class="usuario" width="100" height="100" alt="" >
            <CENTER> <p>sign in</p></CENTER>
            <CENTER> <p>PETS CAMP</p></CENTER>

            <br>
            <div>
                <form method="post" action="Servlet_Usu" id="frmLogin">
                    <table id="tablaLogin">

                        <H4> <img src="img/huella.png" width="20" height="20" alt=""/> USUARIO</H4>
                        <input  type="text" name="txtUsuario" placeholder="Ingrese usuario" id="txtUsuario">

                        <H4> <img src="img/huella.png" width="20" height="20" alt=""/> CONTRASEÑA</H4>
                        <input type="password" name="txtClave" placeholder="Ingrese contraseña" id="txtClave">


                        <input class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" type="submit" name="btnIngresar" value="Ingresar" id="btnIngresar">
                        <a href="RegistrarCliente.jsp" id="lnkRegistrarUsuario"><h4>Registrate aqui</h4></a>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                   
                                    <div class="modal-body">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </table>
                    <input type="hidden" name="accion" value="login">

                </form>

              
            </div>

        </div> 


    </body>





</html>
