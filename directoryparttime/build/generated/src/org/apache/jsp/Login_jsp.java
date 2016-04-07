package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.PojoCompany;
import Model.hibernateDao;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form name=\"signinForm\" method=\"POST\" action=\"loginServlet\">\n");
      out.write("             <div class=\"form-group\">\n");
      out.write("                Email: <input type=\"text\" placeholder=\"Email\" name=\"email\" id=\"email\"class=\"form-control\">\n");
      out.write("                Password: <input type=\"text\" placeholder=\"Password\" name=\"pwd\" id=\"pwd\" class=\"form-control\">\n");
      out.write("                <button type=\"submit\" id=\"signBtn\" class=\"btn btn-primary\">Sign Up</button>\n");
      out.write("             </div>\n");
      out.write("            ");
 String email = (request.getAttribute("email")).toString();
      out.write("\n");
      out.write("            ");
 String pwd = (request.getAttribute("password")).toString();
      out.write("\n");
      out.write("            \n");
      out.write("            ");
 hibernateDao dao = new hibernateDao(); 
               PojoCompany company = dao.getLogin(email);
            if (company != null){
      out.write("\n");
      out.write("            <h2>Welcome Back to Your Profile</h2>\n");
      out.write("            ");
} else{
      out.write("\n");
      out.write("                 <h2>Login failed - Please try again</h2>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </form>\n");
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
