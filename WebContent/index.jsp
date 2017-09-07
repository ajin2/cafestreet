<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/mainLayout.css">
</head>
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
		<select style = "width:100px;">
			<option>시 선 택</option>
			<option>서울시</option>
			<option>경기도</option>
			<option>인천광역시</option>
			<option>강원도</option>
			<option>충청남도</option>
			<option>충청북도</option>
			<option>대전광역시</option>
			<option>대구광역시</option>
			<option>광구광역시</option>
			<option>전라남도</option>
			<option>전라북도</option>
			<option>경상남도</option>
			<option>경상북도</option>
			<option>제주도</option>
		</select>
		<br><br>
		<select style = "width:100px;">
			<option>구 선 택</option>
			<option>북구</option>
			<option>남구</option>
			<option>동구</option>
			<option>서구</option>
			<option>광산구</option>
		</select>
		<br><br>
		<select style = "width:100px;">
			<option>동 선 택</option>
			<option>방림동</option>
			<option>원산동</option>
			<option>진월동</option>
			<option>학동</option>
		</select>
		<br><br>
		<input type = "submit" value = "선택">
	</form>
	</article>
</section>
<%@include file="footer.jsp"%>
</body>
</html>