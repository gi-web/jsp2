<!-- coreTags3.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
		String str1[] = {"Java","JSP","Spring", "Android"};
		String str2 = "트와이스, AOA; 블랙핑크, 레드벨벳";
%>
<c:set  var="arr" value="<%=str1%>"/>
<c:forEach var="i" items="${arr}" begin="0" step="1" end="3">
	${i}<br>
</c:forEach>
<hr>
<c:set  var="s" value="<%=str2%>"/>
<c:forTokens var="st" items="${s}" delims=",;">
	${st}<br>
</c:forTokens>



















