<%@ page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR");%>
<html>
	<head>
		<title>�ű� ���ī�� �ۼ��ϱ�</title>
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				var max_input = 10;							// �ִ� �Է� ������(���ڵ�)
				var x = 1;										// ���ڵ� ���� �ʱ�ȭ
				$('.add-btn').click(function(e) {		// �߰���ư�� Ŭ���̺�Ʈ
					e.preventDefault();
					if (x < max_input) {
						x++;
						$('.wrapper').append(`
								<div class="input-box">
								<select name="contactYN">
								<option>������ǥ������ </option>
								<option value="1">��ǥ(1��) </option>
								<option value="2">��ǥ�ƴ� </option>
							</select>
							<select id="memGender" name="memGender" onchange="memGenderChange(this)">
								<option >�������� </option>
								<option value="1">���� </option>
								<option value="2">���� </option>
							</select>
							<select id="famCall" name="famCall">
								<option selected>ȣĪ����</option>
								<option value="�Ǹ�">�Ǹ�</option>
								<option value="���">���</option>
								<option value="�峲">�峲</option>
								<option value="���">���</option>
								<option value="����">����</option>
								<option value="����">����</option>
								<option value="�ﳲ">�ﳲ</option>
								<option value="���">���</option>
								<option value="����">����</option>
								<option value="�ճ�">�ճ�</option>
								<option value="����">����</option>
								<option value="����">����</option>
								<option value="��">��</option>
								<option value="��">��</option>
								<option value="�ú�">�ú�</option>
								<option value="�ø�">�ø�</option>
								<option value="����">����</option>
								<option value="���">���</option>
								<option value="��">��(����/����)</option>
								<option value="��">��(������)</option>
								<option value="��">��(����/���)</option>
								<option value="��">��(������)</option>
							</select>
							<input name="memName" placeholder="����" maxlength="5" size="8">
							<input name="budaName" placeholder="����" value="" maxlength="5" size="5">
							<input name="solaDate" placeholder="��»������" value="" onfocus="solaToLuna()">
							<input name="lunaDate" placeholder="���»������" value="" onfocus="lunaToSola()">
							<select name="yundal">
								<option >���޿���</option>
								<option value="0">���</option>
								<option value="1">����</option>
							</select>
							<input name="ganji60_k" placeholder="60��(�ѱ�)" value="" size="5">
							<input name="ganji60_c" placeholder="60��(�ѹ�)" value="" size="5">
							<input name="ganji12" placeholder="12��" value="" size="5">
							<input name="mobileNum" placeholder="�޴���" value="" maxlength="5" size="6">
							<input name="phoneNum" placeholder="������ȭ" value="" maxlength="5" size="6">
							<input name="email" placeholder="�̸���" value="" maxlength="5" size="5">
							<input name="history" placeholder="�����" value="" maxlength="5" size="6">
							<input name="searchHint" placeholder="�˻���Ʈ" value="" maxlength="5" size="6">
							<select name="lotusYN">
								<option>�����ǥ���� </option>
								<option value="1">������ </option>
								<option value="0">�� �� </option>
							</select>
								<a href="#" class="remove-lnk">����</a>
							</div>`);												//�Է��ʵ� 1 ���ڵ� �߰�
					}
				});
				$('.wrapper').on("click", ".remove-lnk", function(e) { // ������ũ Ŭ�� �̺�Ʈ
					e.preventDefault();
					$(this).parent('div').remove();  	// �Է��ʵ� 1 ���ڵ� ����
					x--;											// �Է��ʵ�� 1 ����
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

			    var man = ["�Ǹ�","�峲","����","�ﳲ","�糲","����","�Ҿƹ���","�ƹ���","�þƹ���","����","��(����/����)","��(������)"];
			    var women = ["���","���","����","���","���","�ճ�","�ҸӴ�","��Ӵ�","�þ�Ӵ�","���","��(����/���)","��(������)"];
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
								<td height="30"><font color=""><b>�������� �Է�</b></font></td>
							</tr>
							<tr>
								<td align="center" height="30">
									<select name="famGrade">
										<option>����������ؼ���</option>
										<option value="1">�׻� ������</option>
										<option value="2">���� ��縸 ����</option>
										<option value="3">��¼�� �ѹ���</option>
										<option value="4">���� ���� ����</option>
										<option value="5">�������� ����</option>
									</select>
										&nbsp;&nbsp;&nbsp;
									<select name="noticeYN">
										<option >���˸����μ���</option>
										<option value="1">��� ��� �˷��ֱ�</option>
										<option value="2">�ֿ���縸 �˷��ֱ�</option>
										<option value="3">��� �˸��ʿ� ����</option>
									</select>
								</td>
							</tr>
							<tr>
								<td align="center" height="100">
									<input name="postcode" id="postcode" type="text" placeholder="�����ȣ" size="7" readonly> &nbsp;&nbsp;&nbsp;
									<button type="button" class="btn" onClick="execPostcode()">�����ȣ ã��</button> <br>
									<input name="address" id="address" type="text" placeholder="�ּ�1" size="30" readonly> <br>
									<input name="extraAddress" id="extraAddress" type="text" placeholder="�ּ�2" size="30" readonly> <br>
									<input name="detailAddress" id="detailAddress" type="text" placeholder="�����Է��ּ�" maxlength="20" size="30">
								</td>
							</tr>
						</table>
						<br>
						<table width="95%">
							<tr>
								<td align="center">
									<button class="btn add-btn">���������� �߰��ϱ�</button>
								</td>
							</tr>
							<tr>
								<td align="center">
									<div class="wrapper">
										<div class="input-box">
											<select name="contactYN">
												<option>������ǥ������ </option>
												<option value="1">��ǥ(1��) </option>
												<option value="2">��ǥ�ƴ� </option>
											</select>
											<select id="memGender" name="memGender" onchange="memGenderChange(this)">
												<option >�������� </option>
												<option value="1">���� </option>
												<option value="2">���� </option>
											</select>
											<select id="famCall" name="famCall">
												<option selected>ȣĪ����</option>
												<option value="�Ǹ�">�Ǹ�</option>
												<option value="���">���</option>
												<option value="�峲">�峲</option>
												<option value="���">���</option>
												<option value="����">����</option>
												<option value="����">����</option>
												<option value="�ﳲ">�ﳲ</option>
												<option value="���">���</option>
												<option value="����">����</option>
												<option value="�ճ�">�ճ�</option>
												<option value="����">����</option>
												<option value="����">����</option>
												<option value="��">��</option>
												<option value="��">��</option>
												<option value="�ú�">�ú�</option>
												<option value="�ø�">�ø�</option>
												<option value="����">����</option>
												<option value="���">���</option>
												<option value="��">��(����/����)</option>
												<option value="��">��(������)</option>
												<option value="��">��(����/���)</option>
												<option value="��">��(������)</option>
											</select>
											<input name="memName" placeholder="����" maxlength="5" size="8">
											<input name="budaName" placeholder="����" value="" maxlength="5" size="5">
											<input name="solaDate" placeholder="��»������" value="" onfocus="solaToLuna()">
											<input name="lunaDate" placeholder="���»������" value="" onfocus="lunaToSola()">
											<select name="yundal">
												<option >���޿���</option>
												<option value="0">���</option>
												<option value="1">����</option>
											</select>
											<input name="ganji60_k" placeholder="60��(�ѱ�)" value="" size="5">
											<input name="ganji60_c" placeholder="60��(�ѹ�)" value="" size="5">
											<input name="ganji12" placeholder="12��" value="" size="5">
											<input name="mobileNum" placeholder="�޴���" value="" maxlength="5" size="6">
											<input name="phoneNum" placeholder="������ȭ" value="" maxlength="5" size="6">
											<input name="email" placeholder="�̸���" value="" maxlength="5" size="5">
											<input name="history" placeholder="�����" value="" maxlength="5" size="6">
											<input name="searchHint" placeholder="�˻���Ʈ" value="" maxlength="5" size="6">
											<select name="lotusYN">
												<option>�����ǥ���� </option>
												<option value="1">������ </option>
												<option value="0">�� �� </option>
											</select>
											&nbsp; &nbsp; &nbsp;
										</div>
									</div>
								</td>
							</tr>
						</table>
						<br>
							<button type="submit" class="btn">�����ϱ�</button>&nbsp;
							<button type="reset" class="btn">�ٽþ���</button>&nbsp; 
							<button type="button" class="btn" onClick="javascript:location.href='index.jsp'">�ۼ����</button>
					</form>
				</td>
			</tr>
		</table>

	</body>
</html>