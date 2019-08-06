package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Clase.*;

public final class RegistrarMascota_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"js/jquery-1.4.2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/RegistrarMasc.js\" type=\"text/javascript\"></script>\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("       \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    ");

        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(request.getParameter("codigoU"));
    
      out.write("\n");
      out.write("    ");

        String Codigo_M = ObtenerCodigo.CodigoMascota();
    
      out.write("\n");
      out.write("\n");
      out.write("    <body onload=\"cargar()\">\n");
      out.write("        <div class=\"d-flex\">\n");
      out.write("            <div class=\"col-sm-12\">\n");
      out.write("                <div class=\"card\">\n");
      out.write("                   <form name=\"frm\" class=\"was-validated\" action=\"Servlet_Mas\" method=\"post\" id=\"frmRegistrarMasc\">\n");
      out.write("                        <table id=\"tablaRegistrarMasc\" align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <th colspan=\"2\">\n");
      out.write("                                    <h1> Registrar mascota  </h1>\n");
      out.write("                                </th>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td class=\"form-group\">\n");
      out.write("                                    <label>CODIGO :</label>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                            <dd> <input class=\"form-control \" style=\"width: 210px;\" type=\"text\" name=\"txtCodigo\" value=\"");
      out.print(Codigo_M);
      out.write("\" readonly=\"readonly\" required> </dd>\n");
      out.write("                            </td>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td class=\"form-group\">\n");
      out.write("                                    <label>NOMBRE :</label>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                            <dd> <input onblur=\"limpia()\" onkeypress=\"return soloLetras(event)\" style=\"width: 210px;\" type=\"text\" name=\"txtNombre\" id=\"txtNombre\" class=\"form-control\"  placeholder=\"ingresar el nombre\" required> </dd>\n");
      out.write("                            </td>\n");
      out.write("                            <script>\n");
      out.write("                                function soloLetras(e) {\n");
      out.write("                                    key = e.keyCode || e.which;\n");
      out.write("                                    tecla = String.fromCharCode(key).toLowerCase();\n");
      out.write("                                    letras = \" áéíóúabcdefghijklmnñopqrstuvwxyz\";\n");
      out.write("                                    especiales = [8, 37, 39, 46];\n");
      out.write("\n");
      out.write("                                    tecla_especial = false\n");
      out.write("                                    for (var i in especiales) {\n");
      out.write("                                        if (key == especiales[i]) {\n");
      out.write("                                            tecla_especial = true;\n");
      out.write("                                            break;\n");
      out.write("                                        }\n");
      out.write("                                    }\n");
      out.write("\n");
      out.write("                                    if (letras.indexOf(tecla) == -1 && !tecla_especial)\n");
      out.write("                                        return false;\n");
      out.write("                                }\n");
      out.write("\n");
      out.write("                                function limpia() {\n");
      out.write("                                    var val = document.getElementById(\"txtNombre\").value;\n");
      out.write("                                    var tam = val.length;\n");
      out.write("                                    for (i = 0; i < tam; i++) {\n");
      out.write("                                        if (!isNaN(val[i]))\n");
      out.write("                                            document.getElementById(\"txtNombre\").value = '';\n");
      out.write("                                    }\n");
      out.write("                                }\n");
      out.write("                            </script>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td class=\"form-group\">\n");
      out.write("                                    <label>RAZA :</label>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                            <dd> <select style=\"width: 210px;\"  type=\"text\" name=\"txtRaza\" id=\"txtRaza\" class=\"form-control \" required>\n");
      out.write("                                    <option value=\"VIRINGO\">VIRINGO</option>\n");
      out.write("                                    <option value=\"LABRADOR RETRIEVER\">LABRADOR RETRIEVER</option>\n");
      out.write("                                    <option value=\"PASTOR ALEMÁN\">PASTOR ALEMÁN</option>\n");
      out.write("                                    <option value=\"YORKSHIRE TERRIER \">YORKSHIRE TERRIER</option>\n");
      out.write("                                    <option value=\"BEAGLE\">BEAGLE</option>\n");
      out.write("                                    <option value=\"GOLDEN RETRIEVER\">GOLDEN RETRIEVER</option>\n");
      out.write("                                    <option value=\"BULLDOG\">BULLDOG</option>\n");
      out.write("                                    <option value=\"BÓXER\">BÓXER</option>\n");
      out.write("                                    <option value=\"POODLE\">POODLE</option>\n");
      out.write("                                    <option value=\"SHIH TZU\">SHIH TZU</option>\n");
      out.write("                                    <option value=\"CHOW ? CHOW\">CHOW ? CHOW</option>\n");
      out.write("                                    <option value=\"PEKINÉS\">PEKINÉS</option>\n");
      out.write("                                    <option value=\"MASTIN NAPOLITANO\">MASTIN NAPOLITANO</option>\n");
      out.write("                                    <option value=\"SCHNAUZER\">SCHNAUZER</option>\n");
      out.write("                                    <option value=\"BULLMASTIFF\">BULLMASTIFF</option>\n");
      out.write("                                    <option value=\"HUSKY SIBERIANO\">HUSKY SIBERIANO</option>\n");
      out.write("                                    <option value=\"OTRO\">OTRO</option>\n");
      out.write("                                </select>\n");
      out.write("                            </dd>\n");
      out.write("                            </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td class=\"form-group\">\n");
      out.write("                                    <label>SEXO :</label>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                            <dd> <select style=\"width: 210px;\" type=\"text\" name=\"txtSexo\" id=\"txtSexo\" class=\"form-control \" required>\n");
      out.write("                                    <option value=\"MACHO\">MACHO</option>\n");
      out.write("                                    <option value=\"HEMBRA\">HEMBRA</option>\n");
      out.write("                                </select>\n");
      out.write("                            </dd>\n");
      out.write("                            </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td class=\"form-group\">\n");
      out.write("                                    <label>EDAD :</label>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                            <dd> <input placeholder=\"ingresar la edad\" style=\"width: 210px;\" type=\"text\" name=\"txtEdad\" id=\"txtEdad\" class=\"form-control\" onkeypress=\"return soloNumeros(event)\"maxlength=2\" required> </dd>\n");
      out.write("                            </td>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                            <dd> <input type=\"hidden\" name=\"txtCodigoCliente\" value=\"");
      out.print(usu.getCodigoUsuario());
      out.write("\"> </dd>\n");
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\" class=\"Botones\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <input name=\"btnCancelar\" id=\"btnCancelar\" class=\"button btn btn-outline-danger\" value=\"Cancelar\">\n");
      out.write("                                    <input  name=\"btnRegistrar\" id=\"btnRegistrarMasc\" class=\"button btn btn-outline-dange\" value=\"Registrar\">\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <br>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                            <h1 align=\"center\">\n");
      out.write("                                ");

                                    if (request.getParameter("mens") != null) {
                                        out.println(request.getParameter("mens"));
                                    }
                                
      out.write("\n");
      out.write("                            </h1><br>\n");
      out.write("                            <script type=\"text/javascript\">\n");
      out.write("                                // Solo permite ingresar numeros.\n");
      out.write("                                function soloNumeros(e) {\n");
      out.write("                                    var key = window.Event ? e.which : e.keyCode\n");
      out.write("                                    return (key >= 48 && key <= 57)\n");
      out.write("                                }\n");
      out.write("                            </script>\n");
      out.write("                        </table>\n");
      out.write("                        <input type=\"hidden\" name=\"accion\" value=\"insertar\">\n");
      out.write("                    </form>\n");
      out.write("               \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
