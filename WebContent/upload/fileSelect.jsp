<!-- fileSelect.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<form method="post" enctype="multipart/form-data" 
action="viewPage.jsp">
	user : <input name="user" value="홍길동"><br>
	title : <input name="title" value="파일업로드"><br>
	file : <input type="file" name="upload"><br>
	<input type="submit" value="파일전송">
</form>
