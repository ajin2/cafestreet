<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function categoryChange(e) {
	var good_a = ["지수","제니","로제","리사"];
	var good_b = ["빅토리아","엠버","루나","크리스탈"];
	var good_c = ["하니","정화","혜린","솔지","LE"];
	var target = document.getElementById("good");
	
	if(e.value == "a") var d = good_a;
	else if(e.value == "b") var d = good_b;
	else if(e.value == "c") var d = good_c;
	
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
<select onchange="categoryChange(this)">
	<option>걸그룹을 선택해주세요</option>
	<option value = "a">블랙핑크</option>
	<option value = "b">에프엑스</option>
	<option value = "c">EXID</option>
</select>
<select id = "good">
	<option>좋아하는 멤버를 선택해주세요</option>
</select>
</body>
</html>