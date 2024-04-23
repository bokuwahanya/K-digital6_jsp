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
	<h2>로그인 페이지</h2>
	<span style="color: red; font-size: 1.2em;"> <%= request.getAttribute("LoginErrMsg") == null?
			"":request.getAttribute("LoginErrMsg")%>
	</span>
	<%
		if (session.getAttribute("UserId") == null) {
		%>
	<script>
		function validateForm(form){
			if (!form.user_id.value){
				alert("아이디를 입력하세요.");
				return false;
			}
			if (form.user_pw.value == ""){
				alert("패스워드를 입력하세요.");
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
		 <input  type="submit" value="로그인하기" />
	</form>
	</div>
	
	<%
			}else{
			%>
	<%= session.getAttribute("UserName") %>회원님, 로그인하셨어.
	<br />
	<img style="width:70px;" src ="../Common/n1.png"/> 
	<a href="Logout.jsp">[로그아웃]</a>
	<%
			}
			%>
			</div>
</body>
</html>