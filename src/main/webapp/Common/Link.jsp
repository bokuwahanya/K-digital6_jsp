<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<table border="1" width="90%">
	<tr>
		<td align="center">
			<!-- �α��� ���ο� ���� �޴� ��ȭ --> <% if(session.getAttribute("UserId") == null){ %>
			<a href="../06Session/LoginForm.jsp">�α���</a> <% } else { %> <a
			href="../06Session/Logout.jsp">�α׾ƿ�</a> <% } %> <!--  8��� 9���� ȸ���� �Խ��� ������Ʈ���� ����� ��ũ -->
			&nbsp;&nbsp;&nbsp; <a href="../08Board/List.jsp">�Խ���(����¡x)</a>
			&nbsp;&nbsp;&nbsp; <a href="../09PagingBoard/List.jsp">�Խ���(����¡O)</a>
			&nbsp;&nbsp;&nbsp; <a href="../05JDBC/ExeQuery.jsp">id�� ã��</a>
			&nbsp;&nbsp;&nbsp; <a href="../03Scope/99dan3.jsp">99��</a>
		</td>
	</tr>
</table>
