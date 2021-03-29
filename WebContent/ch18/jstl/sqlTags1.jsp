<!-- sqlTags1.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource url="jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=EUC_KR"
                                 driver="org.gjt.mm.mysql.Driver"
                                 user="root"
                                 password="1234"
                                 var="db"
                                 scope="application"/>
<sql:query var="lists" dataSource="${db}">
	select id, name from tblMember
</sql:query>
<table border="1">
  <tr>
    <th>아이디</th>
    <th>이름</th>
  </tr>
  <!-- rowsByIndex : 해당 개수 만큼 row를 가져오는것 -->
  <c:forEach var="member" items="${lists.rowsByIndex}">
  	<tr>
  		<c:forEach var="mem" items="${member}">
  			<td>${mem}</td>
  		</c:forEach>
  	</tr>
  </c:forEach>
</table><p>
<a href="sqlTags2.jsp">수정하기</a>











                                 