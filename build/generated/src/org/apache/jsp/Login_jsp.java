package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <link href=\"css/StyleLogin.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.4.2.min.js\"></script>\n");
      out.write("        <script src=\"js/Login1.js\" type=\"text/javascript\"></script>\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/css1.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/css1.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\t\n");
      out.write("      <script src=\"assets/js/custom.js\"></script>\n");
      out.write("\t\n");
      out.write("   </head>\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body style=\"background-color: #198A40\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br> <img src=\"img/logo.png\" width=\"100\" height=\"100\" alt=\"\"/>\n");
      out.write("        <div class=\"login\">\n");
      out.write("            <img src=\"img/user.png\" class=\"usuario\" width=\"100\" height=\"100\" alt=\"\" >\n");
      out.write("            <CENTER> <p>sign in</p></CENTER>\n");
      out.write("            <CENTER> <p>PETS CAMP</p></CENTER>\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <div>\n");
      out.write("                <form method=\"post\" action=\"Servlet_Usu\" id=\"frmLogin\">\n");
      out.write("                    <table id=\"tablaLogin\">\n");
      out.write("\n");
      out.write("                        <H4> <img src=\"img/huella.png\" width=\"20\" height=\"20\" alt=\"\"/> USUARIO</H4>\n");
      out.write("                        <input  type=\"text\" name=\"txtUsuario\" placeholder=\"Ingrese usuario\" id=\"txtUsuario\">\n");
      out.write("\n");
      out.write("                        <H4> <img src=\"img/huella.png\" width=\"20\" height=\"20\" alt=\"\"/> CONTRASEÑA</H4>\n");
      out.write("                        <input type=\"password\" name=\"txtClave\" placeholder=\"Ingrese contraseña\" id=\"txtClave\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <input class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModal\" type=\"submit\" name=\"btnIngresar\" value=\"Ingresar\" id=\"btnIngresar\">\n");
      out.write("                        <a href=\"RegistrarCliente.jsp\" id=\"lnkRegistrarUsuario\"><h4>Registrate aqui</h4></a>\n");
      out.write("                        <!-- Modal -->\n");
      out.write("                        <div class=\"modal fade\" id=\"exampleModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                            <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                                <div class=\"modal-content\">\n");
      out.write("                                   \n");
      out.write("                                    <div class=\"modal-body\">\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </table>\n");
      out.write("                    <input type=\"hidden\" name=\"accion\" value=\"login\">\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("              \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
