<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>외부파일2</h2>
<%
String newVar2 = "백제 온조왕";
%>
<ul>
<li>page 영역 속성 : <%= pageContext.getAttribute("pAttr") %></li>
<li>request 영역 속성 : <%= request.getAttribute("rAttr") %></li>
</ul>
</body>
</html>