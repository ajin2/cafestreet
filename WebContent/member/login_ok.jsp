<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mdto" class="member.memberDTO"/>
<jsp:setProperty property="*" name="mdto"/>
<jsp:useBean id="mdao" class="member.memberDAO" scope="session"/>
<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String nickname=mdao.getUserInfo(id);
System.out.println(id+pwd);
int result=mdao.login_Check(id,pwd);


if(result==mdao.LOGIN_OK){
	session.setAttribute("sid", nickname);
	System.out.println(nickname);
	%>
	<script>
	window.alert('<%=nickname%>'+'님 환영합니다.');
	location.href="/cafestreet/index.jsp";
	opener.location.reload();//새로고침기능
	
	</script>
	<%
}else if(result==mdao.NOT_PWD){
	%>
	<script>
	window.alert('아이디 또는 비밀번호가 맞지 않습니다.');
	location.href="login.jsp";
	</script>
	<%
}else if(result==mdao.NOT_ID){
	%>
	<script>
	window.alert('해당하는 아이디가 없습니다.');
	location.href="login.jsp";
	</script>
	<%
}else if(result==mdao.ERROR){
	%>
	<script>
	window.alert('고객센터에 연락 바랍니다.');
	location.href="/cafestreet/member/index.jsp";
	</script>
	<%
}

%>