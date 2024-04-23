<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style>
div#Login{
position: absolute; top:auto; color:white; flex-flow:column; text-align:center; margin:5px;
width:370px; height:180px; background-color:gray;
}
div#Login>div{
position: relative; background-color:#ffffff; top:0px;
border:1px solid gray; padding:10px; color:black;
flex; justify-content: center; text-align: left;
}

</style>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp" />
	<div id ="Login">
	<h2>�α��� ������</h2>
	<span style="color: red; font-size: 1.2em;"> <%= request.getAttribute("LoginErrMsg") == null?
			"":request.getAttribute("LoginErrMsg")%>
	</span>
	<%
		if (session.getAttribute("UserId") == null) {
		%>
	<script>
		function validateForm(form){
			if (!form.user_id.value){
				alert("���̵� �Է��ϼ���.");
				return false;
			}
			if (form.user_pw.value == ""){
				alert("�н����带 �Է��ϼ���.");
				return false;
			}
		}
		</script>
	<div>
	<form action="LoginProcess.jsp" method="post" name="loginFrm"
		onsubmit="return validateForm(this);">
		
		&nbsp;&nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp; : <input type="text" name="user_id" />
		<br />
		<br/>
		 PASSWORD : <input type="password" name="user_pw" />
		 <br /> 
		 <br/>
		 <input  type="submit" value="�α����ϱ�" />
	</form>
	</div>
	
	<%
			}else{
			%>
	<%= session.getAttribute("UserName") %>ȸ����, �α����ϼ̾�.
	<br />
	<img style="width:70px;" src ="../Common/n1.png"/> 
	<a href="Logout.jsp">[�α׾ƿ�]</a>
	<%
			}
			%>
			</div>
</body>
</html>