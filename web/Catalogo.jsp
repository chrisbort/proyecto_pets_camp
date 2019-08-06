<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8">
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/Catalogo.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>Homepage</title>
        <link rel="icon" href="favicon.png" type="image/png">
        <link rel="shortcut icon" href="favicon.ico" type="img/x-icon">

        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>

        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" type="text/css">

        <script type="text/javascript" src="js/jquery.1.8.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.isotope.js"></script>
        <script type="text/javascript" src="js/wow.js"></script>
        <script type="text/javascript" src="js/classie.js"></script>
        <script type="text/javascript" src="js/magnific-popup.js"></script>
        <script src="contactform/contactform.js"></script>

        <!-- =======================================================
    Theme Name: Knight
    Theme URL: https://bootstrapmade.com/knight-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
        ======================================================= -->

    </head>
    
    <body onload="cargar()">
        
        <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>
        
      <section class="main-section team" id="team">
            <!--main-section team-start-->
            <div class="container" >
                <form align="center">

                    <table width="1500" align="center" >
                        <tr>
                        <center><h2>SERVICIO PETS CAMP</h2></center>
                        <h6>Lo mejor lo encuentras aqui..</h6>
                        </tr>

                        <tbody>
                            <%
                                ArrayList<Producto> lista = Producto_DB.obtenerProductosHabilitados();                                int salto = 0;
                                for (int i = 0; i < lista.size(); i++) {
                                    Producto p = lista.get(i);
                            %>

                        <div class="team-leader-block " align="center">
                            <div class="team-leader-box">
                                <div class="team-leader wow fadeInDown delay-03s" >
                                    <div class="team-leader-shadow"><a href="#"></a></div>
                                    <img src="images/<%=p.getImagenP()%>" width="1000"   alt="">
                                    <ul>
                                        <li> <a  type="button" class="BotonAñadir btn btn-outline-success" name="btnADD" value="ADD SERVICIO" href='AnadirCarrito.jsp?codigoP=<%=p.getCodigoP()%>&&cliente=<%=cliente%>' id="AñadirCarrito" target="myFrame">AÑADIR</a></li>
                                    </ul>

                                </div>

                                <h3 class="wow fadeInDown delay-03s"><%=p.getDescripcion()%></h3>
                                <span class="wow fadeInDown delay-03s">S/ <%=p.getPrecioP()%></span>
                                <p class="wow fadeInDown delay-03s">Primero eres tu</p>

                            </div>

                        </div>

                        <%
                            salto++;
                            if (salto == 3) {
                        %>

                        <tr>

                            <%
                                        salto = 0;
                                    }
                                }
                            %>
                            </tbody>
                    </table>
                </form>

            </div>
        </section>
    </body>
</html>
