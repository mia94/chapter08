<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chapter08.MemberInfo" scope="request"></jsp:useBean>
<%
	//멤버변수에 넣어줘야 꺼낼 수 있음
	String email = request.getParameter("email");
	member.setEmail(email);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 리퀘스트 영역안에 들어있는 member변수 끄집어내기, 없으면 새로만들고 있으면 꺼냄 따라서 이름 다르지 않도록 주의 -->
	<%=member.getId() %>님 반갑습니다.<br>
	고객님의 이름은 <%=member.getName() %>입니다.<br>
	고객님의 이메일은 <%=member.getEmail() %>입니다.
	
</body>
</html>