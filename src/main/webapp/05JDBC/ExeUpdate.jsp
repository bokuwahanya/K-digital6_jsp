
<%@page import = "java.sql.Connection"%>
<%@page import ="common.JDBConnect" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JDBC</title>
</head>
<body>
<h2>ȸ�� �߰� �׽�Ʈ(executeUpdate()���)</h2>
<%
JDBConnect jdbc = new JDBConnect();

String id = "test1";
String pass = "1111";
String name = "�׽�Ʈ1ȸ��";

String sql = "INSERT INTO MEMBER(id, pass, name) VALUES (?,?,?)";
PreparedStatement psmt = jdbc.con.prepareStatement(sql);
psmt.setString(1, id);
psmt.setString(2, pass);
psmt.setString(3, name);

int inResult = psmt.executeUpdate();
out.println(inResult + "���� �ԷµǾ���.");

jdbc.close();
%>

</body>
</html>