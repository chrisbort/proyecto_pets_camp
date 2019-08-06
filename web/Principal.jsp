<%@page import="Clase.Producto_DB"%>
<%@page import="Clase.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clase.Usuario_DB"%>
<%@page import="Clase.Usuario"%>
<!doctype html>
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
            String codigo = (String) session.getAttribute("parametroCodigo");

            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>


        <header class="header" id="header">
            <!--header-start-->
            <div class="container">
                <figure class="logo animated fadeInDown delay-07s">
                    <a href="#"><img src="img/logo.png" alt=""></a>
                </figure>
                <h1 class="animated fadeInDown delay-07s">Bienvenido: <%=usu.getNombreUsuario()%> <%=usu.getApellidosUsuario()%></h1>
                <ul class="we-create animated fadeInUp delay-1s">
                    <li><%=usu.getTipoUsuario()%></li>
                </ul>
                <a class="link animated fadeInUp delay-1s servicelink" href="#team">INICIAR</a>
                <a class="link2 animated fadeInUp delay-1s servicelink" href="Servlet_Usu?accion=logout" id="Salir"> SALIR</a>
               
            </div>
        </header>
        <!--header-end-->
        
        

        <form action="Servlet_Usu" method="post" id="frmCabecera">
            <input type="hidden" value="<%=usu.getTipoUsuario()%>" name="txtTipo" id="txtTipo">
            <table id="tablaCabecera">
           

                <nav class="main-nav-outer" id="test">
                    <!--main-nav-start-->
                    <div class="container">
                        <ul class="main-nav" style="font-size: 20px;">
                            <li><a href="#header">PRINCIPAL</a></li>
                            <li><a href="#header"></a></li>
                            <li><a href="MiPerfil.jsp?codigoU=<%=usu.getCodigoUsuario()%>" id="MiCuenta"  target="myFrame">MI PERFIL</a></li>
                            <li><a href="MiReserva.jsp?codigoU=<%=usu.getCodigoUsuario()%>" id="MiReserva" target="myFrame">MI RESERVA</a></li>
                            <li class="small-logo"><a href="Servlet_Usu?accion=logout" id="Salir"><img src="img/user.png" width="50"alt=""></a></li>
                            <li><a href="RegistrarMascota.jsp?codigoU=<%=usu.getCodigoUsuario()%>" id="RegistrarMascota"  target="myFrame">NUEVA MASCOTA</a></li>
                            <li><a href="MiMascota.jsp?codigoU=<%=usu.getCodigoUsuario()%>" id="MiMascota"  target="myFrame">MI MASCOTA</a></li>
                            <li><a href="CuentaAdministrador.jsp"  target="myFrame"  id="Administrar">  ADMINISTRAR</a></li>
                            <li> <a class="button btn btn-outline-danger" href="Servlet_Usu?accion=logout" id="Salir"> SALIR</a></li>

                        </ul>
                        <a class="res-nav_click" href="#"><i class="fa fa-bars"></i></a>
                    </div>
                </nav>
                <!--main-nav-end-->



              
            </table>
            <input type="hidden" name="accion" value="logout">
        </form>
        <hr>

  

        <!--main-section team-end-->
        <section class="main-section team" id="team" >
            <div class="m-4" style="height: 500px;  ">
                <iframe name="myFrame" style="height: 100% ; width: 100% ;border: none" src="img/VideoPets.mp4"  >

                </iframe>
            </div>
      
        </section>



        <footer class="footer" style="background-color: #000">
            <div class="container" >
                <div class="footer-logo"><a href="#"><img src="img/footer-logo.png" alt=""></a></div>
                <span class="copyright">&copy; Knight Theme. All Rights Reserved</span>
                <div class="credits">
                    <!--
All the links in the footer should remain intact.
You can delete the links only if you purchased the pro version.
Licensing information: https://bootstrapmade.com/license/
Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Knight
                    -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </footer>


        <script type="text/javascript">
            $(document).ready(function (e) {

                $('#test').scrollToFixed();
                $('.res-nav_click').click(function () {
                    $('.main-nav').slideToggle();
                    return false

                });

                $('.Portfolio-box').magnificPopup({
                    delegate: 'a',
                    type: 'image'
                });

            });
        </script>

        <script>
            wow = new WOW({
                animateClass: 'animated',
                offset: 100
            });
            wow.init();
        </script>


        <script type="text/javascript">
            $(window).load(function () {

                $('.main-nav li a, .servicelink').bind('click', function (event) {
                    var $anchor = $(this);

                    $('html, body').stop().animate({
                        scrollTop: $($anchor.attr('href')).offset().top - 102
                    }, 1500, 'easeInOutExpo');
                    /*
                     if you don't want to use the easing effects:
                     $('html, body').stop().animate({
                     scrollTop: $($anchor.attr('href')).offset().top
                     }, 1000);
                     */
                    if ($(window).width() < 768) {
                        $('.main-nav').hide();
                    }
                    event.preventDefault();
                });
            })
        </script>

        <script type="text/javascript">
            $(window).load(function () {


                var $container = $('.portfolioContainer'),
                        $body = $('body'),
                        colW = 375,
                        columns = null;


                $container.isotope({
                    // disable window resizing
                    resizable: true,
                    masonry: {
                        columnWidth: colW
                    }
                });

                $(window).smartresize(function () {
                    // check if columns has changed
                    var currentColumns = Math.floor(($body.width() - 30) / colW);
                    if (currentColumns !== columns) {
                        // set new column count
                        columns = currentColumns;
                        // apply width to container manually, then trigger relayout
                        $container.width(columns * colW)
                                .isotope('reLayout');
                    }

                }).smartresize(); // trigger resize to set container width
                $('.portfolioFilter a').click(function () {
                    $('.portfolioFilter .current').removeClass('current');
                    $(this).addClass('current');

                    var selector = $(this).attr('data-filter');
                    $container.isotope({
                        filter: selector,
                    });
                    return false;
                });

            });
        </script>

    </body>

</html>


