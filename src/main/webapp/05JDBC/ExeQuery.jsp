<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="common.JDBConnect"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JDBC</title>
<style>
#table{
position: absolute; top:auto; color:white; flex; text-align:center; margin:5px;
width:550px; height:30px; background-color:gray;
}
#table2{
position: relative; background-color:#ffffff; top:0px;
border:1px solid gray; padding:10px; color:black;
flex; justify-content: flex-start; text-align: left;
}

</style>
</head>
<body>

<%

String val = request.getParameter("val");

if (val == null || val.isEmpty()) {
%>
<h2>ȸ�� ��� ID ��ȸ</h2>
<form >
ID�� �Է��ϼ���: <input type="text" name="val"/>
<input type="submit" value="Ȯ��"/>
</form>
<%
} else {
    //db�� ����
    JDBConnect jdbc = new JDBConnect();

    // ������ ����
    String sql = "SELECT num,title,content,name,postdate,visitcount " 
            + "FROM board b, member m "
            + "WHERE b.id = m.id "
            + "AND b.id = '"+ val +"'";

    Statement stmt = jdbc.con.createStatement();

    // ���� ����
    ResultSet rs = stmt.executeQuery(sql);

    // �Էµ� ID�� �˻��� ����� ������
    if (!rs.next()) {
%>
    <h2>ID�� �߸��Ǿ����ϴ�. �ٽ� �Է����ּ���.</h2>
    <form >
    ID�� �Է��ϼ���: <input type="text" name="val"/>
    <input type="submit" value="Ȯ��"/>
    </form>
<%
    } else {
%>
<h2>ȸ�� ��� ID ��ȸ</h2>
<form >
ID�� �Է��ϼ���: <input type="text" name="val"/>
<input type="submit" value="Ȯ��"/>
</form>

<table id = "table">
<tr>
<th>num</th>
<th>title</th>
<th>content</th>
<th>name</th>
<th>postdate</th>
<th>visitcount</th>
</tr>

<%
    while(rs.next()){
    
        %>
        <tr id = "table2">
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        </tr>
        <%
    }
%>
</table>
<%
    }
    jdbc.close();
}
%>
</body>
</html>
