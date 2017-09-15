<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mdto" class="member.memberDTO" />
<jsp:setProperty property="*" name="mdto" />
<jsp:useBean id="mdao" class="member.memberDAO"/>
   
<%

  boolean check = mdao.idCheck(mdto.getId());
  boolean ncheck = mdao.nickCheck(mdto.getNickname());
  System.out.println(check);
  System.out.println(ncheck);
  if(check==false){
	  %>
	  <script>
	  window.alert('중복된 아이디 입니다.');
	  location.href='/cafestreet/member/join.jsp';
	  </script>
	  <%
  }else if(ncheck==false){
	  %>
	  <script>
	  window.alert('중복된 닉네임 입니다.');
	  location.href='/cafestreet/member/join.jsp';
	  </script>
	  <%
  }else if(check==true&&ncheck==true){
	  int result = mdao.member(mdto);
	  %>
	  <script>
	  window.alert('<%=mdto.getNickname()%>'+'님 환영합니다.');
	  location.href='/cafestreet/index.jsp';
	  </script>
	  <%
  }
%>

