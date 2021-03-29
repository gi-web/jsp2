<!-- 넷피디아 -->
<%@ page  contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");	
%>
<!DOCTYPE html>
<html lang = "ko">
<head>
	<meta charset="EUC-KR">
	<title>로그인</title>
	<link rel="stylesheet" href="inup.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
	<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
	</script>	
</head>
<body>
	<section class = "login-form">	
	<h1>NETPIDIA</h1>	
		<form name="loginFrm" method="post" action="loginProc.jsp">
			<div class="int-area">
				<input type="text" name = "id" id="id"
				autocomplete="off" required>
				<label for ="id">USER ID</label>
			</div>
			<div class="int-area">
				<input type="password" name = "pwd" id="pw"
				autocomplete="off" required>
				<label for ="pw">PASSWORD</label>
			</div>
			<div class="btn-area">
				<button type="submit" onclick="loginCheck()">LOGIN</button>
			</div>
			<div id="naverIdLogin" style="margin-top: 20px; margin-left: 80px;"></div>					
		</form>
		<div class="caption">
			<a href="#" onClick="javascript:location.href='find.jsp'">Forgot password?</a>
		<p>
			<a class="txt1 bo1 hov1" href="#" onClick="javascript:location.href='join.jsp'">Sign up</a>
		</div>						
	</section>
	<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "rGZ8kQ2SmYggqkpxeV0e",
			callbackUrl: "http://localhost/myapp/a123/callback.jsp",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "white", type: 3, height: 50} /* 로그인 버튼의 타입을 지정 */
		}
	);	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();	
</script>
</body>
</html>
	