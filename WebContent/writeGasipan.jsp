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
<script>
function sel(){
	var ci = document.getElementById("selci");
	var area_ci = ci.options[ci.selectedIndex].text;
	document.getElementById("hici").value = area_ci

	var gu = document.getElementById("selgu");
	var area_gu = gu.options[gu.selectedIndex].text;
	document.getElementById("higu").value = area_gu
	
	document.getElementById('writeBBSform').submit();
}
function changegu(e){
	var selgu_S = ["강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구",
		"동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구",
		"용산구","은평구","종로구","중구","중랑구"];
	var selgu_GG = ["가평군","고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시",
		"동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시",""];
	var selgu_IN = ["인","천","광","역","시"];
	var target = document.getElementById("selgu");
	
	if(e.value == "S") var d = selgu_S;
	else if(e.value == "GG") var d = selgu_GG;
	else if(e.value == "IN") var d = selgu_IN;
	
	target.options.length = 0;
	
	for(x in d) {
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}
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