<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="board" class="chapter08.BoardInfo"></jsp:useBean>
<jsp:setProperty property="*" name="board"/>
<jsp:useBean id="boardMgr" class="chapter08.BoardInfoManager" scope="application"></jsp:useBean>
<!-- Date객체에 값 넣어주기, 서버시간으로 맞춰짐 -->
<%
	Date date = new Date();
	board.setDate(date);
	
	boardMgr.addBoard(board);
	
	response.sendRedirect("boardList.jsp");
%>
