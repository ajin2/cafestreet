<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "CSS/mainLayout.css">
</head>
<body>
<%@include file ="header.jsp"%>
<section>
	<article>
		<img src = "img/seoulmap.png" width = "680px">
	</article>
	<article>
		<table border = "1" cellspacing = "0" align = "center">
			<tr>
				<td>
				<a href = "Gasi.jsp">
				<img src = "img/1.jpg" width = "200px" height = "200px">
				</a>
				</td>
				<td>
				<a href = "Gasi.jsp">
				<img src = "img/2.jpg" width = "200px" height = "200px">
				</a>
				</td>
				<td>
				<a href = "Gasi.jsp">
				<img src = "img/3.jpg" width = "200px" height = "200px">
				</a>
				</td>
			</tr>
			<tr>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
			</tr>
			<tr>
				<td>
				<a href = "Gasi.jsp">
				<img src = "img/4.jpg" width = "200px" height = "200px">
				</a>
				</td>
				<td>
				<a href = "Gasi.jsp">
				<img src = "img/5.jpg" width = "200px" height = "200px">
				</a>
				</td>
				<td>
				<a href = "Gasi.jsp">
				<img src = "img/6.jpg" width = "200px" height = "200px">
				</a>
				</td>
			</tr>
			<tr>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
			</tr>
			<tr>
				<td>
				<a href = "Gasi.jsp">
				<img src = "img/7.jpg" width = "200px" height = "200px">
				</a>
				</td>
				<td>
				<a href = "Gasi.jsp">
				<img src = "img/8.jpg" width = "200px" height = "200px">
				</a>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
				<td>
				작성자 : <br>
				제목 : <br>
				조회수 : <br>
				</td>
			</tr>
		</table>
	</article>
	<article align = "center">
	<form name = "searchform" action = "Gasi.jsp">
		<br>
		<select style = "width:100px;">
			<option>작성자</option>
			<option>제목</option>
			<option>작성자+제목</option>
			<option>주소</option>
			<option>내용</option>
		</select>
		<input type="text" size = "30">
		<input type="submit" value = "검색">
	</form>
	</article>
</section>
<%@include file ="footer.jsp"%>
</body>
</html>