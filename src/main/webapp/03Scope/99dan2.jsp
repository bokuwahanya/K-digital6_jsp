<%@page import="jakarta.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String c1 = request.getParameter("col");
	int a = 0; // 99단 col
	int b = 0; // 99단 row
	int c = 1; // 분할 col 입력
	int d = 0; // 분할 col
	int result = 0;
	try{
		c = Integer.parseInt(c1);
		
	}catch (NumberFormatException e){
		e.printStackTrace();
	}
	
%>
<%	for(d = 0; d <= 10/c; d++){
	for(a = 1; a <= 9; a++){
		for(b = 2; b < c+2 && b < 10; b++){
			if((d*c+b) > 9){
				break;
			}else
			result = (d*c+b) * a;
			String space = (result < 10) ? "&nbsp;&nbsp;" : "&nbsp;";
			out.println((d*c+b) + " * " + a + " = " + result + space + "&emsp;");
		}
		 out.println("<br/>");
	}
	out.println("<br/>");
}


%>
</body>
</html>