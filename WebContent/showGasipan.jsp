<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cst.*"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel = "stylesheet" type = "text/css" href = "CSS/mainLayout.css">
</head>
<jsp:useBean id="cafedto" class="cst.CSTDTO" />
<jsp:setProperty property="*" name="cafedto" />
<jsp:useBean id="cafedao" class="cst.CSTDAO" />

<% ArrayList<CSTDTO> arr=null;
	String si=request.getParameter("hici");
	String gu=request.getParameter("higu");
	System.out.println(si+" "+gu);
	
	if(request.getParameter("searchType")!=null){
		String searchType=request.getParameter("searchType");
		String search=request.getParameter("search");
		
		 arr=cafedao.bbsList(si,gu,searchType,search);
		
	}else{
		 arr=cafedao.bbsList(si,gu);
	}
	%>

<body>
<%@include file ="header.jsp"%>
<section>
	<form name = showGasipanfm action = "writeGasipan.jsp">
	<article>
		<img src = "img/seoulmap.png" width = "680px" >
	</article>
	<article id=rowimg>
	
	<div class="container-fluid text-center bg-grey">

  	<div class="row text-center" >
    <%
      	for(int i=0;i<arr.size();i++){
	  		String img=arr.get(i).getImg();
	  		String writer=arr.get(i).getWriter();
	  		String hits=arr.get(i).getHit();
	  		String title=arr.get(i).getTitle();
	  	 
      %>
      
    <div class="col-sm-4">
      <div class="thumbnail">            
        <img src="<%=img%>" alt="image" style = "width: 880px;height: 150px;">
        <p><strong>글쓴이:<%=writer%></strong></p>
        <p><strong>제목:<%=title%></strong></p>
        <p><strong>조회수:<%=hits%></strong></p> 
        
      </div>
    </div>
  <% } %>
  </div> 
 </div>
		<input type = "submit" value = "글쓰기">
	</article>
	</form>
	<article align = "center">
	<form name = "searchform" action = "showGasipan.jsp">
		<br>
		<select style = "width:100px;" name="searchType">
			<option value="writer">글쓴이</option>
			<option value="title">제목</option>
			<option value="writer_title">글쓴이+제목</option>
			<option>주소</option>
			<option>내용</option>
		</select>
		<input type="hidden" name="hici" value=<%=si %>>
		<input type="hidden" name="higu"value=<%=gu %>>
		<input type="text" name="search"size = "30" >
		<input type="submit" value = "검색">
	</form>
	</article>
</section>
<%@include file ="footer.jsp"%>
</body>
</html>