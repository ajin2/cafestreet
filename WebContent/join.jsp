<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/mainLayout.css">
<style>
h2{
	text-align: center;
}
fieldset{
	width:450px;
	margin: 0px auto; 
}
fieldset p{
	text-align: center;
}
fieldset table{
	width:450px;
	margin: 0px auto;
}
</style>
</head>
<body>
<%@include file="header.jsp"%>
<section>
   <article>
   <fieldset>
   <form name = "joinfm" action = "join_ok.jsp">
      <h2>회원가입</h2>
         <table>
            <tr>
               <th>ID</th>
               <td><input type = "text" name = "id"></td>
               <td><input type = "button" name = "idcheck" value = "중복확인"></td> 
            </tr>
            <tr>
               <th>PASSWORD</th>
               <td><input type = "password" name = "pwd"></td>               
            </tr>
            <tr>
               <th>PASSWORD확인</th>
               <td><input type = "password" name = "pwdch"></td>               
            </tr>
            <tr>
               <th>닉네임</th>
               <td><input type = "text" name = "nickname"></td>
               <td><input type = "button" name = "nickcheck" value = "중복확인"></td> 
            </tr>
            <tr>
               <th>주소</th>
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
				<select>
					<option>구선택</option>
					<option>북구</option>
					<option>남구</option>
					<option>동구</option>
					<option>서구</option>
					<option>광산구</option>
				</select>
				<select>
					<option>동선택</option>
					<option>방림동</option>
					<option>원산동</option>
					<option>진월동</option>
					<option>학동</option>
				</select>
               </td> 
            </tr>
         </table>
            <p>
               <input type = "submit" value = "가입하기">
               <input type = "reset" value = "다시작성">
            </p>
      </form>
      </fieldset>
   </article>
</section>
<%@include file="footer.jsp"%>
</body>
</html>