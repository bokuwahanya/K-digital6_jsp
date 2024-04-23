<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!String str1 = "jsp";
	String str2 = "안녕하세요!! ";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloJSP</title>
</head>
<body>
<h1>집에가고 싶다 집에가고 싶다 집에 가고싶다
</h1>
	<img src='./n1.png' /> <img src='./n1.png' /> 
	<h2>
		만들기 싫은
		<%=str1%></h2>
	<p>
		<%
		out.println(str2 + str1 + "입니다. 열공할까요?^^");
		%>
		서블릿이라고 하는 것을 자동으로 만드는 역활을 한다. 알게모르게 서블릿을 이미 만들어봤다.
		자동으로 만들게 되면 거지같은 코드가 붙는다. 그래서 자체제작을 해야한다. 
		동적으로 날릴 수 있다. 그래서 동적 웹 프로젝트.
		리액트보다 쓰레기.
		
	</p>
</body>
</html>