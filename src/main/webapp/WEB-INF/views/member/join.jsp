<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>
<a href="/member/list">list</a>
<h3>join</h3>
<form action="/member/insert" method="post">
	id :<input type="text" name="id" readonly="readonly"/><br>
	pw :<input type="text" name="pw"/><br>
	name :<input type="text" name="name"/><br>
	email :<input type="text" name="email"/><br>
	<button type="submit">등록</button>
</form>

</body>
</html>