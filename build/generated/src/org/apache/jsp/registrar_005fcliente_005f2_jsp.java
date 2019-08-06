package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registrar_005fcliente_005f2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container mt-2\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-4 offset-md-4\">\n");
      out.write("                    <div class=\"card card-body\">\n");
      out.write("                        <form>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Min text</label>\n");
      out.write("                                <input id=\"mymin\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Max text</label>\n");
      out.write("                                <input id=\"mymax\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Email</label>\n");
      out.write("                                <input id=\"myemail\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Required</label>\n");
      out.write("                                <input id=\"myrequired\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>URL</label>\n");
      out.write("                                <input id=\"myurl\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Integer</label>\n");
      out.write("                                <input id=\"myint\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Numeric</label>\n");
      out.write("                                <input id=\"mynum\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Alphanumeric</label>\n");
      out.write("                                <input id=\"mynum\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Alpha</label>\n");
      out.write("                                <input id=\"myalpha\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Password</label>\n");
      out.write("                                <input id=\"mypassword\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>confirmar password</label>\n");
      out.write("                                <input id=\"passwordConfirm\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Starts  With</label>\n");
      out.write("                                <input id=\"startwith\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Ends With</label>\n");
      out.write("                                <input id=\"endwith\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Contain</label>\n");
      out.write("                                <input id=\"contain\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Divisible</label>\n");
      out.write("                                <input id=\"divisble\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Regular Expression</label>\n");
      out.write("                                <input id=\"regex\" class=\"form-control\" />\n");
      out.write("                            </div><div class=\"form-group\">\n");
      out.write("                                <label>ISO8601</label>\n");
      out.write("                                <input id=\"iso8601\" class=\"form-control\" />\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"bootstrap-validate.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            bootstrapValidate('#mymin','min:5:Enter at least 5 caracteres')\n");
      out.write("            bootstrapValidate('#mymax','max:10:please do not enter more than 10 caracteres')\n");
      out.write("            bootstrapValidate('#myemail','email:enter a valid email address')\n");
      out.write("            bootstrapValidate('#myrequired','required:please fill out this field!')\n");
      out.write("            bootstrapValidate('#myurl','url: please enter a valid url')\n");
      out.write("            bootstrapValidate('#myint','integer: Please fill out this field with integer!')\n");
      out.write("            bootstrapValidate('#mynum','numeric: please only enter numeric character!')\n");
      out.write("            bootstrapValidate('#myalphanum','alphanumeric: please only enter alphanumeric caracteres!')\n");
      out.write("            bootstrapValidate('#myalpha','alpha: you can only input alphaafs caracteres!')\n");
      out.write("            bootstrapValidate('#mypassword','matches:#passwordConfirm: your passwords should match!')\n");
      out.write("            bootstrapValidate('#startwith','startsWith:+62:your phone number needs to contain tedir ghazali!')\n");
      out.write("            bootstrapValidate('#endwith','endsWith:UCV: your input needs to end with UCV')\n");
      out.write("            bootstrapValidate('#contain','contains: Tedir Ghazali: oyur text needs to caontain tedir ghazali!')\n");
      out.write("            bootstrapValidate('#divisble','divisible:15:15 is not divisible by 4')\n");
      out.write("            bootstrapValidate('#regex','regex:^[a-z]+$: please fulfill my regex')\n");
      out.write("            bootstrapValidate('#iso8601','ISO8601: Your input does not match the wanted format YYYY-MM-DD')\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </script>\n");
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
