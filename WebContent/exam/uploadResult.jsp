<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movie" class="chapter08.MovieInfo" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="movie"/>
<jsp:useBean id="movieMgr" class="chapter08.MovieInfoManager" scope="application"></jsp:useBean>
<%
	
	movieMgr.addMovie(movie);
	response.sendRedirect("template.jsp?section=movieList.jsp");
	
%>