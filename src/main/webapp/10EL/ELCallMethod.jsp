<%@ page import="el.MyELClass" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
MyELClass myClass = new MyELClass();
pageContext.setAttribute("myClass", myClass);
%>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 메서드 호출</title>
</head>
<body>
<h3>영역에 저장후 메서드 호출하기</h3>
001225-3000000 => ${myClass.getGender("001225-3000000") }<br/>
001225-3000000 => ${myClass.getGender("001225-2000000") }

<h3>클래스 명을 통해 정적 메서드 호출하기</h3>
${MyELClass.showGugudan(7) }
</body>
</html>