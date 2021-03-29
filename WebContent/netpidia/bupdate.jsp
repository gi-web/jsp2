<%@ page contentType="text/html; charset=EUC-KR" %>
 <%@ page import="netpidia.NetBoardBean"%>
<% 
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  String numPerPage = request.getParameter("numPerPage");
	  NetBoardBean bean = (NetBoardBean)session.getAttribute("bean");
	  String subject = bean.getSubject();
	  String id = bean.getId(); 
	  String content = bean.getContent();
	  String image = bean.getImage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>project</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link
	href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- SmartEditor2 라이브러리 -->
<script type="text/javascript" src="se2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body>
	<%@ include file="treview.jsp"%>
	<form name="postFrm" method="post" action="netboardPost"
		enctype="multipart/form-data">
		<div class="container">
			<div class="row">
				<table
					style="margin-left: auto; margin-right: auto; text-allign: center; border: 1px solie #dddddd"
					class="table table-striped">
					<tbody style="color: white; text-allign: center">
						<tr>
							<td><input type="text" class="form-control "
								style="font-weight: bold; font-family: 돋움" placeholder="제목"
								name="reviewTitle" maxlength="20"
								style="width:100%; height:50px; font-size:20px;' margin:0 auto;"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- SmartEditor2 -->
			<div class="jsx-2303464893 editor">
				<div class="fr-box fr-basic fr-top" role="application">
					<div class="fr-wrapper show-placeholder"
						style="width: 90%; margin: 0 auto;">
						<textarea name="notice_content" id="smartEditor"
							style="width: 100%; height: 512px;"></textarea>
					</div>
				</div>
			</div>
			<br /> <input type="button"
				style="float: right; margin-right: 5%; font-weight: bold; font-family: 돋움;"
				class="btn btn-danger" value="목록"
				onClick="javascript:location.href='review.jsp'"> <input
				style="float: right; margin-right: 0.5%; font-weight: bold; font-family: 돋움;"
				type="submit" class="btn btn-danger" value="등록">
		</div>
	</form>
			<script type="text/javascript" src="write.js"></script>
</body>
</html>