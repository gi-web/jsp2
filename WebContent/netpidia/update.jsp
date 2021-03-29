<%@ page  contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("EUC-KR");%>
<%@page import="netpidia.NetpidiaBean"%>
<jsp:useBean id="mgr" class="netpidia.NetpidiaMgr"/>
<%
		request.setCharacterEncoding("UTF-8");
		String id = (String)session.getAttribute("idKey");
		if(id==null){
			response.sendRedirect("login.jsp");
			return;
		}
		NetpidiaBean bean = mgr.getMember(id);
%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>넷피디아 회원수정</title>
        <link rel="stylesheet" href="new_main.css">
        <script type="text/javascript">        	
        	var popupX = (document.body.offsetWidth / 2) - (300 / 2);
    		//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

    		var popupY= (window.screen.height / 2) - (150 / 2);
    		//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음		
    	</script>  
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <img src="./image/netpidia.png">
        </div>
		<form name="regFrm" method="post" action="updateProc.jsp">
        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" name="id" class="iint" maxlength="20"
                        	   value="<%=bean.getId() %>" readonly>                                             
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" name="pwd" class="int" maxlength="20"
                        	   value="<%=bean.getPwd()%>">
                        <span id="alertTxt">사용불가</span>
                        <img src="./image/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" name="pswd2" class="int" maxlength="20"
                        	   value="<%=bean.getPwd()%>">
                        <img src="./image/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="name" class="int" maxlength="20"
                        	   value="<%=bean.getName()%>">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" name="birthday" class="int" maxlength="6" placeholder="ex)920122"
                                value="<%=bean.getBirthday()%>">
                            </span>
                        </div>
                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" name="gender" class="sel">
                            <option value="00">성별</option>
                            <option value="M" name="M">남자 </option>                          
                            <option value="F" name="F">여자</option>                           
                        </select>                          
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">이메일<span class="optional"></span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" name="email" class="int" maxlength="100"
                        	   value="<%=bean.getEmail()%>">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- JOIN BTN-->
                <div class="btn_area">
                    <input type="submit" value = "UPDATE" id="btnJoin" name="btnJoin" onclick = "inputCheck()">                                          
                </div>
            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
   <script src = "main.js"></script>
 
   <script>
   document.regFrm.gender.value="<%=bean.getGender()%>";  
   </script> 
    </body>
</html>