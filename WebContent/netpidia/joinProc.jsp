<%@ page  contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="mgr" class = "netpidia.NetpidiaMgr"/>
<jsp:useBean id="bean" class = "netpidia.NetpidiaBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
	 boolean result = mgr.insertMember(bean);
	  String msg = "회원 가입 실패";
	  String url = "join.jsp";
	  if(result) {
		  msg = "회원 가입 성공";
		  url = "index.jsp";
		  //가입 성공과 동시에 로그인처리를 위한 기능
		  session.setAttribute("idKey", bean.getId());
	  }
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>