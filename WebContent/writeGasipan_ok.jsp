<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="cdto" class = "cst.CSTDTO"/>
<jsp:setProperty property = "*" name = "cdto"/>
<jsp:useBean id="cdao" class="cst.CSTDAO"/>
<%
String area_ci = request.getParameter("hici");
String area_gu = request.getParameter("higu");
int result = cdao.upload_Text(cdto,area_ci,area_gu);
String msg = result>0?"게시물 등록!":"게시물 등록실패!";
%>
<script>
window.alert('<%=msg%>');
location.href='/cafestreet/showGasipan.jsp'
</script>