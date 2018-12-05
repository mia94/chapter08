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
<div id="detail_wrap">
	<img src="images/" + <%=info.getPoster() %> + ".jpg">
	<p><%=info.getExplain() %></p>
</div>