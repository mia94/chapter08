<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="chapter08.BoardInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="boardMgr" class="chapter08.BoardInfoManager" scope="application"></jsp:useBean>
<style>
	#board_wrap{
		width:800px;
		margin: 30px auto;
	}
	#board{
		list-style: none;
		border-top: 3px dotted #C90000;;
		margin: 10px;
	}
	#board li{
		height: 30px;
		line-height:30px;
		border-bottom: gray 1px solid;
		position: relative;
	}
	#board li p{
		display: inline-block;
	}
	#board li .title{
		width:50%;
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
		margin-right: 30px;
		text-align: left;
	}
	#board li .name{
		width:20%;
		font-size: 12px;
		position: absolute;
		top:0px;
		left: 400px;
	}
	#board li .time{
		color:gray;
		font-size: 12px;
		position: absolute;
		top:0px;
		left: 650px;
	}
	#btn button{
		float: right;
		margin: 5px;
		font-family: 'Jua';
		padding: 5px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btnWrite").click(function(){
			location.href = "template.jsp?section=boardForm.jsp"
		})
		
		$("#btnDelete").click(function(){
			location.href = "template.jsp?section=boardDelete.jsp"
		})
		
		$(".title").click(function(){
			var index = $(this).attr("data-index");
			location.href = "template.jsp?section=boardDetail.jsp&index="+index;
		})
	})
</script>
	<div id="board_wrap"> 
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
		<div id="btn">
			<button id="btnDelete">모두 삭제</button>
			<button id="btnWrite">글쓰기</button>
		</div>
	</div>