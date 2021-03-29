<!-- fmtTags5.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<f:setBundle var="note" basename="jstl.note"/>
<f:message bundle="${note}" key="country"/><br>
<f:message bundle="${note}" key="siteName"/><br>
<f:message bundle="${note}" key="msg">
	<f:param value="${param.msg}"/>
</f:message>






