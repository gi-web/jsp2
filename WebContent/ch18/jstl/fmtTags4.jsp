<!-- fmtTags4.jsp -->
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="now" value="<%=new Date()%>"/>
��¥ : <f:formatDate value="${now}" type="date" dateStyle="full"/><br>
�ð� : <f:formatDate value="${now}" type="time"/><p>

<f:timeZone value="Asia/Hong_Kong">
ȫ�� : <f:formatDate value="${now}" type="both" 
timeStyle="full" dateStyle="full"/><p>
</f:timeZone>

<f:timeZone value="Europe/London">
���� : <f:formatDate value="${now}" type="both" 
timeStyle="full" dateStyle="full"/><p>
</f:timeZone>

<f:timeZone value="America/New_York">
���� : <f:formatDate value="${now}" type="both" 
timeStyle="full" dateStyle="full"/><p>
</f:timeZone>

<f:timeZone value="Europe/Berlin">
������ : <f:formatDate value="${now}" type="both" 
timeStyle="full" dateStyle="full"/><p>
</f:timeZone>



















