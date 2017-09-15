<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%request.setCharacterEncoding("utf-8"); %> 

      <jsp:useBean id="mdao" class="member.memberDAO"/>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원가입 </title>
<link rel="stylesheet" type="text/css" href="CSS/mainLayout.css">
<style>
hr{
   border: none;
   border: 1px solid black;
   width: 500px;
}
form{
   width:450px;
   margin: 0px auto; 
}

form input {
   width:450px; 
   height:50px
}
form p{
   text-align: 450px;
}

</style>

<script>

function pwdCheck(){
   
 var p1 = document.forms[0];
 var pwd1 = p1.pwd.value;
 var pwd2 = p1.pwd_ok.value;
 
 if(pwd1!=pwd2){
    
  document.getElementById('pwdCheck').style.color = "red";
  document.getElementById('pwdCheck').innerHTML = "비밀번호가 같지 않습니다"; 
 
 }else{
    
   document.getElementById('pwdCheck');
    document.getElementById('pwdCheck').innerHTML = ""; 
    
   }
}

</script>
</head>
<body>
<a href = "/cafestreet/member/login.jsp"><img src = "/cafestreet/img/mainlogo.jpg" style="width: 680px; height: 150px; margin-left: auto; margin-right: auto; display: block;"></a>
<section>
   <article>
            <form name = "join" action = "join_ok.jsp" method="post">
         
            <p>회원 정보 입력</p>
            
            <hr>
           
           <lable> <input type = "text" name = "id" placeholder="아이디" > </lable> <br>           
           <lable> <input type = "password" name = "pwd" placeholder="비밀번호" > </lable> <br>                             
           <input type = "password" name = "pwd_ok" placeholder="비밀번호 확인" onkeyup="pwdCheck()" > <br>
           <div id="pwdCheck"> </div>                                   
          <lable> <input type = "text" name = "nickname" placeholder="닉네임" > </lable> <br>                      
            
     </article> 
           
     <article align="center">   
            <p>
               <input type = "submit" value = "가입하기">
            </p>
         </form>
    </article>
  
</section>
</body>
</html>