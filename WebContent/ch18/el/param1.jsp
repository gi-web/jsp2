<!--  param1.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		/* String id = request.getParameter("id"); */
%>
<%-- id : <%=id %><br> --%>
id : ${param.id}<br>
pwd : ${param["pwd"]}<br>
