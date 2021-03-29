<!-- sqlTags3.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource url="jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=EUC_KR" 
 driver="org.gjt.mm.mysql.Driver"
 user="root"
 password="1234"
 var="db"/>
<h2>SQL Tags3</h2>
<sql:query var="lists" dataSource="${db}">
	select id, name from tblMember
</sql:query>
<sql:query var="lists2" dataSource="${db}">
	select id from tblMember
</sql:query>
<table border="1">
	<tr><th>ID</th><th>NAME</th></tr>
	<c:forEach var="member" items="${lists.rowsByIndex}">
	<tr>
		<c:forEach var="mem" items="${member}">
			<td>${mem}</td>
		</c:forEach>
	</tr>
	</c:forEach>
</table><p/>
수정하기
<form action="sqlTags4.jsp">
ID : <select name="id">
		<c:forEach var="member2" items="${lists2.rowsByIndex}">
			<c:forEach var="mem2" items="${member2}">
				<option value="${mem2}">${mem2}</option>
			</c:forEach>
		</c:forEach>
	  </select>
NAME : <input name="name" size="10">
<input type="submit" value="UPDATE">	  	  
</form>








