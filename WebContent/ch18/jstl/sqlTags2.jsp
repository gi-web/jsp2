<!-- sqlTags2.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:update dataSource="${db}">
	update tblMember set name=? where id=?
	<sql:param value="${'°­È£µ¿'}"/>
	<sql:param value="${'aaa'}"/>
</sql:update>
<c:redirect url="sqlTags1.jsp"/>











                                 