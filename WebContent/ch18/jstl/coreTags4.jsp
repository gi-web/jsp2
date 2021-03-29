<!-- coreTags4.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="http://localhost/myapp/ch18/jstl/coreTags2.jsp">
	<c:param name="id" value="aaa"/>
	<c:param name="color" value="orange"/>
</c:import>
<hr>
<c:url var="url1" value="https://google.com">
	<c:param name="q" value="ÀÚ½º¹Î»ì·Õ"/>
	<c:param name="safe" value="off"/>
</c:url>
<a href="${url1}">±¸±Û¿¡¼­ 'ÀÚ½º¹Î»ì·Õ' °Ë»ö</a>


















