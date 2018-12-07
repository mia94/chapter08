<%@page import="chapter08.BoardInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardMgr" class="chapter08.BoardInfoManager" scope="application"></jsp:useBean>

<style>
	#write_wrap{
		width:800px;
		margin: 0 auto;
	}
	#write_wrap table{
		width:750px;
		border-collapse: collapse;
	}
	#write_wrap table tr:FIRST-CHILD{
		height: 50px;
		text-align: center;
		font-weight: bold;
	}
	#write_wrap table #writer{
		text-align: right;
		font-size: 12px;
		height: 30px;
	}
	#write_wrap table tr:LAST-CHILD {
		height: 100px;
	}
	#write_wrap table td{
		border-bottom:1px solid gray; 
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#delete").click(function(){
			
			<%
				String index2 = request.getParameter("index");
				int j = Integer.parseInt(index2);
				BoardInfo info2 = boardMgr.getBoardList().get(j);
			%>
			location.href = "template.jsp?section=boardDeleteOne.jsp&index="+<%=j %>;
		})
	})    
	

</script>

<div id="write_wrap">
	<%
		String index = request.getParameter("index");
		int i = Integer.parseInt(index);
		BoardInfo info = boardMgr.getBoardList().get(i);
	%>
	<table>
		<tr>
			<td><%=info.getTitle() %></td>
		</tr>
		<tr>
			<td id="writer">글쓴이 : <%=info.getName() %></td>
		</tr>
		<tr>
			<td><%=info.getContent() %></td>
		</tr>
	</table>
	<button id="delete">삭제</button>
</div>