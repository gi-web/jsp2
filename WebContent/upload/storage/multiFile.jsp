<%@page contentType="text/html; charset=EUC-KR"%>
<%
	int filecounter = 1;
	if (request.getParameter("addcnt") != null) {
		filecounter = Integer.parseInt(request.getParameter("addcnt"));
	}
%>
<html>
<head>
<title>Multi File Select Page</title>
<script>


function addFile(formName){
	if(formName.addcnt.value==""){
		alert(" 입력할 파일 갯수를 입력하고 확인버튼을 눌러주세요" ); 
		formName.addcnt.focus();						 
		return;
	}
	formName.submit();
}

function elementCheck(formName){
   paramIndex = 1; 
   for(idx=0; idx<formName.elements.length; idx++){
      if(formName.elements[idx].type == "file"){
         if(formName.elements[idx].value==""){
	        var message = paramIndex+" 번째 파일정보가 누락되었습니다.\n업로드할 파일을 선택해 주세요";
		    alert(message);
			formName.elements[idx].focus();
			return;		
	     }
	     paramIndex++; 
      }
   }
   formName.action = "multiFileProc.jsp";
   formName.submit();
}
</script>
</head>
<body topmargin="100">
<div align="center">
<font color="#0000ff" size="3"> 
복수개의 파일의 업로드를 위하여 파일 갯수를 입력한 후<br>
확인 버튼을 눌러주세요!!!<br>
입력이 완료되면 DONE 버튼을 눌러주세요</font></div>
<br>
<form name="frmName1" method="post">
<table width="500" border="1" align="center">
	<tr>
		<td colspan="4">
		<div align="center"><font size="3">추가할 파일 수 입력</font> 
		<input name="addcnt"> 
		<input type="button" value=" 확인 " onclick="addFile(this.form)">
		</div>
		</td>
	</tr>
</table>
</form>

<form name="frmName2" method="post" enctype="multipart/form-data">
<table width="500" border="1" align="center">
	<tr bgcolor="#FFCC00">
		<td width="40%">
		<%
			for (int i = 0; i < filecounter; i++) {
		%> 
			<input type="File" size="50" name="selectFile<%=i%>"><br>
		<%}%>
		</td>
		<td><input type="Button" value="DONE" onclick="elementCheck(this.form)"></td>
	</tr>
</table>
</form>
</body>
</html>
