<%@ page  contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="mgr" class = "netpidia.NetpidiaMgr"/>
<jsp:useBean id="bean" class = "netpidia.NetpidiaBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
	 boolean result = mgr.insertMember(bean);
	  String msg = "ȸ�� ���� ����";
	  String url = "join.jsp";
	  if(result) {
		  msg = "ȸ�� ���� ����";
		  url = "index.jsp";
		  //���� ������ ���ÿ� �α���ó���� ���� ���
		  session.setAttribute("idKey", bean.getId());
	  }
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>