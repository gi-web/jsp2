<!-- read.jsp -->
<%@page import="netpidia.NetBoardBean"%>
<%@page import="java.util.Vector"%>
<%@page import="netpidia.NetBCommentBean"%>
<%@page import="netpidia.UtilMgr"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="netpidia.NetBoardMgr" />
<jsp:useBean id="cmgr" class="netpidia.NetBCommentMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
String nowPage = request.getParameter("nowPage");
String numPerPage = request.getParameter("numPerPage");
String keyField = request.getParameter("keyField");
String keyWord = request.getParameter("keyWord");
int num = UtilMgr.parseInt(request, "num");

String flag = request.getParameter("flag");
if (flag != null) {
	if (flag.equals("insert")) {
		NetBCommentBean cbean = new NetBCommentBean();
		cbean.setNum(num);//어떤 게시물
		cbean.setId(request.getParameter("cId"));
		cbean.setComment(request.getParameter("comment"));
		cmgr.insertNetBComment(cbean);
	} else if (flag.equals("del")) {
		//댓글 삭제
		cmgr.deleteNetBComment(UtilMgr.parseInt(request, "cnum"));
	}
} else {
	//list.jsp에서 넘어오는 경우
	//조회수 증가
	mgr.upCount(num);
}

//게시물 읽기
NetBoardBean bean = mgr.getNetBoard(num);
String id = bean.getId();
String subject = bean.getSubject();
String regdate = bean.getRegdate();
String content = bean.getContent();
String image = bean.getImage();
String ip = bean.getIp();
int count = bean.getCount();
int like_cnt = bean.getLike_cnt();
//읽어온 게시물을 수정 및 삭제를 위해 세션저장
session.setAttribute("bean", bean);
%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function down(filename) {
		document.downFrm.filename.value = filename;
		document.downFrm.submit();
	}
	function list() {
		document.listFrm.action = "review.jsp";
		document.listFrm.submit();
	}
	function cInsert() {
		if (document.cFrm.comment.value == "") {
			alert("댓글을 입력하세요.");
			document.cFrm.comment.focus();
			return;
		}
		document.cFrm.submit();
	}
	function cDel(cnum) {
		document.cFrm.cnum.value = cnum;
		document.cFrm.flag.value = "del";
		document.cFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<%@ include file="treview.jsp"%>
	<br />
	<br />
<div style="margin-left: auto; margin-right: auto; width:1000px" class="card text-white bg-dark mb-3">
<div style="font-family:돋움" class="card-header"><%=subject%></div>
<div class="card-body">
<p style="font-family:돋움" class="card-text"><%=content%></p>
<br/>
<br/>
<br/>
<br/>
<table align="right">
		<tr>
			<td style="font-family:돋움" colspan="4"> 조회수 <%=count%>
			</td>
		</tr>
		</table>
</div>
</div>
	<br />
	<br />
	<br />
	<table style="margin-left: auto; margin-right: auto;">
		<tr>
			<td align="center" colspan="2">
				<!-- 댓글 List End --> <a class="btn btn-danger" style="font-family:돋움" href="javascript:list()">목록</a> <a class="btn btn-danger" style="font-family:돋움"
				href="bupdate.jsp?nowPage=<%=nowPage%>&num=<%=num%>&numPerPage=<%=numPerPage%>">수
					정</a> <a class="btn btn-danger" style="font-family:돋움" href="delete.jsp?nowPage=<%=nowPage%>&num=<%=num%>">삭 제</a>
				<br /> <br /><br /> <br />
				 <!-- 댓글 입력폼 Start -->
				<form method="post" name="cFrm">
					<table>
						<tr align="center">
							<td style="font-family:돋움; color:white">내 용</td>
							<td><input style="font-family:돋움" name="comment" size="50"> <input
								class="btn btn-danger" style="font-family:돋움" type="button" value="입력" onclick="cInsert()"></td>
						</tr>
					</table>
					<input type="hidden" name="flag" value="insert"> <input
						type="hidden" name="num" value="<%=num%>"> <input
						type="hidden" name="cnum"> <input type="hidden"
						name="nowPage" value="<%=nowPage%>"> <input type="hidden"
						name="numPerPage" value="<%=numPerPage%>">
					<%
						if (!(keyWord == null || keyWord.equals(""))) {
					%>
					<input type="hidden" name="keyField" value="<%=keyField%>">
					<input type="hidden" name="keyWord" value="<%=keyWord%>">
					<%
						}
					%>
				</form> <!-- 댓글 입력폼 End -->
				<hr /> <!-- 댓글 List Start --> <%
 	Vector<NetBCommentBean> cvlist = cmgr.getNetBComment(num);
 if (!cvlist.isEmpty()) {
 	//out.println(cvlist.size());
 %>
				<table>
					<%
						for (int i = 0; i < cvlist.size(); i++) {
						NetBCommentBean cbean = cvlist.get(i);
						int cnum = cbean.getCnum();
						String cid = cbean.getId();
						String comment = cbean.getComment();
						String cregdate = cbean.getRegdate();
					%>
					<tr>
						<td style="font-family:돋움; color: white" colspan="3" width="600"><b><%=cid%></b></td>
					</tr>
					<tr>
						<td style="font-family:돋움; color: white" align="center">댓글:<%=comment%></td>
						<td style="font-family:돋움; color: white" align="right"><%=cregdate%></td>
						<td style="font-family:돋움" align="center" valign="middle"><input type="button"
							class="btn btn-danger" value="삭제" onclick="cDel('<%=cnum%>')"></td>
					</tr>
					<tr>
						<td colspan="3"><br></td>
					</tr>
					<%
						} //---for
					%>
				</table>
				<hr> <%
 	} //--if
 %>
			</td>
		</tr>
	</table>
	<form method="post" name="downFrm" action="download.jsp">
		<input type="hidden" name="filename">
	</form>

	<form name="listFrm">
		<input type="hidden" name="nowPage" value="<%=nowPage%>"> <input
			type="hidden" name="numPerPage" value="<%=numPerPage%>">
		<!-- 5개보기 유지 -->
		<%
			if (!(keyWord == null || keyWord.equals(""))) {
		%>
		<input type="hidden" name="keyField" value="<%=keyField%>"> <input
			type="hidden" name="keyWord" value="<%=keyWord%>">
		<%
			}
		%>
	</form>
</body>
</html>