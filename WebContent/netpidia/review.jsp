<%@page import="netpidia.NetBoardBean"%>
<%@page import="java.util.Vector"%>
<%@page import="netpidia.UtilMgr"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mgr" class="netpidia.NetBoardMgr" />
<jsp:useBean id="cmgr" class="netpidia.NetBCommentMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
int totalRecord = 0;//총게시물수
int numPerPage = 15;//페이지당 레코드 개수(5,10,15,30)  (게시물 수)
int pagePerBlock = 10;//블럭당 페이지 개수
int totalPage = 0;//총 페이지 개수
int totalBlock = 0;// 총 블럭 개수
int nowPage = 1;//현재 페이지    게시물클릭 리스트로가면 들어갔던 페이지로
int nowBlock = 1;//현재 블럭

//요청된 numPerPage 처리
if (request.getParameter("numPerPage") != null) {
	//Integer.parseInt(request.getParameter(name));
	numPerPage = UtilMgr.parseInt(request, "numPerPage");
}

//검색에 필요한 변수
String keyField = "", keyWord = "";
if (request.getParameter("keyWord") != null) {
	keyField = request.getParameter("keyField");
	keyWord = request.getParameter("keyWord");
}

//검색 후에 다시 처음 리스트 요청(!= 널이아님 요청을 했다는뜻)
if (request.getParameter("reload") != null && request.getParameter("reload").equals("true")) {
	keyField = "";
	keyWord = "";
}

totalRecord = mgr.getTotalCount(keyField, keyWord);
//out.print(totalRecord);
if (request.getParameter("nowPage") != null) {
	nowPage = UtilMgr.parseInt(request, "nowPage");
}

//sql문에 들어가는 start, cnt 선언
int start = (nowPage * numPerPage) - numPerPage;
int cnt = numPerPage;

//전체페이지 개수   ceil이(올림)메소드
totalPage = (int) Math.ceil((double) totalRecord / numPerPage);
//전체블럭 개수
totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
//현재블럭
nowBlock = (int) Math.ceil((double) nowPage / pagePerBlock);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>project</title>
<link rel="stylesheet" href="css/bootstrap.css?after">
<link
	href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
	function check() {
		if (document.searchFrm.keyWord.value == "") {
			alert("검색어를 입력하세요.");
			document.searchFrm.keyWord.focus();
			return;
		}
		document.searchFrm.submit();
	}

	function list() {
		document.listFrm.action = "review.jsp";
		document.listFrm.submit();
	}

	function numPerFn(numPerPage) {
		//alert(numPerPage);
		document.readFrm.numPerPage.value = numPerPage;
		document.readFrm.submit();
	}

	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}

	function block(block) {
		document.readFrm.nowPage.value =
<%=pagePerBlock%>
	* (block - 1) + 1;
		document.readFrm.submit();
	}

	function read(num) {
		document.readFrm.num.value = num;
		document.readFrm.action = "read.jsp";
		document.readFrm.submit();
	}
	
