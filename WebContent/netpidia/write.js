var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
oAppRef : oEditors,
elPlaceHolder : "smartEditor",
sSkinURI : "/se2/SmartEditor2Skin.html",
fCreator : "createSEditor2",
htParams : {
		bUseToolbar : true,
		bUseVerticalResizer : true,
		bUseModeChanger : true
		}
});
$(function() {
	$("#savebutton").click(function() {
oEditors.getById["smartEditor"].exec("UPDATE_CONTENTS_FIELD", []);

var selcatd = $("#selcatd > option:selected").val(); 
var title = $("#title").val(); 
var content = document.getElementById("smartEditor").value;;

if (selcatd == "") { 
	alert("ī�װ��� �������ּ���."); 
	return; 
}
if (title == null || title == "") {
	 alert("������ �Է����ּ���."); 
$("#title").focus(); 
return; 
}
if(content == "" || content == null || content == '&nbsp;' ||
content == '<br>' || content == '<br/>' || content == '<p>&nbsp;</p>'){
alert("������ �ۼ����ּ���."); 
oEditors.getById["smartEditor"].exec("FOCUS");
return;
}
var result = confirm("���� �Ͻðڽ��ϱ�?");

if(result){
	alert("���� �Ϸ�!");
	$("#noticeWriteForm").submit();
}else{
return;
}
		});
	})