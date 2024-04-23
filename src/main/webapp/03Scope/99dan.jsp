<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<%! 
public int dan(int a, int b){	
	 return a * b;
}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String a1 = request.getParameter("dan");
	int a = 0;
	int b = 0;
	try{
		a =Integer.parseInt(a1);
	}catch (NumberFormatException e){
		e.printStackTrace();
	}
	for(b = 1 ; b <= 9; b++){
		dan(a,b);
	}
	
%>

<% 
for(b = 1; b <= 9; b++)
{
out.println(a + " * " + b + " = " + dan(a,b) + "<br/>"); 
}
%>

</body>
</html>