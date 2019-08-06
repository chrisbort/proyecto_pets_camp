package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class prueba_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<head>\n");
      out.write("    <link href=\"http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"build/css/bootstrap-datetimepicker.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <script type=\"text/javascript\" src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"src/js/bootstrap-datetimepicker.js\" type=\"text/javascript\"></script>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    Datetimepicker: \n");
      out.write("    <div class=\"well\">\n");
      out.write("      <div id=\"txtFechaI\" class=\"input-append date\">\n");
      out.write("          <input name=\"txtFechaI\" id=\"txtFechaI\" data-format=\"dd/MM/yyyy \" type=\"text\">\n");
      out.write("        <span class=\"add-on\">\n");
      out.write("          <i data-time-icon=\"icon-time\" data-date-icon=\"icon-calendar\">\n");
      out.write("          </i>\n");
      out.write("        </span>\n");
      out.write("      \n");
      out.write("      </div>\n");
      out.write("        Datetimepicker: \n");
      out.write("    \n");
      out.write("     <div id=\"txtFechaF\" class=\"input-append date\">\n");
      out.write("         <input name=\"txtFechaF\" id=\"txtFechaF\" data-format=\"dd/MM/yyyy\"  type=\"text\">\n");
      out.write("        <span class=\"add-on\">\n");
      out.write("          <i data-time-icon=\"icon-time\" data-date-icon=\"icon-calendar\">\n");
      out.write("          </i>\n");
      out.write("        </span>\n");
      out.write("     </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("       <script type=\"text/javascript\">\n");
      out.write("      $(function() {\n");
      out.write("        $('#txtFechaI').datetimepicker({\n");
      out.write("          \n");
      out.write("        });\n");
      out.write("      });\n");
      out.write("        $(function() {\n");
      out.write("        $('#txtFechaF').datetimepicker({\n");
      out.write("          \n");
      out.write("        });\n");
      out.write("      });\n");
      out.write("    </script></body>\n");
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
