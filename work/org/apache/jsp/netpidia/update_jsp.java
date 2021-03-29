/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.40
 * Generated at: 2021-01-12 06:06:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.netpidia;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import netpidia.NetpidiaBean;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("netpidia.NetpidiaBean");
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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
      response.setContentType("text/html; charset=UTF-8");
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
request.setCharacterEncoding("EUC-KR");
      out.write("\r\n");
      out.write("\r\n");
      netpidia.NetpidiaMgr mgr = null;
      mgr = (netpidia.NetpidiaMgr) _jspx_page_context.getAttribute("mgr", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (mgr == null){
        mgr = new netpidia.NetpidiaMgr();
        _jspx_page_context.setAttribute("mgr", mgr, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');

		request.setCharacterEncoding("UTF-8");
		String id = (String)session.getAttribute("idKey");
		if(id==null){
			response.sendRedirect("login.jsp");
			return;
		}
		NetpidiaBean bean = mgr.getMember(id);

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <title>넷피디아 회원수정</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"new_main.css\">\r\n");
      out.write("        <script type=\"text/javascript\">        \t\r\n");
      out.write("        \tvar popupX = (document.body.offsetWidth / 2) - (300 / 2);\r\n");
      out.write("    \t\t//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음\r\n");
      out.write("\r\n");
      out.write("    \t\tvar popupY= (window.screen.height / 2) - (150 / 2);\r\n");
      out.write("    \t\t//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음\t\t\r\n");
      out.write("    \t</script>  \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- header -->\r\n");
      out.write("        <div id=\"header\">\r\n");
      out.write("            <img src=\"./image/netpidia.png\">\r\n");
      out.write("        </div>\r\n");
      out.write("\t\t<form name=\"regFrm\" method=\"post\" action=\"updateProc.jsp\">\r\n");
      out.write("        <!-- wrapper -->\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("            <!-- content-->\r\n");
      out.write("            <div id=\"content\">\r\n");
      out.write("\r\n");
      out.write("                <!-- ID -->\r\n");
      out.write("                <div>\r\n");
      out.write("                    <h3 class=\"join_title\">\r\n");
      out.write("                        <label for=\"id\">아이디</label>\r\n");
      out.write("                    </h3>\r\n");
      out.write("                    <span class=\"box int_id\">\r\n");
      out.write("                        <input type=\"text\" id=\"id\" name=\"id\" class=\"iint\" maxlength=\"20\"\r\n");
      out.write("                        \t   value=\"");
      out.print(bean.getId() );
      out.write("\" readonly>                                             \r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"error_next_box\"></span>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- PW1 -->\r\n");
      out.write("                <div>\r\n");
      out.write("                    <h3 class=\"join_title\"><label for=\"pswd1\">비밀번호</label></h3>\r\n");
      out.write("                    <span class=\"box int_pass\">\r\n");
      out.write("                        <input type=\"text\" id=\"pswd1\" name=\"pwd\" class=\"int\" maxlength=\"20\"\r\n");
      out.write("                        \t   value=\"");
      out.print(bean.getPwd());
      out.write("\">\r\n");
      out.write("                        <span id=\"alertTxt\">사용불가</span>\r\n");
      out.write("                        <img src=\"./image/m_icon_pass.png\" id=\"pswd1_img1\" class=\"pswdImg\">\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"error_next_box\"></span>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- PW2 -->\r\n");
      out.write("                <div>\r\n");
      out.write("                    <h3 class=\"join_title\"><label for=\"pswd2\">비밀번호 재확인</label></h3>\r\n");
      out.write("                    <span class=\"box int_pass_check\">\r\n");
      out.write("                        <input type=\"text\" id=\"pswd2\" name=\"pswd2\" class=\"int\" maxlength=\"20\"\r\n");
      out.write("                        \t   value=\"");
      out.print(bean.getPwd());
      out.write("\">\r\n");
      out.write("                        <img src=\"./image/m_icon_check_disable.png\" id=\"pswd2_img1\" class=\"pswdImg\">\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"error_next_box\"></span>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- NAME -->\r\n");
      out.write("                <div>\r\n");
      out.write("                    <h3 class=\"join_title\"><label for=\"name\">이름</label></h3>\r\n");
      out.write("                    <span class=\"box int_name\">\r\n");
      out.write("                        <input type=\"text\" id=\"name\" name=\"name\" class=\"int\" maxlength=\"20\"\r\n");
      out.write("                        \t   value=\"");
      out.print(bean.getName());
      out.write("\">\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"error_next_box\"></span>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- BIRTH -->\r\n");
      out.write("                <div>\r\n");
      out.write("                    <h3 class=\"join_title\"><label for=\"yy\">생년월일</label></h3>\r\n");
      out.write("\r\n");
      out.write("                    <div id=\"bir_wrap\">\r\n");
      out.write("                        <!-- BIRTH_YY -->\r\n");
      out.write("                        <div id=\"bir_yy\">\r\n");
      out.write("                            <span class=\"box\">\r\n");
      out.write("                                <input type=\"text\" id=\"yy\" name=\"birthday\" class=\"int\" maxlength=\"6\" placeholder=\"ex)920122\"\r\n");
      out.write("                                value=\"");
      out.print(bean.getBirthday());
      out.write("\">\r\n");
      out.write("                            </span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <span class=\"error_next_box\"></span>    \r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- GENDER -->\r\n");
      out.write("                <div>\r\n");
      out.write("                    <h3 class=\"join_title\"><label for=\"gender\">성별</label></h3>\r\n");
      out.write("                    <span class=\"box gender_code\">\r\n");
      out.write("                        <select id=\"gender\" name=\"gender\" class=\"sel\">\r\n");
      out.write("                            <option value=\"00\">성별</option>\r\n");
      out.write("                            <option value=\"M\" name=\"M\">남자 </option>                          \r\n");
      out.write("                            <option value=\"F\" name=\"F\">여자</option>                           \r\n");
      out.write("                        </select>                          \r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"error_next_box\">필수 정보입니다.</span>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- EMAIL -->\r\n");
      out.write("                <div>\r\n");
      out.write("                    <h3 class=\"join_title\"><label for=\"email\">이메일<span class=\"optional\"></span></label></h3>\r\n");
      out.write("                    <span class=\"box int_email\">\r\n");
      out.write("                        <input type=\"text\" id=\"email\" name=\"email\" class=\"int\" maxlength=\"100\"\r\n");
      out.write("                        \t   value=\"");
      out.print(bean.getEmail());
      out.write("\">\r\n");
      out.write("                    </span>\r\n");
      out.write("                    <span class=\"error_next_box\">이메일 주소를 다시 확인해주세요.</span>    \r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- JOIN BTN-->\r\n");
      out.write("                <div class=\"btn_area\">\r\n");
      out.write("                    <input type=\"submit\" value = \"UPDATE\" id=\"btnJoin\" name=\"btnJoin\" onclick = \"inputCheck()\">                                          \r\n");
      out.write("                </div>\r\n");
      out.write("            </div> \r\n");
      out.write("            <!-- content-->\r\n");
      out.write("\r\n");
      out.write("        </div> \r\n");
      out.write("        <!-- wrapper -->\r\n");
      out.write("   <script src = \"main.js\"></script>\r\n");
      out.write(" \r\n");
      out.write("   <script>\r\n");
      out.write("   document.regFrm.gender.value=\"");
      out.print(bean.getGender());
      out.write("\";  \r\n");
      out.write("   </script> \r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
