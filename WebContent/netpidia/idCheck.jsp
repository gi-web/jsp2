<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class = "netpidia.NetpidiaMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		boolean result = mgr.checkId(id);
%>

<!doctype html>
<html>
<head>
<title>ID �ߺ�üũ</title>

</head>
<body bgcolor="#f5f6f7">
<div align="center">
<br/><b><%=id%></b>
<%
		if(result){
			out.println("�� �̹� �����ϴ� ID�Դϴ�.<p/>");
		}else{
			out.println("�� ��� �����մϴ�.<p/>");
		}
%>
<a href="#" onclick="self.close()">�ݱ�</a>
</div>
</body>
</html>