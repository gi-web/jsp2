<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mgr" class="netpidia.NetpidiaMgr"/>
<%
	  request.setCharacterEncoding("EUC-KR");
	  String cPath = request.getContextPath();
	  String id = request.getParameter("id");
	  String pass = request.getParameter("pwd");
	  String msg = "�α��ο� ���� �Ͽ����ϴ�.";
	  
	  boolean result = mgr.loginMember(id,pass);
	  if(result){
	    session.setAttribute("idKey",id);
	    response.sendRedirect("index.jsp");
	  }
		  
	  
%>
<script>
	alert("<%=msg%>");
	location.href = "login3.jsp";
</script>