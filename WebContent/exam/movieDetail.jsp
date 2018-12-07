<%@page import="chapter08.MovieInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieMgr" class="chapter08.MovieInfoManager" scope="application"></jsp:useBean>
<%
	ArrayList<MovieInfo> array = movieMgr.getMovieList();
	
	String index = request.getParameter("index");
	int i = Integer.parseInt(index);
	MovieInfo info = movieMgr.getMovieList().get(i);
%>
<style>
	#detail_wrap{
		width:550px;
		margin: 0 auto;
	}
	#detail_wrap h1, #detail_wrap p:FIRST-CHILD{
		height: 40px;
		line-height: 40px;
	}
	#detail_wrap img{
		float: left;
		margin: 10px 20px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#delMovie").click(function(){
			location.href = "template.jsp?section=movieDeleteOne.jsp&index="+<%=i %>;
		})
	})
</script>

<div id="detail_wrap">
	<img src='images/<%= info.getPoster() %>'>
	<h1><%=info.getName() %></h1>
	<p><b>줄거리</b></p>
	<p><%=info.getExplain() %></p>
</div>
<button id="delMovie">삭제</button>