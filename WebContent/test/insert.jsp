<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		
%>
<script>
	function go() {
		f = document.forms[0];
		f.aaa1.value = document.getElementById("aaa").value;
		f.submit();
	}
</script>
<form>
 id : <input id="aaa" value="ÇÑ±Û"><br>
 id : <input name="aaa1">
 <input type="button" onclick="go()" value="GO">
</form>