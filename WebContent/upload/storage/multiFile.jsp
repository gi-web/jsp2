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
		alert(" �Է��� ���� ������ �Է��ϰ� Ȯ�ι�ư�� �����ּ���" ); 
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
	        var message = paramIndex+" ��° ���������� �����Ǿ����ϴ�.\n���ε��� ������ ������ �ּ���";
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
�������� ������ ���ε带 ���Ͽ� ���� ������ �Է��� ��<br>
Ȯ�� ��ư�� �����ּ���!!!<br>
�Է��� �Ϸ�Ǹ� DONE ��ư�� �����ּ���</font></div>
<br>
<form name="frmName1" method="post">
<table width="500" border="1" align="center">
	<tr>
		<td colspan="4">
		<div align="center"><font size="3">�߰��� ���� �� �Է�</font> 
		<input name="addcnt"> 
		<input type="button" value=" Ȯ�� " onclick="addFile(this.form)">
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
