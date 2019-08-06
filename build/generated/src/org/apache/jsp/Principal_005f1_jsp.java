package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Clase.Usuario_DB;
import Clase.Usuario;

public final class Principal_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" >\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <!-- Meta Tag -->\n");
      out.write("        <script src=\"js/Catalogo.js\" type=\"text/javascript\"></script>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <!-- SEO -->\n");
      out.write("        <meta name=\"description\" content=\"150 words\">\n");
      out.write("        <meta name=\"author\" content=\"uipasta\">\n");
      out.write("        <meta name=\"url\" content=\"http://www.yourdomainname.com\">\n");
      out.write("        <meta name=\"copyright\" content=\"company name\">\n");
      out.write("        <meta name=\"robots\" content=\"index,follow\">\n");
      out.write("        <title>DevBlog - Personal Blog Template</title>\n");
      out.write("\n");
      out.write("        <!-- Favicon -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/favicon/favicon.ico\">\n");
      out.write("        <link rel=\"apple-touch-icon\" sizes=\"144x144\" type=\"image/x-icon\" href=\"images/favicon/apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("        <!-- All CSS Plugins -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/plugin.css\">\n");
      out.write("\n");
      out.write("        <!-- Main CSS Stylesheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("        <!-- Google Web Fonts  -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- HTML5 shiv and Respond.js support IE8 or Older for HTML5 elements and media queries -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("               <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("               <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    ");

        String codigo = (String) session.getAttribute("parametroCodigo");

        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
        String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
    
      out.write("\n");
      out.write("\n");
      out.write("    <body style=\"background-color: #0fd28a;\" onload=\"cargar()\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Preloader Start -->\n");
      out.write("        <div class=\"preloader\">\n");
      out.write("            <div class=\"rounder\"></div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Preloader End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"main\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\" >\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- About Me (Left Sidebar) Start -->\n");
      out.write("                    <div class=\"col-md-3\" style=\"right: 7%; \">\n");
      out.write("                        <div class=\"about-fixed\">\n");
      out.write("\n");
      out.write("                            <div class=\"my-pic\">\n");
      out.write("                                <img src=\"img/logop.jpg\" alt=\"\">\n");
      out.write("                                <a href=\"javascript:void(0)\" class=\"collapsed\" data-target=\"#menu\" data-toggle=\"collapse\"><i class=\"icon-menu menu\"></i></a>\n");
      out.write("                                <div id=\"menu\" class=\"collapse\">\n");
      out.write("                                    <ul class=\"menu-link\">\n");
      out.write("                                        <li><a href=\"Catalogo.jsp\"  target=\"myFrame\">Mi Catalogo</a></li>\n");
      out.write("                                        <li><a href=\"MiPerfil.jsp?codigoU=");
      out.print(usu.getCodigoUsuario());
      out.write("\" id=\"MiCuenta\"  target=\"myFrame\">Mi Perfil</a></li>\n");
      out.write("                                        <li><a href=\"MiMascota.jsp?codigoU=");
      out.print(usu.getCodigoUsuario());
      out.write("\" id=\"MiMascota\"  target=\"myFrame\">Mi Mascota</a></li>\n");
      out.write("                                        <li><a href=\"RegistrarMascota.jsp?codigoU=");
      out.print(usu.getCodigoUsuario());
      out.write("\" id=\"RegistrarMascota\"  target=\"myFrame\">Registrar Mascota</a></li>\n");
      out.write("                                        <li><a href=\"CuentaAdministrador.jsp\"  target=\"myFrame\" id=\"Administrar\">Administrar</a></li>\n");
      out.write("                                        <li><a href=\"MiReserva.jsp?codigoU=");
      out.print(usu.getCodigoUsuario());
      out.write("\" id=\"MiReserva\" target=\"myFrame\">Mi Reserva</a></li>\n");
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"my-detail\">\n");
      out.write("\n");
      out.write("                                <div class=\"white-spacing\">\n");
      out.write("                                    <h1>");
      out.print(usu.getNombreUsuario());
      out.write("</h1>\n");
      out.write("                                    <span>");
      out.print(usu.getApellidosUsuario());
      out.write("</span>\n");
      out.write("                                </div> \n");
      out.write("\n");
      out.write("                                <ul class=\"social-icon\">\n");
      out.write("                                    <li><a href=\"#\" target=\"_blank\" class=\"facebook\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\" target=\"_blank\" class=\"twitter\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\" target=\"_blank\" class=\"linkedin\"><i class=\"fa fa-linkedin\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\" target=\"_blank\" class=\"github\"><i class=\"fa fa-github\"></i></a></li>\n");
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- About Me (Left Sidebar) End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Blog Post (Right Sidebar) Start -->\n");
      out.write("                    <div class=\"col-md-9\" style=\"left: 5%; size: 50; background-color: #2b542c\">\n");
      out.write("                        <div class=\"col-md-12 page-body\" >\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                            \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"m-4\" style=\"height: 550px;  \">\n");
      out.write("                                    <iframe name=\"myFrame\" style=\"height: 100% ; width: 100% ;border: none\" >\n");
      out.write("\n");
      out.write("                                    </iframe>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 content-page\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Footer End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- Blog Post (Right Sidebar) End -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Back to Top Start -->\n");
      out.write("        <a href=\"#\" class=\"scroll-to-top\"><i class=\"fa fa-long-arrow-up\"></i></a>\n");
      out.write("        <!-- Back to Top End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- All Javascript Plugins  -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/plugin.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Main Javascript File  -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/scripts.js\"></script>\n");
      out.write("\n");
      out.write("\n");
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
