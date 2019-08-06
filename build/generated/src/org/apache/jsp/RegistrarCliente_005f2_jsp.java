package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegistrarCliente_005f2_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.4.2.min.js\"></script>\n");
      out.write("        <script src=\"js/RegistrarCliente.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/css1.css\" />\n");
      out.write("        <title>RegistrationForm_v1 by Colorlib</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <!-- MATERIAL DESIGN ICONIC FONT -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"fonts/material-design-iconic-font/css/material-design-iconic-font.min.css\">\n");
      out.write("\n");
      out.write("        <!-- STYLE CSS -->\n");
      out.write("        <link href=\"css1/styleRegistrar.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("        <div class=\"wrapper\"  style=\"background-color: #198A40\" >\n");
      out.write("            <div class=\"inner\" >\n");
      out.write("                <div class=\"image-holder\" >\n");
      out.write("                   \n");
      out.write("                    <img src=\"img/premiun.jpg\" alt=\"\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <form name=\"frm\" action=\"Servlet_Usu\" method=\"post\" id=\"frmRegistrarUsuario\">\n");
      out.write("                    <input type=\"hidden\" name=\"accion\" value=\"registrar\">\n");
      out.write("                    <table id=\"tablaRegistrarUsuario\">\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"txtNombres\" id=\"txtNombre\" placeholder=\"ingrese nombres\" class=\"form-control\" required=\"\">\n");
      out.write("                            <input type=\"text\" name=\"txtApellidos\" id=\"txtApellido\" placeholder=\"ingrese apellidos\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-wrapper\">\n");
      out.write("                            <input type=\"text\" name=\"txtDni\" id=\"txtDni\" placeholder=\"Ingrese Dni\" class=\"form-control\"required=\"\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"txtEmail\" id=\"txtEmail\" placeholder=\"Ingrese Email\" class=\"form-control\" required=\"\">\n");
      out.write("                            <input type=\"text\" name=\"txtConfirmarEmail\" id=\"txtConfirEmail\" placeholder=\"Confirmar Email\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"hidden\" name=\"txtDepartamento\" id=\"txtDepartamento\" value=\"Lima\" readonly=\"\" placeholder=\"\" class=\"form-control\">\n");
      out.write("\n");
      out.write("                            <input type=\"hidden\" name=\"txtProvincia\" id=\"txtProvincia\" value=\"Lima\" readonly=\"\" placeholder=\"\" class=\"form-control\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <select name=\"txtDistrito\" id=\"txtDistrito\" class=\"form-control\"required=\"\">\n");
      out.write("                                <option value=\"\" disabled selected>Distrito</option>\n");
      out.write("                                <option value=\"Ancón\">Ancón</option>\n");
      out.write("                                <option value=\"Ate\">Ate</option>\n");
      out.write("                                <option value=\"Barranco\">Barranco</option>\n");
      out.write("                                <option value=\"Breña\">Breña</option>\n");
      out.write("                                <option value=\"Carabayllo\">Carabayllo</option>\n");
      out.write("                                <option value=\"Chaclacayo\">Chaclacayo</option>\n");
      out.write("                                <option value=\"Chorrillos\">Chorrillos</option> \n");
      out.write("                                <option value=\"Chosica\">Chosica</option>\n");
      out.write("                                <option value=\"Comas\">Comas</option>\n");
      out.write("                                <option value=\"El Agustino\">El Agustino</option>\n");
      out.write("                                <option value=\"Independencia\">Independencia</option>\n");
      out.write("                                <option value=\"Jesús María\">Jesús María</option>\n");
      out.write("                                <option value=\"La Molina\">La Molina</option>\n");
      out.write("                                <option value=\"La Victoria\">La Victoria</option>\n");
      out.write("                                <option value=\"Lince\">Lince</option>\n");
      out.write("                                <option value=\"Los Olivos\">Los Olivos</option>\n");
      out.write("                                <option value=\"Lurin\">Lurin</option>\n");
      out.write("                                <option value=\"Magdalena del Mar\">Magdalena del Mar</option>\n");
      out.write("                                <option value=\"Miraflores\">Miraflores</option>\n");
      out.write("                                <option value=\"Pachacamac\">Pachacamac</option>\n");
      out.write("                                <option value=\"Pucusana\">Pucusana</option>\n");
      out.write("                                <option value=\"Pueblo Libre\">Pueblo Libre</option>\n");
      out.write("                                <option value=\"Puente Piedra\">Puente Piedra</option>\n");
      out.write("                                <option value=\"Punta Hermosa\">Punta Hermosa</option>\n");
      out.write("                                <option value=\"Punta Negra\">Punta Negra</option>\n");
      out.write("                                <option value=\"Rímac\">Rímac</option>\n");
      out.write("                                <option value=\"San Bartolo\">San Bartolo</option>\n");
      out.write("                                <option value=\"San Borja\">San Borja</option>\n");
      out.write("                                <option value=\"San Isidro\">San Isidro</option>\n");
      out.write("                                <option value=\"San Juan de Lurigancho\">San Juan de Lurigancho</option>\n");
      out.write("                                <option value=\"San Juan de Miraflores\">San Juan de Miraflores</option>\n");
      out.write("                                <option value=\"San Luis\">San Luis</option>\n");
      out.write("                                <option value=\"San Martín de Porres\">San Martín de Porres</option>\n");
      out.write("                                <option value=\"San Miguel\">San Miguel</option>\n");
      out.write("                                <option value=\"Santa Anita\">Santa Anita</option>\n");
      out.write("                                <option value=\"Santa María del Mar\">Santa María del Mar</option>\n");
      out.write("                                <option value=\"Santa Rosa\">Santa Rosa</option>\n");
      out.write("                                <option value=\"Santiago de Surco\">Santiago de Surco</option>\n");
      out.write("                                <option value=\"Surquillo\">Surquillo</option>\n");
      out.write("                                <option value=\"Villa El Salvador\">Villa El Salvador</option>\n");
      out.write("                                <option value=\"Villa María del Triunfo\">Villa María del Triunfo</option>\n");
      out.write("                            </select>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-wrapper\">\n");
      out.write("                            <input type=\"text\" name=\"txtDireccion1\" id=\"txtDireccion1\" placeholder=\"Referencia\" class=\"form-control\" required=\"\">\n");
      out.write("                            <input type=\"hidden\" name=\"txtDireccion2\" id=\"txtDireccion2\" placeholder=\"Refernecia 2\" class=\"form-control\"required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"txtTelefono\" id=\"txtTelefono\" placeholder=\"Usuario\" class=\"form-control\"required=\"\">\n");
      out.write("                            <input type=\"text\" name=\"txtUsuario\" id=\"txtUsuario\" placeholder=\"Telefono\" class=\"form-control\"required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"password\" name=\"txtClave\" id=\"txtClave\" placeholder=\"Contraseña\" class=\"form-control\"required=\"\">\n");
      out.write("\n");
      out.write("                            <input type=\"password\"  name=\"txtConfirmarClave\" id=\"txtConfirClave\" placeholder=\"Confirmar Contraseña\" class=\"form-control\"required=\"\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <button name=\"btnCancelar\" id=\"btnCancelar\">Regresar\n");
      out.write("                                <i class=\"zmdi zmdi-arrow-right\"></i>\n");
      out.write("                            </button>\n");
      out.write("                            <button name=\"btnRegistrar\" id=\"btnRegistrar\">Registrar\n");
      out.write("                                <i class=\"zmdi zmdi-arrow-right\"></i>\n");
      out.write("                            </button>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </table>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->\n");
      out.write("</html>");
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
