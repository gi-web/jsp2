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
int totalRecord = 0;//�ѰԽù���
int numPerPage = 15;//�������� ���ڵ� ����(5,10,15,30)  (�Խù� ��)
int pagePerBlock = 10;//���� ������ ����
int totalPage = 0;//�� ������ ����
int totalBlock = 0;// �� �� ����
int nowPage = 1;//���� ������    �Խù�Ŭ�� ����Ʈ�ΰ��� ���� ��������
int nowBlock = 1;//���� ��

//��û�� numPerPage ó��
if (request.getParameter("numPerPage") != null) {
	//Integer.parseInt(request.getParameter(name));
	numPerPage = UtilMgr.parseInt(request, "numPerPage");
}

//�˻��� �ʿ��� ����
String keyField = "", keyWord = "";
if (request.getParameter("keyWord") != null) {
	keyField = request.getParameter("keyField");
	keyWord = request.getParameter("keyWord");
}

//�˻� �Ŀ� �ٽ� ó�� ����Ʈ ��û(!= ���̾ƴ� ��û�� �ߴٴ¶�)
if (request.getParameter("reload") != null && request.getParameter("reload").equals("true")) {
	keyField = "";
	keyWord = "";
}

totalRecord = mgr.getTotalCount(keyField, keyWord);
//out.print(totalRecord);
if (request.getParameter("nowPage") != null) {
	nowPage = UtilMgr.parseInt(request, "nowPage");
}

//sql���� ���� start, cnt ����
int start = (nowPage * numPerPage) - numPerPage;
int cnt = numPerPage;

//��ü������ ����   ceil��(�ø�)�޼ҵ�
totalPage = (int) Math.ceil((double) totalRecord / numPerPage);
//��ü�� ����
totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
//�����
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
			alert("�˻�� �Է��ϼ���.");
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
					<td align="center" colspan="2" style="font-family:����">
						<%
							Vector<NetBoardBean> vlist = mgr.getNetBoardList(keyField, keyWord, start, cnt);
						//������ ȭ�鿡 ǥ�õ� �Խù� ��ȣ, ������ ���������� 10�� ������ ���� ���� �ɼ� �ִ�.
						int listSize = vlist.size();
						if (vlist.isEmpty()) {
							out.println("��ϵ� �Խù��� �����ϴ�.");
						} else {
						%>
						<table cellspacing="0" class="table table-dark table-hover" >
							<tr align="center">
								<td width="100" style="font-family:����">��ȣ</td>
								<td width="500" style="font-family:����">����</td>
								<td width="100" style="font-family:����">�ۼ���</td>
								<td width="150" style="font-family:����">��¥</td>
								<td width="100" style="font-family:����">��ȸ��</td>
							</tr>
							<%
								for (int i = 0; i < numPerPage/*10*/; i++) {
								if (i == listSize)
									break;
								NetBoardBean bean = vlist.get(i);
								int num = bean.getNum();//�Խù� ��ȣ
								String subject = bean.getSubject();//����
								String name = bean.getId();//�̸�
								String regdate = bean.getRegdate();//��¥
								int count = bean.getCount();//��ȸ��
								String filename = bean.getImage();//�̹�������
								//��� count
								int bcount = cmgr.getNetBCommentCount(num);
							%>
							<tr align="center" style="color: white">
								<td><%=totalRecord - start - i%></td>
								<td align="left"><a style="color: white; font-family:����" href="javascript:read('<%=num%>')"><%=subject%></a>
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
						<!-- ����¡ �� �� Start --> <!-- ������ --> <%
 	if (nowBlock > 1) {
 %> <a href="javascript:block('<%=nowBlock - 1%>')"
						class="btn btn-outline-light"><</a> <%
 	}
 %> <!-- ����¡ --> <%
 	int pageStart = (nowBlock - 1) * pagePerBlock + 1;
 int pageEnd = (pageStart + pagePerBlock/*15*/) <= totalPage ? pageStart + pagePerBlock : totalPage + 1;//true��:fals ��
 for (; pageStart < pageEnd; pageStart++) {
 %> <a href="javascript:pageing('<%=pageStart%>')"
						class="btn btn-outline-light"> <%
 	if (nowPage == pageStart) {
 %><font class="btn btn-secondary"> <%
 	}
 %> <!-- ���� ������ --> <%=pageStart%> <%
 	if (nowPage == pageStart) {
 %>
						</font> <%
 	}
 %> <!-- �ݾ������ -->
					</a> <%
 	} //--for
 %> <!-- ������ --> <%
 	if (totalBlock > nowBlock) {
 %> <a href="javascript:block('<%=nowBlock + 1%>')"
						class="btn btn-outline-light"
						style="margin-left: auto; margin-right: auto;">></a> <%
 	}
 %> <!-- ����¡ �� �� End -->
					</td>
					<td align="right"><a href=write.jsp
						class="btn btn-danger btn-sm" style="font-weight: bold; font-family:����">�۾���</a></td>
				</tr>
			</table>
			<hr>
			<form name="searchFrm" style="margin-left: auto; margin-right: auto;">
				<!-- �˻� -->
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td align="center" valign="bottom"><select name="keyField"
							size="1" style="font-weight: bold; font-family:����">
								<option value="name" style="font-weight: bold; font-family:����">�� ��</option>
								<!-- value �÷���� ������ ��ġ�ؾ��� -->
								<option value="subject" style="font-weight: bold; font-family:����">�� ��</option>
								<option value="content" style="font-weight: bold; font-family:����">�� ��</option>
						</select> <input style="font-family:����" size="16" name="keyWord"> <input style="font-weight: bold; font-family:����" type="button"
							class="btn btn-danger btn-sm" value="ã��"
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