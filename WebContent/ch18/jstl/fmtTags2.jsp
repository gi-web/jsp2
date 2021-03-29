<!-- fmtTags2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="now" value="<%=new java.util.Date()%>"/>
<f:setLocale value="ko_kr"/>
금액:<f:formatNumber value="10000000000" 
type="currency" currencySymbol="\\"/><br>
일시:<f:formatDate value="${now}" type="both" 
dateStyle="full" timeStyle="full" /><p>

<f:setLocale value="en_us"/>
금액:<f:formatNumber value="10000000000" 
type="currency"/><br>
일시:<f:formatDate value="${now}" type="both" 
dateStyle="full" timeStyle="full" /><p>

<f:setLocale value="ja_jp"/>
금액:<f:formatNumber value="10000000000" 
type="currency"/><br>
일시:<f:formatDate value="${now}" type="both" 
dateStyle="full" timeStyle="full" /><p>

















