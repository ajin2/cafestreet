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
<script src = "selfunc.js">
</script>
</head>
<body>
<%@include file = "header.jsp"%>
<section>
	<article>
	<form id = "writeBBSform" action = "writeGasipan_ok.jsp">
		<table border="1" cellspacing = "0" width = "680px">
			<tr>
				<th>지역선택</th>
				<td>
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
						<option value = "BS">부산광역시</option>
						<option value = "JJ">제주도</option>
					</select>
					<input type = "hidden" id = "hici" name = "hici">
					>
					<select id = "selgu" style = "width:100px;">
						<option>구 선 택</option>
					</select>
					<input type = "hidden" id = "higu" name = "higu">
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
			 	<input type = "text" size = "70" name = "title">
				</td>
			</tr>
			<tr>
				<th>사진첨부</th>
				<td>
				<input type = "file" name = "img">
				</td>
			</tr>
			<tr>
				<th colspan="2">내용</th>
			</tr>
			<tr>
				<td colspan="2" align = "center">
				<TextArea name = "text" rows = "50" cols = "90">내용을입력하세요</TextArea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align = "center">
				<input type = "button" value = "등록" onclick = "sel()">
				<input type = "reset" value = "다시작성">
				</td>
			</tr>
		</table>
	</form>
	</article>
</section>
<%@include file = "footer.jsp"%>
</body>
</html>