<!-- el1.jsp -->
<%@page contentType="text/html; charset=EUC-KR" 
                  isELIgnored="false"
%>
<%
		request.setCharacterEncoding("EUC-KR");
		request.setAttribute("siteName", "JSPStudy.co.kr");
%>
����Ʈ�� : ${siteName}
