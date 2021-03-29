<!-- fmtTags3.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="num" value="123456789"/>
<c:set var="num1" value="0.32"/>
숫자:<f:formatNumber value="${num}" type="number" 
groupingUsed="false"/><br>
퍼센트:<f:formatNumber value="${num1}"  type="percent"/><br>
달러:<f:formatNumber value="${num}" type="currency" 
currencySymbol="$"/><br>
패턴:<f:formatNumber value="${num}" pattern="0.0000"/><br>
<f:parseNumber var="i" integerOnly="true" value="123.456"/>
실수를 제외한 정수 : <c:out value="${i}"/>



















