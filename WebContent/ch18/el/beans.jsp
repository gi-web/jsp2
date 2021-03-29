<!-- beans.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="ch18.ELDto" />
<jsp:setProperty property="siteName" name="bean"/>
표현식 : <%=bean.getSiteName() %><br>
액션태그 : <jsp:getProperty property="siteName" name="bean"/><br>
EL방식 : ${bean.siteName}
