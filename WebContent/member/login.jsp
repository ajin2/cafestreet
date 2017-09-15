<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> CAFE STREET </title>
<link rel="stylesheet" type="text/css" href="/cafestreet/CSS/mainLayout.css">
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
<script>
function joinbtn() {
   location.href='/cafestreet/member/join.jsp'
}

</script>
</head>
<body>
<a href = "/cafestreet/member/login.jsp"><img src = "/cafestreet/img/mainlogo.jpg" style="width: 680px; height: 150px; margin-left: auto; margin-right: auto; display: block;"></a>
<section>
   <article id="login">
      <fieldset>
         <h2>로그인</h2>
         <form name = "lo" action = "login_ok.jsp">
	         <table>
	            <tr>
	               <td rowspan = "3">
	               <img src = "/img/loginimg.png" style = "width:100px;">
	               </td>
	            </tr>
	            <tr>
	               <th>ID</th>
	               <td><input type = "text" name = "id"></td> 
	            </tr>
	            <tr>
	               <th>PASSWORD</th>
	               <td><input type = "password" name = "pwd"></td>            
	            </tr>
	         </table>
	         <p>
	         <input type = "submit" value = "로그인">
	         <input type = "button" value = "회원가입" onclick = "joinbtn()">
	         </p>
         </form>
      </fieldset>
   </article>
</section>
<%@include file="/footer.jsp"%>
</body>
</html>