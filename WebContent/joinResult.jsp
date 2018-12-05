<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="join" class="chapter08.JoinInfo" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="join"/>
<jsp:useBean id="joinManager" class="chapter08.JoinInfoManager" scope="application"></jsp:useBean>
<!DOCTYPE html>
<%
	joinManager.addJoin(join);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
	}
	td{
		border:1px solid orange;
		padding:5px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td>아이디</td>
			<td><%=join.getId() %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=join.getPassword() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=join.getName() %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=join.getGender() %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=join.getAge() %></td>
		</tr>
		<tr>
			<td>이메일 주소</td>
			<td><%=join.getEmail() %></td>
		</tr>
	</table>
	<a href="joinResultList.jsp">전체회원보기</a>
</body>
</html>