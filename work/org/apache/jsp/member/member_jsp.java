/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.40
 * Generated at: 2021-01-11 01:27:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class member_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>회원가입</title>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"script.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction idCheck(id) {\r\n");
      out.write("\t\tif(id==\"\"){\r\n");
      out.write("\t\t\talert(\"아이디를 입력하세요.\");\r\n");
      out.write("\t\t\tdocument.regFrm.id.focus();\r\n");
      out.write("\t\t\treturn;//이후에 코드를 실행이 안됨. 함수를 빠져나감.\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\turl = \"idCheck.jsp?id=\"+id;\r\n");
      out.write("\t\twindow.open(url,\"ID중복체크\",\"width=300,height=150\");\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction zipSearch() {\r\n");
      out.write("\t\turl = \"zipSearch.jsp?search=n\";\r\n");
      out.write("\t\twindow.open(url,\"우표번호검색\",\r\n");
      out.write("\t\t\t\t\"width=500,height=350,scrollbars=yes\");\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#FFFFCC\" onLoad=\"regFrm.id.focus()\">\r\n");
      out.write("\t<div align=\"center\">\r\n");
      out.write("\t\t<br /><br />\r\n");
      out.write("\t\t<form name=\"regFrm\" method=\"post\" action=\"memberProc.jsp\">\r\n");
      out.write("\t\t\t<table cellpadding=\"5\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td bgcolor=\"#FFFFCC\">\r\n");
      out.write("\t\t\t\t\t\t<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" width=\"600\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr bgcolor=\"#996600\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"3\"><font color=\"#FFFFFF\"><b>회원 가입</b></font></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"20%\">아이디</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"50%\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input name=\"id\" size=\"15\"> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"button\" value=\"ID중복확인\" \r\n");
      out.write("\t\t\t\t\t\t\t\t\tonClick=\"idCheck(this.form.id.value)\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td width=\"30%\">아이디를 적어 주세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>비밀번호</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input type=\"password\" name=\"pwd\" size=\"15\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>비밀번호를 적어주세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>비밀번호 확인</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input type=\"password\" name=\"repwd\" size=\"15\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>비밀번호를 확인합니다.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>이름</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input name=\"name\" size=\"15\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>이름을 적어주세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>성별</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t남<input type=\"radio\" name=\"gender\" value=\"1\" checked> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t여<input type=\"radio\" name=\"gender\" value=\"2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>성별을 선택 하세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>생년월일</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input name=\"birthday\" size=\"6\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\tex)830815</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>생년월일를 적어 주세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>Email</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input name=\"email\" size=\"30\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>이메일를 적어 주세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>우편번호</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input name=\"zipcode\" size=\"5\" readonly>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"button\" value=\"우편번호찾기\" onClick=\"zipSearch()\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>우편번호를 검색하세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>주소</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input name=\"address\" size=\"45\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>주소를 적어 주세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>취미</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>인터넷<input type=\"checkbox\" name=\"hobby\" value=\"인터넷\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t여행<input type=\"checkbox\" name=\"hobby\" value=\"여행\"> 게임<input\r\n");
      out.write("\t\t\t\t\t\t\t\t\ttype=\"checkbox\" name=\"hobby\" value=\"게임\"> 영화<input\r\n");
      out.write("\t\t\t\t\t\t\t\t\ttype=\"checkbox\" name=\"hobby\" value=\"영화\"> 운동<input\r\n");
      out.write("\t\t\t\t\t\t\t\t\ttype=\"checkbox\" name=\"hobby\" value=\"운동\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>취미를 선택 하세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>직업</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><select name=job>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"0\" selected>선택하세요.\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"회사원\">회사원\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"연구전문직\">연구전문직\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"교수학생\">교수학생\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"일반자영업\">일반자영업\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"공무원\">공무원\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"의료인\">의료인\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"법조인\">법조인\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"종교,언론,에술인\">종교.언론/예술인\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"농,축,수산,광업인\">농/축/수산/광업인\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"주부\">주부\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"무직\">무직\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"기타\">기타\r\n");
      out.write("\t\t\t\t\t\t\t\t</select></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>직업을 선택 하세요.</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td colspan=\"3\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t   <input type=\"button\" value=\"회원가입\" onclick=\"inputCheck()\">\r\n");
      out.write("\t\t\t\t\t\t\t\t    &nbsp; &nbsp; \r\n");
      out.write("\t\t\t\t\t\t\t\t    <input type=\"reset\" value=\"다시쓰기\">\r\n");
      out.write("\t\t\t\t\t\t\t\t    &nbsp; &nbsp; \r\n");
      out.write("\t\t\t\t\t\t\t\t    <input type=\"button\" value=\"로그인\" onClick=\"javascript:location.href='login.jsp'\">\r\n");
      out.write("\t\t\t\t\t\t\t\t </td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
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
