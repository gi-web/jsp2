<%@ page  contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="netpidia.NetpidiaMgr"/>
<jsp:useBean id="bean" class="netpidia.NetpidiaBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
		boolean result = mgr.updateMember(bean); 
		if(result){
%>
		<script>
			alert("ȸ�������� ���� �Ͽ����ϴ�.");
			location.href = "index.jsp";
		</script>
<%}else{%>
		<script>
			alert("ȸ������ ������ ���� �Ͽ����ϴ�.");
			history.back();
		</script>
<%}%>
