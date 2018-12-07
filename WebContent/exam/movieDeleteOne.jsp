<%@page import="chapter08.MovieInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieMgr" class="chapter08.MovieInfoManager" scope="application"></jsp:useBean>
<%
	String index = request.getParameter("index");
	int i = Integer.parseInt(index);
	
	ArrayList<MovieInfo> array = movieMgr.getMovieList();
	array.remove(i);
%>

<script>
	location.href = "template.jsp?section=movieList.jsp";
</script>