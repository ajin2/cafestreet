<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String sid=(String)session.getAttribute("sid");
%>
<header>
	<%
	if(sid==null||sid.equals("")){
		%>
		<p><a href = "/cafestreet/member/login.jsp">로그인</a> | <a href = "/cafestreet/member/join.jsp">회원가입</a></p>
		<%
	}else{
		%>
		<p><%=sid %>님  | <a href = "logout.jsp">로그아웃</a></p>
		<%
	}
	%>
	<article id = "headerImg">
	<a href = "index.jsp">
	<img src = "img/mainlogo.jpg" style = "width: 680px;height: 150px;">
	</a>
	</article>
</header>