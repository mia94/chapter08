<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardMgr" class="chapter08.BoardInfoManager" scope="application"></jsp:useBean>
<%
	boardMgr.clearAll();
	response.sendRedirect("boardList.jsp");
%>