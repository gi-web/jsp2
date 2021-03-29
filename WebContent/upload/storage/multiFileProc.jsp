<%@page contentType="text/html;charset=EUC-KR"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<link href="csssql/style.css" rel="stylesheet" type="text/css">
<% request.setCharacterEncoding("EUC-KR");%>

<%
	String saveFolder = "C:/Jsp/myapp/WebContent/upload/storage/";
	String encType = "euc-kr";
	int maxSize = 5*1024*1024; //5MB
	ArrayList saveFiles = new ArrayList();
	
	try {
		MultipartRequest multi = new MultipartRequest(request,
				saveFolder,	maxSize,encType,new DefaultFileRenamePolicy());

		Enumeration files = multi.getFileNames(); // 파일을 여러개 불러오는 것
		
		while (files.hasMoreElements()) {
			String name = (String)files.nextElement();
			saveFiles.add(multi.getFilesystemName(name));
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	for (int i = 0; i<saveFiles.size(); i++) {
		out.println("saveFiles : " + saveFiles.get(i) + "<br>");
	}
%>











