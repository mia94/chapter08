<%@page import="chapter08.MovieInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieMgr" class="chapter08.MovieInfoManager" scope="application"></jsp:useBean>
<style>
	article{
		width:200px;
		height: 300px;
		text-align: center;
		border:1px solid black;
		float: left;
		margin: 10px;
	}
	article img{
		width:200px;
		height: 270px;
	}
	#article_wrap{
		width:900px;
		margin: 0 auto;
		position: relative;
		margin-top: 10px;
	}
	#article_wrap a{
		position: absolute;
		right: 0px;
		top:-20px;
		text-decoration: none;
		color:black;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$("article").click(function(){
			var index = $(this).attr("data-index");
			location.href = "template.jsp?section=movieDetail.jsp&index="+index;
		})
	})
</script>

<div id="article_wrap">
	<a href="template.jsp?section=uploadForm.jsp">상영 영화 추가하기</a>
	<%
	ArrayList<MovieInfo> array = movieMgr.getMovieList();

	for(int i=0;i<array.size();i++){
		MovieInfo info = array.get(i);
		out.println("<article>");
		out.println("<img src='images/"+ info.getPoster() +"'>");
		out.println("<p>"+ info.getName()+"</p>");
		out.println("</article>");
	}
%>
</div>