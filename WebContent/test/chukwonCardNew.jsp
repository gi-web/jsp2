<%@ page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR");%>
<html>
	<head>
		<title>신규 축원카드 작성하기</title>
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				var max_input = 10;							// 최대 입력 가족수(레코드)
				var x = 1;										// 레코드 갯수 초기화
				$('.add-btn').click(function(e) {		// 추가버튼의 클릭이벤트
					e.preventDefault();
					if (x < max_input) {
						x++;
						$('.wrapper').append(`
								<div class="input-box">
								<select name="contactYN">
								<option>가족대표연락자 </option>
								<option value="1">대표(1명만) </option>
								<option value="2">대표아님 </option>
							</select>
							<select id="memGender" name="memGender" onchange="memGenderChange(this)">
								<option >성별선택 </option>
								<option value="1">여성 </option>
								<option value="2">남성 </option>
							</select>
							<select id="famCall" name="famCall">
								<option selected>호칭선택</option>
								<option value="건명">건명</option>
								<option value="곤명">곤명</option>
								<option value="장남">장남</option>
								<option value="장녀">장녀</option>
								<option value="차남">차남</option>
								<option value="차녀">차녀</option>
								<option value="삼남">삼남</option>
								<option value="삼녀">삼녀</option>
								<option value="손자">손자</option>
								<option value="손녀">손녀</option>
								<option value="조부">조부</option>
								<option value="조모">조모</option>
								<option value="부">부</option>
								<option value="모">모</option>
								<option value="시부">시부</option>
								<option value="시모">시모</option>
								<option value="장인">장인</option>
								<option value="장모">장모</option>
								<option value="형">형(형님/오빠)</option>
								<option value="제">제(남동생)</option>
								<option value="자">자(누나/언니)</option>
								<option value="매">매(여동생)</option>
							</select>
							<input name="memName" placeholder="성명" maxlength="5" size="8">
							<input name="budaName" placeholder="법명" value="" maxlength="5" size="5">
							<input name="solaDate" placeholder="양력생년월일" value="" onfocus="solaToLuna()">
							<input name="lunaDate" placeholder="음력생년월일" value="" onfocus="lunaToSola()">
							<select name="yundal">
								<option >윤달여부</option>
								<option value="0">평달</option>
								<option value="1">윤달</option>
							</select>
							<input name="ganji60_k" placeholder="60간(한글)" value="" size="5">
							<input name="ganji60_c" placeholder="60간(한문)" value="" size="5">
							<input name="ganji12" placeholder="12지" value="" size="5">
							<input name="mobileNum" placeholder="휴대폰" value="" maxlength="5" size="6">
							<input name="phoneNum" placeholder="유선전화" value="" maxlength="5" size="6">
							<input name="email" placeholder="이메일" value="" maxlength="5" size="5">
							<input name="history" placeholder="상담기록" value="" maxlength="5" size="6">
							<input name="searchHint" placeholder="검색힌트" value="" maxlength="5" size="6">
							<select name="lotusYN">
								<option>연등꼬리표기재 </option>
								<option value="1">기재함 </option>
								<option value="0">안 함 </option>
							</select>
								<a href="#" class="remove-lnk">삭제</a>
							</div>`);												//입력필드 1 레코드 추가
					}
				});
				$('.wrapper').on("click", ".remove-lnk", function(e) { // 삭제링크 클릭 이벤트
					e.preventDefault();
					$(this).parent('div').remove();  	// 입력필드 1 레코드 삭제
					x--;											// 입력필드수 1 감소
				})
			});
		</script>
		
		<script type="text/javascript">
			function memGenderChange(memGender) {
				mGen = document.getElementsByName("memGender");
				i=0;
				for(;i<mGen.length;i++){
					if(mGen[i]==memGender) break;
				}

			    var man = ["건명","장남","차남","삼남","사남","손자","할아버지","아버지","시아버지","장인","형(형님/오빠)","제(남동생)"];
			    var women = ["곤명","장녀","차녀","삼녀","사녀","손녀","할머니","어머니","시어머니","장모","자(누나/언니)","매(여동생)"];
			    var target = document.getElementsByName("famCall");
			    if(memGender.value == "1")
			    	var call = women;
			    else if(memGender.value == "2")
			    	var call = man;
	
			    target[i].options.length = 0;
	
			    for (j in call) {
			        var opt = document.createElement("option");
			        opt.value = call[j];
			        opt.innerHTML = call[j];
			        target[i].appendChild(opt);
			    }   
			}
		</script>
	</head>
	<body>
	
		<table width="100%" align="center" bgcolor="#FFFF99" >
			<tr>
				<td align="center">
				<%--**************************************************************************--%>
					<form name="chukwonCardNewForm" method="post" action="chukwonCardNewProc.jsp">
					<%--**************************************************************************--%>						
						<table width="100%" align="center" bgcolor="" border="0">
							<tr align="center" bgcolor="#F4F4F4">
								<td height="30"><font color=""><b>가족정보 입력</b></font></td>
							</tr>
							<tr>
								<td align="center" height="30">
									<select name="famGrade">
										<option>행사참여수준선택</option>
										<option value="1">항상 열심히</option>
										<option value="2">가끔 행사만 참석</option>
										<option value="3">어쩌다 한번씩</option>
										<option value="4">연락 거의 두절</option>
										<option value="5">정보삭제 직전</option>
									</select>
										&nbsp;&nbsp;&nbsp;
									<select name="noticeYN">
										<option >행사알림여부선택</option>
										<option value="1">모든 행사 알려주기</option>
										<option value="2">주요행사만 알려주기</option>
										<option value="3">행사 알릴필요 없음</option>
									</select>
								</td>
							</tr>
							<tr>
								<td align="center" height="100">
									<input name="postcode" id="postcode" type="text" placeholder="우편번호" size="7" readonly> &nbsp;&nbsp;&nbsp;
									<button type="button" class="btn" onClick="execPostcode()">우편번호 찾기</button> <br>
									<input name="address" id="address" type="text" placeholder="주소1" size="30" readonly> <br>
									<input name="extraAddress" id="extraAddress" type="text" placeholder="주소2" size="30" readonly> <br>
									<input name="detailAddress" id="detailAddress" type="text" placeholder="직접입력주소" maxlength="20" size="30">
								</td>
							</tr>
						</table>
						<br>
						<table width="95%">
							<tr>
								<td align="center">
									<button class="btn add-btn">가족구성원 추가하기</button>
								</td>
							</tr>
							<tr>
								<td align="center">
									<div class="wrapper">
										<div class="input-box">
											<select name="contactYN">
												<option>가족대표연락자 </option>
												<option value="1">대표(1명만) </option>
												<option value="2">대표아님 </option>
											</select>
											<select id="memGender" name="memGender" onchange="memGenderChange(this)">
												<option >성별선택 </option>
												<option value="1">여성 </option>
												<option value="2">남성 </option>
											</select>
											<select id="famCall" name="famCall">
												<option selected>호칭선택</option>
												<option value="건명">건명</option>
												<option value="곤명">곤명</option>
												<option value="장남">장남</option>
												<option value="장녀">장녀</option>
												<option value="차남">차남</option>
												<option value="차녀">차녀</option>
												<option value="삼남">삼남</option>
												<option value="삼녀">삼녀</option>
												<option value="손자">손자</option>
												<option value="손녀">손녀</option>
												<option value="조부">조부</option>
												<option value="조모">조모</option>
												<option value="부">부</option>
												<option value="모">모</option>
												<option value="시부">시부</option>
												<option value="시모">시모</option>
												<option value="장인">장인</option>
												<option value="장모">장모</option>
												<option value="형">형(형님/오빠)</option>
												<option value="제">제(남동생)</option>
												<option value="자">자(누나/언니)</option>
												<option value="매">매(여동생)</option>
											</select>
											<input name="memName" placeholder="성명" maxlength="5" size="8">
											<input name="budaName" placeholder="법명" value="" maxlength="5" size="5">
											<input name="solaDate" placeholder="양력생년월일" value="" onfocus="solaToLuna()">
											<input name="lunaDate" placeholder="음력생년월일" value="" onfocus="lunaToSola()">
											<select name="yundal">
												<option >윤달여부</option>
												<option value="0">평달</option>
												<option value="1">윤달</option>
											</select>
											<input name="ganji60_k" placeholder="60간(한글)" value="" size="5">
											<input name="ganji60_c" placeholder="60간(한문)" value="" size="5">
											<input name="ganji12" placeholder="12지" value="" size="5">
											<input name="mobileNum" placeholder="휴대폰" value="" maxlength="5" size="6">
											<input name="phoneNum" placeholder="유선전화" value="" maxlength="5" size="6">
											<input name="email" placeholder="이메일" value="" maxlength="5" size="5">
											<input name="history" placeholder="상담기록" value="" maxlength="5" size="6">
											<input name="searchHint" placeholder="검색힌트" value="" maxlength="5" size="6">
											<select name="lotusYN">
												<option>연등꼬리표기재 </option>
												<option value="1">기재함 </option>
												<option value="0">안 함 </option>
											</select>
											&nbsp; &nbsp; &nbsp;
										</div>
									</div>
								</td>
							</tr>
						</table>
						<br>
							<button type="submit" class="btn">저장하기</button>&nbsp;
							<button type="reset" class="btn">다시쓰기</button>&nbsp; 
							<button type="button" class="btn" onClick="javascript:location.href='index.jsp'">작성취소</button>
					</form>
				</td>
			</tr>
		</table>

	</body>
</html>