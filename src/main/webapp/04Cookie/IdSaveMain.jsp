<%@ page import="utils.CookieManager" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    String loginId = CookieManager.readCookie(request, "loginId");
    
    String cookieCheck = "";
    if(!loginId.equals("")){
    	cookieCheck = "checked";
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���̵������ϱ�</title>
<style>
div#IdSave{
position: absolute; top:auto; color:white; flex; text-align:center; margin:5px;
width:370px; height:150px; background-color:blue;
}
div#IdSave>div{
position: relative; background-color:#ffffff; top:0px;
border:1px solid gray; padding:10px; color:black;
flex; justify-content: flex-start; text-align: left;
}

</style>
</head>
<body>
<div id = "IdSave">
<h2>�α��� ������</h2>
<div>
<form action = "IdSaveProcess.jsp" method="post">
���̵� : <input type="text" name= "user_id" value="<%= loginId %>"/>
<br/>
<br/>
�н����� : <input type="text" name="user_pw"/>
<br/>
<input type="submit" value="�α����ϱ�"/>
<input type ="checkbox" name="save_check" value="Y" <%= cookieCheck %>/>
���̵� �����ϱ�
</form>
</div>
</div>


</body>
</html>