<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<table border="1" width="90%">
	<tr>
		<td align="center">
			<!-- 로그인 여부에 따른 메뉴 변화 --> <% if(session.getAttribute("UserId") == null){ %>
			<a href="../06Session/LoginForm.jsp">로그인</a> <% } else { %> <a
			href="../06Session/Logout.jsp">로그아웃</a> <% } %> <!--  8장과 9장의 회원제 게시판 프로젝트에서 사용할 링크 -->
			&nbsp;&nbsp;&nbsp; <a href="../08Board/List.jsp">게시판(페이징x)</a>
			&nbsp;&nbsp;&nbsp; <a href="../09PagingBoard/List.jsp">게시판(페이징O)</a>
			&nbsp;&nbsp;&nbsp; <a href="../05JDBC/ExeQuery.jsp">id로 찾기</a>
			&nbsp;&nbsp;&nbsp; <a href="../03Scope/99dan3.jsp">99단</a>
		</td>
	</tr>
</table>
