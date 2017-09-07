<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/mainLayout.css">
<style>
h2,h3,p{
	text-align: center;
}
div{
	width:450px;
	margin: 0px auto; 
}
</style>
</head>
<body>
<%@include file = "header.jsp" %>
<div style = "border : 2px solid gray; width:600px;">
<form name = "join_ok" action = "login.jsp">
<h2>회원가입을 축하합니다</h2>
<h3>ID :</h3> 
<p><input type="button" value = "login"></p>
</form>
</div>
</body>
</html>