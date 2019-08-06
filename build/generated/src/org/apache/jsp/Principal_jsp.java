package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Clase.Producto_DB;
import Clase.Producto;
import java.util.ArrayList;
import Clase.Usuario_DB;
import Clase.Usuario;

public final class Principal_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("          <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.4.2.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/Catalogo.js\"></script>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/css1.css\" />\n");
      out.write("        <title>Homepage</title>\n");
      out.write("        <link rel=\"icon\" href=\"favicon.png\" type=\"image/png\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"img/x-icon\">\n");
      out.write("\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/magnific-popup.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/animate.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.1.8.3.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-scrolltofixed.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.isotope.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/wow.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/classie.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/magnific-popup.js\"></script>\n");
      out.write("        <script src=\"contactform/contactform.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- =======================================================\n");
      out.write("    Theme Name: Knight\n");
      out.write("    Theme URL: https://bootstrapmade.com/knight-free-bootstrap-theme/\n");
      out.write("    Author: BootstrapMade\n");
      out.write("    Author URL: https://bootstrapmade.com\n");
      out.write("        ======================================================= -->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body onload=\"cargar()\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            String codigo = (String) session.getAttribute("parametroCodigo");

            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <header class=\"header\" id=\"header\">\n");
      out.write("            <!--header-start-->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <figure class=\"logo animated fadeInDown delay-07s\">\n");
      out.write("                    <a href=\"#\"><img src=\"img/logo.png\" alt=\"\"></a>\n");
      out.write("                </figure>\n");
      out.write("                <h1 class=\"animated fadeInDown delay-07s\">Bienvenido: ");
      out.print(usu.getNombreUsuario());
      out.write(' ');
      out.print(usu.getApellidosUsuario());
      out.write("</h1>\n");
      out.write("                <ul class=\"we-create animated fadeInUp delay-1s\">\n");
      out.write("                    <li>");
      out.print(usu.getTipoUsuario());
      out.write("</li>\n");
      out.write("                </ul>\n");
      out.write("                <a class=\"link animated fadeInUp delay-1s servicelink\" href=\"#team\">INICIAR</a>\n");
      out.write("                <a class=\"link2 animated fadeInUp delay-1s servicelink\" href=\"Servlet_Usu?accion=logout\" id=\"Salir\"> SALIR</a>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!--header-end-->\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("        <form action=\"Servlet_Usu\" method=\"post\" id=\"frmCabecera\">\n");
      out.write("            <input type=\"hidden\" value=\"");
      out.print(usu.getTipoUsuario());
      out.write("\" name=\"txtTipo\" id=\"txtTipo\">\n");
      out.write("            <table id=\"tablaCabecera\">\n");
      out.write("           \n");
      out.write("\n");
      out.write("                <nav class=\"main-nav-outer\" id=\"test\">\n");
      out.write("                    <!--main-nav-start-->\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <ul class=\"main-nav\" style=\"font-size: 20px;\">\n");
      out.write("                            <li><a href=\"#header\">PRINCIPAL</a></li>\n");
      out.write("                            <li><a href=\"#header\"></a></li>\n");
      out.write("                            <li><a href=\"MiPerfil.jsp?codigoU=");
      out.print(usu.getCodigoUsuario());
      out.write("\" id=\"MiCuenta\"  target=\"myFrame\">MI PERFIL</a></li>\n");
      out.write("                            <li><a href=\"MiReserva.jsp?codigoU=");
      out.print(usu.getCodigoUsuario());
      out.write("\" id=\"MiReserva\" target=\"myFrame\">MI RESERVA</a></li>\n");
      out.write("                            <li class=\"small-logo\"><a href=\"Servlet_Usu?accion=logout\" id=\"Salir\"><img src=\"img/user.png\" width=\"50\"alt=\"\"></a></li>\n");
      out.write("                            <li><a href=\"RegistrarMascota.jsp?codigoU=");
      out.print(usu.getCodigoUsuario());
      out.write("\" id=\"RegistrarMascota\"  target=\"myFrame\">NUEVA MASCOTA</a></li>\n");
      out.write("                            <li><a href=\"MiMascota.jsp?codigoU=");
      out.print(usu.getCodigoUsuario());
      out.write("\" id=\"MiMascota\"  target=\"myFrame\">MI MASCOTA</a></li>\n");
      out.write("                            <li><a href=\"CuentaAdministrador.jsp\"  target=\"myFrame\"  id=\"Administrar\">  ADMINISTRAR</a></li>\n");
      out.write("                            <li> <a class=\"button btn btn-outline-danger\" href=\"Servlet_Usu?accion=logout\" id=\"Salir\"> SALIR</a></li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                        <a class=\"res-nav_click\" href=\"#\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("                <!--main-nav-end-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("              \n");
      out.write("            </table>\n");
      out.write("            <input type=\"hidden\" name=\"accion\" value=\"logout\">\n");
      out.write("        </form>\n");
      out.write("        <hr>\n");
      out.write("\n");
      out.write("        <section class=\"main-section team\" id=\"team\">\n");
      out.write("            <!--main-section team-start-->\n");
      out.write("            <div class=\"container\" >\n");
      out.write("                <form align=\"center\">\n");
      out.write("\n");
      out.write("                    <table width=\"1500\" align=\"center\" >\n");
      out.write("                        <tr>\n");
      out.write("                        <center><h2>SERVICIO PETS CAMP</h2></center>\n");
      out.write("                        <h6>Lo mejor lo encuentras aqui..</h6>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tbody>\n");
      out.write("                            ");

                                ArrayList<Producto> lista = Producto_DB.obtenerProductosHabilitados();                                int salto = 0;
                                for (int i = 0; i < lista.size(); i++) {
                                    Producto p = lista.get(i);
                            
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"team-leader-block \" align=\"center\">\n");
      out.write("                            <div class=\"team-leader-box\">\n");
      out.write("                                <div class=\"team-leader wow fadeInDown delay-03s\" >\n");
      out.write("                                    <div class=\"team-leader-shadow\"><a href=\"#\"></a></div>\n");
      out.write("                                    <img src=\"images/");
      out.print(p.getImagenP());
      out.write("\" width=\"1000\"   alt=\"\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li> <a  type=\"button\" class=\"BotonAñadir btn btn-outline-success\" name=\"btnADD\" value=\"ADD SERVICIO\" href='AnadirCarrito.jsp?codigoP=");
      out.print(p.getCodigoP());
      out.write("&&cliente=");
      out.print(cliente);
      out.write("' id=\"AñadirCarrito\" target=\"myFrame\">AÑADIR</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <h3 class=\"wow fadeInDown delay-03s\">");
      out.print(p.getDescripcion());
      out.write("</h3>\n");
      out.write("                                <span class=\"wow fadeInDown delay-03s\">S/ ");
      out.print(p.getPrecioP());
      out.write("</span>\n");
      out.write("                                <p class=\"wow fadeInDown delay-03s\">Primero eres tu</p>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        ");

                            salto++;
                            if (salto == 3) {
                        
      out.write("\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("\n");
      out.write("                            ");

                                        salto = 0;
                                    }
                                }
                            
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--main-section team-end-->\n");
      out.write("        <section class=\"main-section team\" id=\"team\">\n");
      out.write("            <div class=\"m-4\" style=\"height: 700px;  \">\n");
      out.write("                <iframe name=\"myFrame\" style=\"height: 100% ; width: 100% ;border: none\" >\n");
      out.write("\n");
      out.write("                </iframe>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer class=\"footer\" style=\"background-color: #000\">\n");
      out.write("            <div class=\"container\" >\n");
      out.write("                <div class=\"footer-logo\"><a href=\"#\"><img src=\"img/footer-logo.png\" alt=\"\"></a></div>\n");
      out.write("                <span class=\"copyright\">&copy; Knight Theme. All Rights Reserved</span>\n");
      out.write("                <div class=\"credits\">\n");
      out.write("                    <!--\n");
      out.write("All the links in the footer should remain intact.\n");
      out.write("You can delete the links only if you purchased the pro version.\n");
      out.write("Licensing information: https://bootstrapmade.com/license/\n");
      out.write("Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Knight\n");
      out.write("                    -->\n");
      out.write("                    Designed by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function (e) {\n");
      out.write("\n");
      out.write("                $('#test').scrollToFixed();\n");
      out.write("                $('.res-nav_click').click(function () {\n");
      out.write("                    $('.main-nav').slideToggle();\n");
      out.write("                    return false\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                $('.Portfolio-box').magnificPopup({\n");
      out.write("                    delegate: 'a',\n");
      out.write("                    type: 'image'\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            wow = new WOW({\n");
      out.write("                animateClass: 'animated',\n");
      out.write("                offset: 100\n");
      out.write("            });\n");
      out.write("            wow.init();\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(window).load(function () {\n");
      out.write("\n");
      out.write("                $('.main-nav li a, .servicelink').bind('click', function (event) {\n");
      out.write("                    var $anchor = $(this);\n");
      out.write("\n");
      out.write("                    $('html, body').stop().animate({\n");
      out.write("                        scrollTop: $($anchor.attr('href')).offset().top - 102\n");
      out.write("                    }, 1500, 'easeInOutExpo');\n");
      out.write("                    /*\n");
      out.write("                     if you don't want to use the easing effects:\n");
      out.write("                     $('html, body').stop().animate({\n");
      out.write("                     scrollTop: $($anchor.attr('href')).offset().top\n");
      out.write("                     }, 1000);\n");
      out.write("                     */\n");
      out.write("                    if ($(window).width() < 768) {\n");
      out.write("                        $('.main-nav').hide();\n");
      out.write("                    }\n");
      out.write("                    event.preventDefault();\n");
      out.write("                });\n");
      out.write("            })\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(window).load(function () {\n");
      out.write("\n");
      out.write("\n");
      out.write("                var $container = $('.portfolioContainer'),\n");
      out.write("                        $body = $('body'),\n");
      out.write("                        colW = 375,\n");
      out.write("                        columns = null;\n");
      out.write("\n");
      out.write("\n");
      out.write("                $container.isotope({\n");
      out.write("                    // disable window resizing\n");
      out.write("                    resizable: true,\n");
      out.write("                    masonry: {\n");
      out.write("                        columnWidth: colW\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                $(window).smartresize(function () {\n");
      out.write("                    // check if columns has changed\n");
      out.write("                    var currentColumns = Math.floor(($body.width() - 30) / colW);\n");
      out.write("                    if (currentColumns !== columns) {\n");
      out.write("                        // set new column count\n");
      out.write("                        columns = currentColumns;\n");
      out.write("                        // apply width to container manually, then trigger relayout\n");
      out.write("                        $container.width(columns * colW)\n");
      out.write("                                .isotope('reLayout');\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                }).smartresize(); // trigger resize to set container width\n");
      out.write("                $('.portfolioFilter a').click(function () {\n");
      out.write("                    $('.portfolioFilter .current').removeClass('current');\n");
      out.write("                    $(this).addClass('current');\n");
      out.write("\n");
      out.write("                    var selector = $(this).attr('data-filter');\n");
      out.write("                    $container.isotope({\n");
      out.write("                        filter: selector,\n");
      out.write("                    });\n");
      out.write("                    return false;\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
