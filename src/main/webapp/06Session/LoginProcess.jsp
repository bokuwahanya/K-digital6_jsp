<%@ page import = "membership.MemberDTO" %>
<%@ page import = "membership.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%
   String userId =request.getParameter("user_id");
   String userPwd = request.getParameter("user_pw");
   
   String driver = application.getInitParameter("MySQLDriver");
   String url = application.getInitParameter("MySQLURL");
   String id = application.getInitParameter("MySQLId");
   String pwd = application.getInitParameter("MySQLPwd");
   
   MemberDAO dao = new MemberDAO(driver, url, id, pwd);
   MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
   dao.close();
   
   if(memberDTO.getId() != null){
	   session.setAttribute("UserId", memberDTO.getId());
	   session.setAttribute("UserName", memberDTO.getName());
	   response.sendRedirect("LoginForm.jsp");
   }
   else{
	   request.setAttribute("LoginErrMsg", "�α��ο�����");
	   request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
   }
   %>
