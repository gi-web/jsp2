<%@page import="ch18.ELMethod"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="n" uri="/WEB-INF/tlds/Functions.tld"%>
<%
		request.setCharacterEncoding("EUC-KR");
		
%>
${n:comma(123456789)}<br>
<%=ELMethod.comma(123456789) %>
