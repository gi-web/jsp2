<!-- fmtTags1.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Locale 지정 ko 국가코드 kr은 언어코드 -->
<f:setLocale value="ko_kr"/>
<%-- <%request.setCharacterEncoding("EUC-KR"); %> --%>
<f:requestEncoding value="EUC-KR"/>
name : ${param.name}
<form method="post">
	<input name="name" value="홍길동">
	<input type="submit">
</form>


















