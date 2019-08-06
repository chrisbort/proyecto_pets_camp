package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import Clase.*;

public final class Catalogo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   <head>\n");
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
      out.write("    \n");
      out.write("    <body onload=\"cargar()\">\n");
      out.write("        \n");
      out.write("        ");

            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        
      out.write("\n");
      out.write("        \n");
      out.write("      <section class=\"main-section team\" id=\"team\">\n");
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
      out.write("    </body>\n");
      out.write("</html>\n");
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
