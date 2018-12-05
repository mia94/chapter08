<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="chapter08.BoardInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardMgr" class="chapter08.BoardInfoManager" scope="application"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container{
		width:700px;
		margin: 0 auto;
	}
	#container h1{
		text-align: center;
	}
	ul#board{
		list-style: none;
		width:100%;
		border-top: 3px solid gray;
		padding: 0;
		margin:20px 0;
	}
	ul#board li{
		border-bottom: 1px solid gray;
		width:100%;
		position: relative;
		padding: 10px 0;
	}
	ul#board li p{
		display: inline-block;
		padding: 0;
		margin: 0;
	}
	ul#board li .title{
		width:50%;
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
		margin-right: 30px;
	}
	ul#board li .name{
		width:20%;
		color: gray;
		font-size: 12px;
		vertical-align: top; /* 세로정렬 */
	}
	ul#board li .time{
		font-size: 12px;
		position: absolute;
		right: 10px;
	}
	#btn{
		text-align: right;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btnWrite").click(function(){
			location.href = "BoardForm.jsp"
		})
		
		$("#btnDelete").click(function(){
			location.href = "boardAllDelete.jsp";
		})
		
		$(".title").click(function(){
			var index = $(this).attr("data-index");
			location.href = "boardDetail.jsp?index="+index; // 인덱스값을 주소에 실어주기
		})
	})
</script>
</head>
<body>
	
	
	<div id="container"> 
		<h1>게시판</h1>
		<div id="btn">
			<button id="btnWrite">글쓰기</button>
			<button id="btnDelete">모두 삭제</button>
		</div>
		<ul id="board">
			<!-- <li>
				<p class="title">제목입니다.제목입니다.제목입니다.제목입니다.제목입니다.제목입니다.제목입니다.</p>
				<p class="name">작성자 : 이쁘니</p>
				<p class="time">2018.12.04 10:11</p>
			</li> -->
			<%
				ArrayList<BoardInfo> array = boardMgr.getBoardList();
				for (int i = array.size()-1 ; i >= 0; i--) {
					BoardInfo info = array.get(i);
					out.println("<li>");
					out.println("<p class='title' data-index='"+i+"'>"+info.getTitle()+"</p>");//i의 따옴표 신경쓰기!
					out.println("<p class='name'>"+info.getName()+"</p>");
					
					Date date = info.getDate();
					SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm");
					String time = sd.format(date); //format : date를 스트링으로 변화해줌
					
					out.println("<p class='time'>"+time+"</p>");
					out.println("</li>");
				}
			%>
		</ul>
	</div>
</body>
</html>


















