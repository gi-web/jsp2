<!-- sqlTags4.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:update dataSource="${db}">
	update tblMember set name = ? where id =?
	<sql:param value="${param.name}"/>
	<sql:param value="${param.id}"/>
</sql:update>
<c:redirect url="sqlTags3.jsp"/>












