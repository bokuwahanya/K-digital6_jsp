<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ 3</title>
</head>
<style>
div#IdSave{
position: absolute; top:auto; color:white; flex; text-align:center; margin:5px;
width:370px; height:150px; background-color:gray;
}
div#IdSave>div{
position: relative; background-color:#ffffff; top:0px;
border:1px solid gray; padding:10px; color:black;
flex; justify-content: flex-start; text-align: left;
}

</style>
</head>
<body>

<div id = "IdSave" >
<h2>��� ���¸� �����Ͻÿ�</h2>
<div>
<form action = "gugudanMain.jsp" >
<input type="radio" name= "sel" value="Type1" />Type1
<br/>
<input type="radio" name= "sel" value="Type2" />Type2
<br/>
<input type="text" name="val" />�ܼ�/����
<br/>
<input type="submit" value="����"/>
</form>
</div>
</div>


</body>
</html>