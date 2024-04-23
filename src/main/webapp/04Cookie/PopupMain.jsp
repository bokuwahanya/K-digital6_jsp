<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    String popupMode = "on";
    
    Cookie[] cookies = request.getCookies();
    if (cookies != null){
    	for (Cookie c : cookies){
    		String cookieName = c.getName();
    		String cookieValue = c.getValue();
    		if (cookieName.equals("PopupClose")){
    			popupMode = cookieValue;
    		}
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű�� �̿��� �˾� ����</title>
<style>
div#popup{
position: absolute; top:100px; left:50px; color:yellow;
width:270px; height:100px; background-color:gray;
}
div#popup>div{
position: relative; background-color:#ffffff; top:0px;
border:1px solid gray; padding:10px; color:black;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
$(function(){
	$('#closeBtn').click(function(){
		$('#popup').hide();
		var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
		console.log("chkVal",chkVal); 
		if(chkVal == 1){
			$.ajax({
				url : './PopupCookie.jsp',
				type : 'get',
				data : {inactiveToday : chkVal},
				dataType : "text",
				success : function(resData) {
					if(resData != '') location.reload();
				}
			});
		}
	});
});
</script>
</head>

<body>
<h2>�˾� ���� ������</h2>
<%
for (int i = 1 ;i <=10; i++){
	out.print("���� �˾�â�� " + popupMode+ "�����Դϴ�.<br/>");
}
if (popupMode.equals("on")){
	
%>
	<div id= "popup">
	<h2 align="center">�������� �˾��Դϴ�.</h2>
	<div align="right"><form name="popFrm">
	<input type ="checkbox" id ="inactiveToday" value="1"/>
	�Ϸ絿�� ���� ����
	<input type="button" value="�ݱ�" id="closeBtn"/>
	</form></div>
	</div>
<%
}
%>

</body>
</html>