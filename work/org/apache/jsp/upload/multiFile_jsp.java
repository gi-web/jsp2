/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.40
 * Generated at: 2021-01-11 01:57:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.upload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class multiFile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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

      out.write('\r');
      out.write('\n');

	int filecounter = 1;
	if (request.getParameter("addcnt") != null) {
		filecounter = Integer.parseInt(request.getParameter("addcnt"));
	}

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Multi File Select Page</title>\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function addFile(formName){\r\n");
      out.write("\tif(formName.addcnt.value==\"\"){\r\n");
      out.write("\t\talert(\" ????????? ?????? ????????? ???????????? ??????????????? ???????????????\" ); \r\n");
      out.write("\t\tformName.addcnt.focus();\t\t\t\t\t\t \r\n");
      out.write("\t\treturn;\r\n");
      out.write("\t}\r\n");
      out.write("\tformName.submit();\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function elementCheck(formName){\r\n");
      out.write("   paramIndex = 1; \r\n");
      out.write("   for(idx=0; idx<formName.elements.length; idx++){\r\n");
      out.write("      if(formName.elements[idx].type == \"file\"){\r\n");
      out.write("         if(formName.elements[idx].value==\"\"){\r\n");
      out.write("\t        var message = paramIndex+\" ?????? ??????????????? ?????????????????????.\\n???????????? ????????? ????????? ?????????\";\r\n");
      out.write("\t\t    alert(message);\r\n");
      out.write("\t\t\tformName.elements[idx].focus();\r\n");
      out.write("\t\t\treturn;\t\t\r\n");
      out.write("\t     }\r\n");
      out.write("\t     paramIndex++; \r\n");
      out.write("      }\r\n");
      out.write("   }\r\n");
      out.write("   formName.action = \"multiFileProc.jsp\";\r\n");
      out.write("   formName.submit();\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body topmargin=\"100\">\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<font color=\"#0000ff\" size=\"3\"> \r\n");
      out.write("???????????? ????????? ???????????? ????????? ?????? ????????? ????????? ???<br>\r\n");
      out.write("?????? ????????? ???????????????!!!<br>\r\n");
      out.write("????????? ???????????? DONE ????????? ???????????????</font></div>\r\n");
      out.write("<br>\r\n");
      out.write("<form name=\"frmName1\" method=\"post\">\r\n");
      out.write("<table width=\"500\" border=\"1\" align=\"center\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"4\">\r\n");
      out.write("\t\t<div align=\"center\"><font size=\"3\">????????? ?????? ??? ??????</font> \r\n");
      out.write("\t\t<input name=\"addcnt\"> \r\n");
      out.write("\t\t<input type=\"button\" value=\" ?????? \" onclick=\"addFile(this.form)\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<form name=\"frmName2\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("<table width=\"500\" border=\"1\" align=\"center\">\r\n");
      out.write("\t<tr bgcolor=\"#FFCC00\">\r\n");
      out.write("\t\t<td width=\"40%\">\r\n");
      out.write("\t\t");

			for (int i = 0; i < filecounter; i++) {
		
      out.write(" \r\n");
      out.write("\t\t\t<input type=\"File\" size=\"50\" name=\"selectFile");
      out.print(i);
      out.write("\"><br>\r\n");
      out.write("\t\t");
}
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td><input type=\"Button\" value=\"DONE\" onclick=\"elementCheck(this.form)\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
