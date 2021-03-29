<!-- scope1.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
%>
<%
		int sum = 0;
		for(int i=0;i<11;i++){
			sum+=i;
		}
		request.setAttribute("sum", sum);
		session.setAttribute("id", "rorod");
		application.setAttribute("siteName", "naver.com");
%>
<jsp:forward page="scope2.jsp"/>








