<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		pageContext.setAttribute("msg", "���� �̷�� ����");
%>
msg : ${pageScope.msg}<br>
sum : ${requestScope.sum}<br>
sum : <%=request.getAttribute("sum") %><br>
id : ${sessionScope.id}<br>
siteName : ${siteName}<br>
