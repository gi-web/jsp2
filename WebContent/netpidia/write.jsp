<%@page import="java.io.PrintWriter"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		String id = (String)session.getAttribute("idKey");
		if(id==null){
			//현재 접속된 url값
			StringBuffer url = request.getRequestURL();
			response.sendRedirect("login3.jsp?url="+url);
			return;//이후에 jsp 코드 실행 안됨.
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>project</title>
<link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<!-- SmartEditor2 라이브러리 -->
<script type="text/javascript" src="se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>

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
								style="width:100%; height:50px; font-size:20px; margin:0 auto;"></td>
						</tr>
					</tbody>
				</table>
			</div>
<form action="sample/viewer/index.php" method="post">
	<textarea name="ir1" id="ir1" rows="10" cols="100" style="width:766px; height:412px; display:none;"></textarea>
</form>
<!-- SmartEditor2 -->
<script type="text/javascript">
	var oEditors = [];
	// 추가 글꼴 목록
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	nhn.husky.EZCreator.createInIFrame({
	oAppRef : oEditors,
		elPlaceHolder : "content",
		sSkinURI : "/se2/SmartEditor2Skin.html",
		htParams : {
			bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function() {
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function() {
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator : "createSEditor2"
	});	
	
	function pasteHTML(filepath){
	    var sHTML = '<img src="/se2/upload/'+filepath+'">';
	    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]); 
	}		
</script>
<!-- 스마트에디터 끝-->
			
			
			<br /> <input type="button"
				style="float: right; margin-right: 5%; font-weight: bold; font-family: 돋움;"
				class="btn btn-danger" value="목록"
				onClick="javascript:location.href='review.jsp'"> <input
				style="float: right; margin-right: 0.5%; font-weight: bold; font-family: 돋움;"
				type="submit" class="btn btn-danger" value="등록">
		</div>
	</form>
</body>
</html>

