<!-- fmtTags1.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Locale ���� ko �����ڵ� kr�� ����ڵ� -->
<f:setLocale value="ko_kr"/>
<%-- <%request.setCharacterEncoding("EUC-KR"); %> --%>
<f:requestEncoding value="EUC-KR"/>
name : ${param.name}
<form method="post">
	<input name="name" value="ȫ�浿">
	<input type="submit">
</form>


















