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
			alert("회원정보를 수정 하였습니다.");
			location.href = "index.jsp";
		</script>
<%}else{%>
		<script>
			alert("회원정보 수정에 실패 하였습니다.");
			history.back();
		</script>
<%}%>
