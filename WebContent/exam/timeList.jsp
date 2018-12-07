<%@page import="chapter08.MovieInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieMgr" class="chapter08.MovieInfoManager" scope="application"></jsp:useBean>

<style>
	#timeList_wrap{
		width:600px;
		margin:0 auto;
		text-align: center;
	}
	#timeList_wrap h1{
		height: 30px;
		font-family: 'Jua'
	}
	#timeList_wrap table{
		width:600px;
		margin:20px auto;
		border-collapse: collapse;
	}
	#timeList_wrap th, td{
		border:1px solid black;
	}
</style>

<div id="timeList_wrap">
<h1>상영시간표</h1>

<table>

<%
	ArrayList<MovieInfo> array = movieMgr.getMovieList();
	
	for(int i=0;i<array.size();i++){
		MovieInfo info = array.get(i);
		out.println("<tr>");
			out.println("<th>" + info.getName() + "</th>");
			out.println("<td>" + info.getTime() + "</td>");
		out.println("<tr>");
	}
%>

</table>
</div>