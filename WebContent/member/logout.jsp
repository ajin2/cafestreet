<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();//세션종료
response.sendRedirect("/cafestreet/index.jsp");
%>
