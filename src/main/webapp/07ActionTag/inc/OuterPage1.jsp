<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>寇何颇老1</h2>
<%
String newVar1 = "绊备妨 技款 悼疙空";
%>
<ul>
<li>page 康开 加己 : <%= pageContext.getAttribute("pAttr") %></li>
<li>request 康开 加己 : <%= request.getAttribute("rAttr") %></li>
</ul>
</body>
</html>