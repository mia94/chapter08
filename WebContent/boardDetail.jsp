<%@page import="chapter08.BoardInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardMgr" class="chapter08.BoardInfoManager" scope="application"></jsp:useBean>
<%
	String index = request.getParameter("index"); //인덱스값을 받아와야함!
	int i = Integer.parseInt(index); //NumberFormatException:인덱스값을 안받아오면 뜨는 에러
	BoardInfo info = boardMgr.getBoardList().get(i);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, td, th{
		border: 1px solid black;
		border-collapse: collapse;
	}
	table{
		width:400px;
	}
	td{
		height: 50px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td>이 름</td>
			<th><%=info.getName() %></th>
		</tr>
		<tr>
			<td>제 목</td>
			<th><%=info.getTitle() %></th>
		</tr>
		<tr>
			<td>상세 내용</td>
			<th><%=info.getContent() %></th>
		</tr>
	</table>
</body>
</html>