</script>
</head>
<body align="center">
	<%@ include file="treview.jsp" %>
	<div class="container">
		<div class="row">
			<table class="table table-dark"
				style="margin-left: auto; margin-right: auto;">
				<tr>
					<td align="center" colspan="2" style="font-family:돋움">
						<%
							Vector<NetBoardBean> vlist = mgr.getNetBoardList(keyField, keyWord, start, cnt);
						//브라우저 화면에 표시될 게시물 번호, 마지막 페이지에는 10개 이하의 개수 리턴 될수 있다.
						int listSize = vlist.size();
						if (vlist.isEmpty()) {
							out.println("등록된 게시물이 없습니다.");
						} else {
						%>
						<table cellspacing="0" class="table table-dark table-hover" >
							<tr align="center">
								<td width="100" style="font-family:돋움">번호</td>
								<td width="500" style="font-family:돋움">제목</td>
								<td width="100" style="font-family:돋움">작성자</td>
								<td width="150" style="font-family:돋움">날짜</td>
								<td width="100" style="font-family:돋움">조회수</td>
							</tr>
							<%
								for (int i = 0; i < numPerPage/*10*/; i++) {
								if (i == listSize)
									break;
								NetBoardBean bean = vlist.get(i);
								int num = bean.getNum();//게시물 번호
								String subject = bean.getSubject();//제목
								String name = bean.getId();//이름
								String regdate = bean.getRegdate();//날짜
								int count = bean.getCount();//조회수
								String filename = bean.getImage();//이미지파일
								//댓글 count
								int bcount = cmgr.getNetBCommentCount(num);
							%>
							<tr align="center" style="color: white">
								<td><%=totalRecord - start - i%></td>
								<td align="left"><a style="color: white; font-family:돋움" href="javascript:read('<%=num%>')"><%=subject%></a>
									<%
										if (filename != null && !filename.equals("")) {
									%> <img src="img/icon_file.gif" align="middle"> <%
 	}
 %> <%
 	if (bcount > 0) {
 %> <font color="red">(<%=bcount%>)
								</font> <%
 	}
 %></td>
								<td><a href="#" class="member" onclick="return false"><%=name%></a></td>
								<td><%=regdate%></td>
								<td><%=count%></td>
							</tr>
							<%
								} //---for
							%>
						</table> <%
 	} //---if-else
 %>
					</td>
				</tr>
				<tr>
					<td colspan="2"><br> <br></td>
				</tr>
				<tr>
					<td style="padding-left:130px" width=90%;>
						<!-- 페이징 및 블럭 Start --> <!-- 이전블럭 --> <%
 	if (nowBlock > 1) {
 %> <a href="javascript:block('<%=nowBlock - 1%>')"
						class="btn btn-outline-light"><</a> <%
 	}
 %> <!-- 페이징 --> <%
 	int pageStart = (nowBlock - 1) * pagePerBlock + 1;
 int pageEnd = (pageStart + pagePerBlock/*15*/) <= totalPage ? pageStart + pagePerBlock : totalPage + 1;//true앞:fals 뒤
 for (; pageStart < pageEnd; pageStart++) {
 %> <a href="javascript:pageing('<%=pageStart%>')"
						class="btn btn-outline-light"> <%
 	if (nowPage == pageStart) {
 %><font class="btn btn-secondary"> <%
 	}
 %> <!-- 현재 페이지 --> <%=pageStart%> <%
 	if (nowPage == pageStart) {
 %>
						</font> <%
 	}
 %> <!-- 닫아줘야함 -->
					</a> <%
 	} //--for
 %> <!-- 다음블럭 --> <%
 	if (totalBlock > nowBlock) {
 %> <a href="javascript:block('<%=nowBlock + 1%>')"
						class="btn btn-outline-light"
						style="margin-left: auto; margin-right: auto;">></a> <%
 	}
 %> <!-- 페이징 및 블럭 End -->
					</td>
					<td align="right"><a href=write.jsp
						class="btn btn-danger btn-sm" style="font-weight: bold; font-family:돋움">글쓰기</a></td>
				</tr>
			</table>
			<hr>
			<form name="searchFrm" style="margin-left: auto; margin-right: auto;">
				<!-- 검색 -->
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td align="center" valign="bottom"><select name="keyField"
							size="1" style="font-weight: bold; font-family:돋움">
								<option value="name" style="font-weight: bold; font-family:돋움">이 름</option>
								<!-- value 컬럼명과 무조건 일치해야함 -->
								<option value="subject" style="font-weight: bold; font-family:돋움">제 목</option>
								<option value="content" style="font-weight: bold; font-family:돋움">내 용</option>
						</select> <input style="font-family:돋움" size="16" name="keyWord"> <input style="font-weight: bold; font-family:돋움" type="button"
							class="btn btn-danger btn-sm" value="찾기"
							onClick="javascript:check()"> <input type="hidden"
							name="nowPage" value="1"></td>
					</tr>
				</table>
			</form>
			<form name="listFrm" method="post">
				<input type="hidden" name="reload" value="true"> <input
					type="hidden" name="nowPage" value="1">
			</form>

			<form name="readFrm">
				<input type="hidden" name="nowPage" value="<%=nowPage%>"> <input
					type="hidden" name="numPerPage" value="<%=numPerPage%>"> <input
					type="hidden" name="keyField" value="<%=keyField%>"> <input
					type="hidden" name="keyWord" value="<%=keyWord%>"> <input
					type="hidden" name="num">
			</form>
		</div>
	</div>
</body>
</html>