<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="book" class="chapter08.BookInfo" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="book"/>
<jsp:useBean id="bookMgr" class="chapter08.BookInfoManager" scope="application"></jsp:useBean>
<%
	bookMgr.addBook(book);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		제목 : <%=book.getName() %> <br>
		파일 : <%=book.getFile() %> <br>
		
		<a href="uploadList.jsp">파일 정보 리스트 보기</a>
</body>
</html>