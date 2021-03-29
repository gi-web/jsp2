<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		
%>
<script type="text/javascript" src="LunarCalendar.js"></script>
<body>
	<script type="text/javascript">
		 v =  prompt('음력을 입력하세요.', '19720108');	
		 alert(Resut(v));
	</script>	
</body>