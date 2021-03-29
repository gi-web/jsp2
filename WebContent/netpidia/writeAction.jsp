<%@page import="java.io.PrintWriter"%>
<%@page import="netpidia.UtilMgr"%>
<%@page import="netpidia.NetBoardMgr"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="bBean" class="netpidia.NetBoardBean" />
<jsp:useBean id="bMgr" class="netpidia.NetBoardMgr"/>
<jsp:setProperty property="subject" name="netb" />
<jsp:setProperty property="content" name="netb" />
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
	//insert, update, delete
	String flag = request.getParameter("flag");
	boolean result = false;
	String id = null;
	if (session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	}
	if (id == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.'')");
		script.println("location.href = 'login2.jsp'");
		script.println("</script>");
	} else {
		if (bBean.getSubject() == null || bBean.getContent() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력을 해주세요.'')");
			script.println("location.href = 'login2.jsp'");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'review.jsp'");
			script.println("</script>");
		}
	}
	%>
</body>