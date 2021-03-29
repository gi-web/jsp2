<!-- admin/orderProc.jsp -->
<%@page import="shop.UtilMgr"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="orderMgr" class="shop.OrderMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String flag = request.getParameter("flag");
		int no = UtilMgr.parseInt(request, "no");//주문번호를 정수로 변환
		boolean result = false;
		String msg = "오류가 발생하였습니다.";
		if(flag.equals("update")){
			String state = request.getParameter("state");
			result = orderMgr.updateOrder(no, state);
			if(result) msg = "주문을 수정하였습니다.";
		}else if(flag.equals("delete")){
			result = orderMgr.deleteOrder(no);
			if(result) msg = "주문을 삭제하였습니다.";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "orderMgr.jsp";
</script>











