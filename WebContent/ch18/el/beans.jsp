<!-- beans.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="ch18.ELDto" />
<jsp:setProperty property="siteName" name="bean"/>
ǥ���� : <%=bean.getSiteName() %><br>
�׼��±� : <jsp:getProperty property="siteName" name="bean"/><br>
EL��� : ${bean.siteName}
