<%@ page import="java.util.HashMap" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application 영역</title>
</head>
<body>
<h2>application 영역의 속성 읽기</h2>
<%
Map<String,Person> 
	maps = (Map<String,Person>)application.getAttribute("maps");
	Set<String> keys = maps.keySet();
	for(String key : keys){
	Person person = maps.get(key);
	out.print(String.format("이름 : %s, 나이 : %d<br/>",
			person.getName(), person.getAge()));
}
%>
</body>
</html>