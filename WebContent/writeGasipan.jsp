<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/mainLayout.css">
<style>
table th{
	font-size: 18px;
	width: 150px;
}
</style>
</head>
<body>
<%@include file = "header.jsp"%>
<section>
	<article>
	<form>
		<table border="1" cellspacing = "0" width = "680px">
			<tr>
				<th>지역선택</th>
				<td>
					<select>
						<option>시선택</option>
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
					>
					<select>
						<option>구선택</option>
						<option>북구</option>
						<option>남구</option>
						<option>동구</option>
						<option>서구</option>
						<option>광산구</option>
					</select>
					>
					<select>
						<option>동선택</option>
						<option>방림동</option>
						<option>원산동</option>
						<option>진월동</option>
						<option>학동</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
			 	<input type = "text" size = "70">
				</td>
			</tr>
			<tr>
				<th>사진첨부</th>
				<td>
				<input type = "file">
				</td>
			</tr>
			<tr>
				<th colspan="2">내용</th>
			</tr>
			<tr>
				<td colspan="2" align = "center">
				<TextArea name = "content" rows = "50" cols = "90">내용을입력하세요</TextArea>
				</td>
			</tr>
		</table>
	</form>
	</article>
</section>
<%@include file = "footer.jsp"%>
</body>
</html>