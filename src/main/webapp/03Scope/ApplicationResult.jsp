<%@ page import="java.util.HashMap" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application ����</title>
</head>
<body>
<h2>application ������ �Ӽ� �б�</h2>
<%
Map<String,Person> 
	maps = (Map<String,Person>)application.getAttribute("maps");
	Set<String> keys = maps.keySet();
	for(String key : keys){
	Person person = maps.get(key);
	out.print(String.format("�̸� : %s, ���� : %d<br/>",
			person.getName(), person.getAge()));
}
%>
</body>
</html>