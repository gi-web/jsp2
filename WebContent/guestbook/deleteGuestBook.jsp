<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="guestbook.GuestBookMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		int num = 0;
		if(request.getParameter("num")!=null){
			num = Integer.parseInt(request.getParameter("num"));
			mgr.deleteGuestBook(num);
			//방명록 원글 삭제시 관려된 댓글 모두 삭제
			mgr.deleteAllComment(num);
		}
		response.sendRedirect("showGuestBook.jsp");
%>
