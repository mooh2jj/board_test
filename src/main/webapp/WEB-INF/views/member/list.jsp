<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>list</h1>

<%@ include file="/WEB-INF/views/include/header.jsp" %>
<table border="1">
	<thead >
	<tr>
		<th>id</th>
		<th>pwd</th>
		<th>name</th>
		<th>email</th>
		<th>joinDate</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="uvo" items="${selectAll}">
		<tr>
			<td>${uvo.id}</td>
			<td>${uvo.pwd}</td>
			<td><a href="/member/view?id=${uvo.id}">${uvo.name}</a></td>
			<td>${uvo.email}</td>
			<td><fmt:formatDate value="${uvo.joindate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>