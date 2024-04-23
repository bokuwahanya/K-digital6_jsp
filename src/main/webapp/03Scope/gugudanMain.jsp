<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
   	String sel = request.getParameter("sel");
	String val = request.getParameter("val");
   	
   	if(sel.equals("Type1")){
   		response.sendRedirect("99dan.jsp?dan="+val);
   	}
   	if(sel.equals("Type2")){
   		response.sendRedirect("99dan2.jsp?col="+val);
   	}
   %>
