/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.40
 * Generated at: 2020-12-21 03:18:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Vector;
import board.BCommentBean;
import java.net.URLEncoder;
import board.BoardBean;
import board.UtilMgr;

public final class read_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("board.BoardBean");
    _jspx_imports_classes.add("board.BCommentBean");
    _jspx_imports_classes.add("java.net.URLEncoder");
    _jspx_imports_classes.add("java.util.Vector");
    _jspx_imports_classes.add("board.UtilMgr");
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

      out.write("<!-- read.jsp -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      board.BoardMgr mgr = null;
      mgr = (board.BoardMgr) _jspx_page_context.getAttribute("mgr", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (mgr == null){
        mgr = new board.BoardMgr();
        _jspx_page_context.setAttribute("mgr", mgr, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      board.BCommentMgr cmgr = null;
      cmgr = (board.BCommentMgr) _jspx_page_context.getAttribute("cmgr", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (cmgr == null){
        cmgr = new board.BCommentMgr();
        _jspx_page_context.setAttribute("cmgr", cmgr, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');

		request.setCharacterEncoding("EUC-KR");
        //read.jsp?nowPage=1&numPerPage=10&keyField=&keyWord=&num=3
        String nowPage = request.getParameter("nowPage");	
		String numPerPage = request.getParameter("numPerPage");	
		String keyField = request.getParameter("keyField");	
		String keyWord = request.getParameter("keyWord");	
		int num = UtilMgr.parseInt(request, "num");	
		
		String flag = request.getParameter("flag");
		if(flag!=null){
			if(flag.equals("insert")){
				BCommentBean cbean = new BCommentBean();
				cbean.setNum(num);//어떤 게시물
				cbean.setName(request.getParameter("cName"));
				cbean.setComment(request.getParameter("comment"));
				cmgr.insertBComment(cbean);
			}else if(flag.equals("del")){
				//댓글 삭제
				cmgr.deleteBComment(UtilMgr.parseInt(request, "cnum"));
			}
		}else{
			//list.jsp에서 넘어오는 경우
			//조회수 증가
			mgr.upCount(num);
		}
		
		//게시물 읽기
		BoardBean bean = mgr.getBoard(num);
		String name = bean.getName();
		String subject = bean.getSubject();
		String regdate = bean.getRegdate();
		String content = bean.getContent();
		String filename = bean.getFilename();
		int filesize = bean.getFilesize();
		String ip = bean.getIp();
		int count = bean.getCount();	
		//읽어온 게시물을 수정 및 삭제를 위해 세션저장
		session.setAttribute("bean", bean);		

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>JSP Board</title>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction down(filename) {\r\n");
      out.write("\t\tdocument.downFrm.filename.value=filename;\r\n");
      out.write("\t\tdocument.downFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction list() {\r\n");
      out.write("\t\tdocument.listFrm.action = \"list.jsp\";\r\n");
      out.write("\t\tdocument.listFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction cInsert() {\r\n");
      out.write("\t\tif(document.cFrm.comment.value==\"\"){\r\n");
      out.write("\t\t\talert(\"댓글을 입력하세요.\");\r\n");
      out.write("\t\t\tdocument.cFrm.comment.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.cFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction cDel(cnum) {\r\n");
      out.write("\t\tdocument.cFrm.cnum.value=cnum;\r\n");
      out.write("\t\tdocument.cFrm.flag.value=\"del\";\r\n");
      out.write("\t\tdocument.cFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#FFFFCC\">\r\n");
      out.write("<br/><br/>\r\n");
      out.write("<table align=\"center\" width=\"600\" cellspacing=\"3\">\r\n");
      out.write(" <tr>\r\n");
      out.write("  <td bgcolor=\"#9CA2EE\" height=\"25\" align=\"center\">글읽기</td>\r\n");
      out.write(" </tr>\r\n");
      out.write(" <tr>\r\n");
      out.write("  <td colspan=\"2\">\r\n");
      out.write("   <table cellpadding=\"3\" cellspacing=\"0\" width=\"100%\"> \r\n");
      out.write("    <tr> \r\n");
      out.write("  <td align=\"center\" bgcolor=\"#DDDDDD\" width=\"10%\"> 이 름 </td>\r\n");
      out.write("  <td bgcolor=\"#FFFFE8\">");
      out.print(name);
      out.write("</td>\r\n");
      out.write("  <td align=\"center\" bgcolor=\"#DDDDDD\" width=\"10%\"> 등록날짜 </td>\r\n");
      out.write("  <td bgcolor=\"#FFFFE8\">");
      out.print(regdate);
      out.write("</td>\r\n");
      out.write(" </tr>\r\n");
      out.write(" <tr> \r\n");
      out.write("    <td align=\"center\" bgcolor=\"#DDDDDD\"> 제 목</td>\r\n");
      out.write("    <td bgcolor=\"#FFFFE8\" colspan=\"3\">");
      out.print(subject);
      out.write("</td>\r\n");
      out.write("   </tr>\r\n");
      out.write("   <tr> \r\n");
      out.write("     <td align=\"center\" bgcolor=\"#DDDDDD\">첨부파일</td>\r\n");
      out.write("     <td bgcolor=\"#FFFFE8\" colspan=\"3\">\r\n");
      out.write("    \t");
if(filename!=null&&!filename.equals("")){
      out.write("\r\n");
      out.write("    \t\t<a href=\"javascript:down('");
      out.print(filename);
      out.write("')\">");
      out.print(filename);
      out.write("</a>\r\n");
      out.write("    \t\t<font color=\"blue\">(");
      out.print(UtilMgr.intFormat(filesize));
      out.write("bytes)</font>\r\n");
      out.write("    \t");
}else{out.println("첨부된 파일이 없습니다.");}
      out.write("\r\n");
      out.write("     </td>\r\n");
      out.write("   </tr>\r\n");
      out.write("   <tr> \r\n");
      out.write("    <td colspan=\"4\"><br/><pre>");
      out.print(content);
      out.write("</pre><br/></td>\r\n");
      out.write("   </tr>\r\n");
      out.write("   <tr>\r\n");
      out.write("    <td colspan=\"4\" align=\"right\">\r\n");
      out.write("     ");
      out.print(ip);
      out.write("로 부터 글을 남기셨습니다./  조회수  ");
      out.print(count);
      out.write("\r\n");
      out.write("    </td>\r\n");
      out.write("   </tr>\r\n");
      out.write("   </table>\r\n");
      out.write("  </td>\r\n");
      out.write(" </tr>\r\n");
      out.write(" <tr>\r\n");
      out.write("  <td align=\"center\" colspan=\"2\">\r\n");
      out.write("  <!-- 댓글 입력폼 Start -->\r\n");
      out.write("    <form method=\"post\" name=\"cFrm\">\r\n");
      out.write("\t\t<table>\r\n");
      out.write("\t\t\t<tr  align=\"center\">\r\n");
      out.write("\t\t\t\t<td width=\"50\">이 름</td>\r\n");
      out.write("\t\t\t\t<td align=\"left\">\r\n");
      out.write("\t\t\t\t\t<input name=\"cName\" size=\"10\" value=\"aaa\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t<td>내 용</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t<input name=\"comment\" size=\"50\"> \r\n");
      out.write("\t\t\t\t<input type=\"button\" value=\"등록\" onclick=\"cInsert()\"></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t <input type=\"hidden\" name=\"flag\" value=\"insert\">\t\r\n");
      out.write("\t <input type=\"hidden\" name=\"num\" value=\"");
      out.print(num);
      out.write("\">\r\n");
      out.write("\t <input type=\"hidden\" name=\"cnum\">\r\n");
      out.write("    <input type=\"hidden\" name=\"nowPage\" value=\"");
      out.print(nowPage);
      out.write("\">\r\n");
      out.write("    <input type=\"hidden\" name=\"numPerPage\" value=\"");
      out.print(numPerPage);
      out.write("\">\r\n");
      out.write("   ");
if(!(keyWord==null||keyWord.equals(""))){ 
      out.write("\r\n");
      out.write("    <input type=\"hidden\" name=\"keyField\" value=\"");
      out.print(keyField);
      out.write("\">\r\n");
      out.write("    <input type=\"hidden\" name=\"keyWord\" value=\"");
      out.print(keyWord);
      out.write("\">\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("\t</form>\r\n");
      out.write("  <!-- 댓글 입력폼 End -->\r\n");
      out.write(" <hr/>\r\n");
      out.write(" <!-- 댓글 List Start -->\r\n");

		Vector<BCommentBean> cvlist = cmgr.getBComment(num);
		if(!cvlist.isEmpty()){
			//out.println(cvlist.size());

      out.write("\r\n");
      out.write("<table>\r\n");
      out.write("\t");

			for(int i=0;i<cvlist.size();i++){
				BCommentBean cbean = cvlist.get(i);
				int cnum = cbean.getCnum();
				String cname = cbean.getName();
				String comment = cbean.getComment();
				String cregdate = cbean.getRegdate();
		
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"3\" width=\"600\"><b>");
      out.print(cname);
      out.write("</b></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>댓글:");
      out.print(comment);
      out.write("</td>\r\n");
      out.write("\t\t\t<td align=\"right\">");
      out.print(cregdate);
      out.write("</td>\r\n");
      out.write("\t\t\t<td align=\"center\" valign=\"middle\">\r\n");
      out.write("\t\t\t<input type=\"button\" value=\"삭제\" onclick=\"cDel('");
      out.print(cnum);
      out.write("')\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"3\"><br></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t");
}//---for
      out.write("\r\n");
      out.write("</table>\t\r\n");
      out.write("<hr>\t\r\n");
}//--if
      out.write("\r\n");
      out.write(" <!-- 댓글 List End -->\r\n");
      out.write(" [ <a href=\"javascript:list()\" >리스트</a> | \r\n");
      out.write(" <a href=\"update.jsp?nowPage=");
      out.print(nowPage);
      out.write("&num=");
      out.print(num);
      out.write("&numPerPage=");
      out.print(numPerPage);
      out.write("\" >수 정</a> |\r\n");
      out.write(" <a href=\"reply.jsp?nowPage=");
      out.print(nowPage);
      out.write("&numPerPage=");
      out.print(numPerPage);
      out.write("\" >답 변</a> |\r\n");
      out.write(" <a href=\"delete.jsp?nowPage=");
      out.print(nowPage);
      out.write("&num=");
      out.print(num);
      out.write("\">삭 제</a> ]<br/>\r\n");
      out.write("  </td>\r\n");
      out.write(" </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<form method=\"post\" name=\"downFrm\" action=\"download.jsp\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"filename\">\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<form name=\"listFrm\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"nowPage\" value=\"");
      out.print(nowPage);
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"numPerPage\" value=\"");
      out.print(numPerPage);
      out.write("\">\r\n");
      out.write("\t");
if(!(keyWord==null||keyWord.equals(""))){
      out.write("\r\n");
      out.write("\t<input type=\"hidden\" name=\"keyField\" value=\"");
      out.print(keyField);
      out.write("\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"keyWord\" value=\"");
      out.print(keyWord);
      out.write("\">\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
