/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.40
 * Generated at: 2021-01-13 01:22:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.netpidia;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;

public final class write_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/netpidia/treview.jsp", Long.valueOf(1610429406957L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP?????? ?????? GET, POST ?????? HEAD ??????????????? ???????????????. Jasper??? OPTIONS ????????? ?????? ???????????????.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");

		request.setCharacterEncoding("EUC-KR");
		String id = (String)session.getAttribute("idKey");
		if(id==null){
			//?????? ????????? url???
			StringBuffer url = request.getRequestURL();
			response.sendRedirect("login3.jsp?url="+url);
			return;//????????? jsp ?????? ?????? ??????.
		}

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<title>project</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.css\">\r\n");
      out.write("<link\r\n");
      out.write("\thref=\"https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap\"\r\n");
      out.write("\trel=\"stylesheet\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("<!-- SmartEditor2 ??????????????? -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"se2/js/HuskyEZCreator.js\"\r\n");
      out.write("\tcharset=\"utf-8\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"//code.jquery.com/jquery-1.11.0.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"EUC-KR\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<title>project</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");

	String idk = (String)session.getAttribute("idKey");
	
	String log="";
	if(idk == null) log ="<a href=login3.jsp>LOGIN</a>";
	else log = "<a href=logout.jsp>LOGOUT</a>";

	String reg="";
	if(idk == null) reg ="<a href=join.jsp>SIGNUP</a>";
	else reg = "<a href=update.jsp>UPDATE</a>";

      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\t<header>\r\n");
      out.write("\t\t<input type=\"checkbox\" id=\"chk1\">\r\n");
      out.write("\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t<img src=\"./image/netpidia.png\" style=\"float: left; margin-top: 10px; margin-left:70px; width: 200px; height: 60px;\"/>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<ul>\r\n");
      out.write("\t\t\t<li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">Movies</a></li>\r\n");
      out.write("\t\t\t<li class=\"active\"><a href=\"review.jsp\">Review</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">My favorite</a></li>\r\n");
      out.write("\t\t\t<li>");
      out.print(log);
      out.write("<li>\r\n");
      out.write("\t\t\t<li>");
      out.print(reg);
      out.write("</li>\t\t\t\r\n");
      out.write("\t\t\t<label for=\"chk1\" class=\"menu-close\">\r\n");
      out.write("\t\t\t\t<i class=\"fa fa-times\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t\t<div class=\"search\">\r\n");
      out.write("\t\t\t<input type=\"text\" name=\"search\" id=\"srch\" style=\"font-family:????????????\"\r\n");
      out.write("\t\t\trequired placeholder=\"Enter your search\">\r\n");
      out.write("\t\t\t<button type =\"submit\">Search</button>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<label for=\"chk1\" class=\"menu-open\">\r\n");
      out.write("\t\t\t<i class = \"fa fa-bars\" aria-hidden =\"true\"></i>\r\n");
      out.write("\t\t</label>\r\n");
      out.write("\t</header>");
      out.write("\r\n");
      out.write("\t<form name=\"postFrm\" method=\"post\" action=\"netboardPost\"\r\n");
      out.write("\t\tenctype=\"multipart/form-data\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<table\r\n");
      out.write("\t\t\t\t\tstyle=\"margin-left: auto; margin-right: auto; text-allign: center; border: 1px solie #dddddd\"\r\n");
      out.write("\t\t\t\t\tclass=\"table table-striped\">\r\n");
      out.write("\t\t\t\t\t<tbody style=\"color: white; text-allign: center\">\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" class=\"form-control \"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"font-weight: bold; font-family: ??????\" placeholder=\"??????\"\r\n");
      out.write("\t\t\t\t\t\t\t\tname=\"reviewTitle\" maxlength=\"20\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"width:100%; height:50px; font-size:20px; margin:0 auto;\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- SmartEditor2 -->\r\n");
      out.write("\t\t\t<div class=\"jsx-2303464893 editor\">\r\n");
      out.write("\t\t\t\t<div class=\"fr-box fr-basic fr-top\" role=\"application\">\r\n");
      out.write("\t\t\t\t\t<div class=\"fr-wrapper show-placeholder\"\r\n");
      out.write("\t\t\t\t\t\tstyle=\"width: 90%; margin: 0 auto; background-color:#fff\">\r\n");
      out.write("\t\t\t\t\t\t<textarea name=\"notice_content\" id=\"smartEditor\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 100%; height: 512px\"></textarea>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br /> <input type=\"button\"\r\n");
      out.write("\t\t\t\tstyle=\"float: right; margin-right: 5%; font-weight: bold; font-family: ??????;\"\r\n");
      out.write("\t\t\t\tclass=\"btn btn-danger\" value=\"??????\"\r\n");
      out.write("\t\t\t\tonClick=\"javascript:location.href='review.jsp'\"> <input\r\n");
      out.write("\t\t\t\tstyle=\"float: right; margin-right: 0.5%; font-weight: bold; font-family: ??????;\"\r\n");
      out.write("\t\t\t\ttype=\"submit\" class=\"btn btn-danger\" value=\"??????\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("<script type=\"text/javascript\" src=\"write.js\"></script>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
