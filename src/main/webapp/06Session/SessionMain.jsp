<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    
    long creationTime = session.getCreationTime();
    String creationTimeStr = dateFormat.format(new Date(creationTime));
    
    long lastTime = session.getLastAccessedTime();
    String lastTimeStr = dateFormat.format(new Date(lastTime));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>
	<h2>Session 설정 확인</h2>
	<ul>
		<li>세선 유지 시간 : <%= session.getMaxInactiveInterval()%></li>
		<li>세선 아이디 : <%= session.getId()%></li>
		<li>최초 요청 시각 : <%= creationTimeStr%></li>
		<li>마지막 요청 시각 : <%= lastTimeStr%></li>
	</ul>

</body>
</html>