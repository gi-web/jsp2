<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		pageContext.setAttribute("msg", "꿈은 이루어 진다");
%>
msg : ${pageScope.msg}<br>
sum : ${requestScope.sum}<br>
sum : <%=request.getAttribute("sum") %><br>
id : ${sessionScope.id}<br>
siteName : ${siteName}<br>
