<!-- param2.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
%>
name : ${param.name}<br>
hobby : ${paramValues.hobby[0]}&nbsp;
			 ${paramValues.hobby[1]}&nbsp;
			 ${paramValues.hobby[2]}&nbsp;
			 ${paramValues.hobby[3]}&nbsp;
			 ${paramValues.hobby[4]}&nbsp;
