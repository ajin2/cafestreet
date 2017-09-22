<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/mainLayout.css">
</head>
<script src = "selfunc.js">
</script>
<body>
<%@include file="header.jsp"%>
<section>
	<article id="mainImg" >
		<a href = "showGasipan.jsp">
		<img src="img/mainmap.jpg" alt = "메인이미지" style = "width:600px;">
		</a>
	</article>
	<article id="mainMenu">
	<form name = "selecform" action = "showGasipan.jsp" align="right">
		<Br><Br><Br><Br>
		<select id = "selci" style = "width:100px;" onchange = "changegu(this)">
			<option>시 선 택</option>
			<option value = "S">서울시</option>
			<option value = "GG">경기도</option>
			<option value = "IN">인천광역시</option>
			<option value = "GA">강원도</option>
			<option value = "CN">충청남도</option>
			<option value = "CB">충청북도</option>
			<option value = "DJ">대전광역시</option>
			<option value = "DG">대구광역시</option>
			<option value = "GJ">광주광역시</option>
			<option value = "JN">전라남도</option>
			<option value = "JB">전라북도</option>
			<option value = "GN">경상남도</option>
			<option value = "GB">경상북도</option>
			<option value = "JJ">제주도</option>
		</select>
		<br><br>
		<select id = "selgu" style = "width:100px;">
			<option>구 선 택</option>
		</select>
		<br><br>
		<select style = "width:100px;">
			<option>동 선 택</option>
			<option>방림동</option>
			<option>원산동</option>
			<option>진월동</option>
			<option>학동</option>
		</select>
		<input type = "hidden" id = "hici" name = "hici">
		<input type = "hidden" id = "higu" name = "higu">
		<br><br>
		<input type = "submit" value = "선택" onclick = "sel()">
	</form>
	</article>
</section>
<%@include file="footer.jsp"%>
</body>
</html>