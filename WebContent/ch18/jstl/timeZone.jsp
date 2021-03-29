<!-- timeZone.jsp -->
<%@page import="java.util.TimeZone"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		String tzArr[] = TimeZone.getAvailableIDs();
		out.println(tzArr.length+"<p>");
		for(int i=0;i<tzArr.length;i++){
			out.println(tzArr[i]+"<br>");
		}
%>
