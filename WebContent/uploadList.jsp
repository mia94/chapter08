<%@page import="chapter08.BookInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bookMgr" class="chapter08.BookInfoManager" scope="application"></jsp:useBean><!-- 앞의 페이지와 동일하지 않으면 새로 만들어짐 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		width:200px;
		float: left;
		text-align: center;
	}
	div img{
		width:150px;
		height: 180px;
	}
	div p{
		width:150px;
		clear:both;
		padding: 5px;
	}
</style>
</head>
<body>
	<%
		ArrayList<BookInfo> array = bookMgr.getBookList();
		for(int i = 0; i<array.size(); i++){
			BookInfo info = array.get(i);
			//out.println(info.getName()+" , "+info.getFile()+"<br>");
			out.println("<div>");
				out.println("<img src='images/"+ info.getFile() +"'><br>");
				out.println(info.getName());
			out.println("</div>");
		}
	%>
</body>
</html>