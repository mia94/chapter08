<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="chapter08.BoardInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="boardMgr" class="chapter08.BoardInfoManager" scope="application"></jsp:useBean>
<style>
	#board_wrap{
		width:860px;
		margin: 0 auto;
	}
	#board_wrap h1{
		text-align: center;
	}
</style>
	<div id="board_wrap"> 
		<h1>게시판</h1>
		<div id="btn">
			<button id="btnWrite">글쓰기</button>
			<button id="btnDelete">모두 삭제</button>
		</div>
		<ul id="board">

			<%
				ArrayList<BoardInfo> array = boardMgr.getBoardList();
				for (int i = array.size()-1 ; i >= 0; i--) {
					BoardInfo info = array.get(i);
					out.println("<li>");
					out.println("<p class='title' data-index='"+i+"'>"+info.getTitle()+"</p>");
					out.println("<p class='name'>"+info.getName()+"</p>");
					
					Date date = info.getDate();
					SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm");
					String time = sd.format(date); 
					
					out.println("<p class='time'>"+time+"</p>");
					out.println("</li>");
				}
			%>
		</ul>
	</div>