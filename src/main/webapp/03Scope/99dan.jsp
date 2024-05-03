<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    int dir = Integer.parseInt(request.getParameter("dir"));
%>
<table border="1">
<thead>
<tr>
<th>${dir}단</th>
</tr>
</thead>
<tbody>
<c:forEach var="i" begin="2" end="${dir}" >
    <c:forEach var="j" begin="1" end="9">
        <c:set var="result" value="${i * j}" />
        <tr>
            <td>${i} x ${j} = ${result}</td>
        </tr>
    </c:forEach>
</c:forEach>
</tbody>
</table>
</body>
</html>