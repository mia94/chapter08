<%@page import="chapter08.JoinInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="joinManager" class="chapter08.JoinInfoManager" scope="application"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
	}
	th{
		background-color: orange;
	}
	td{
		border:1px solid black;
		padding: 5px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%-- <script>
		$(function(){
			$("button").click(function(){
				<%
					joinManager.delJoin(join);
				%>
			})
		})
		
</script> --%>
</head>
<body>
	<table>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>성별</th>
			<th>나이</th>
			<th>이메일</th>
			<th>삭제</th>
		</tr>
		<%
			ArrayList<JoinInfo> array = joinManager.getJoinList();
			for(int i = 0; i<array.size();i++){
				JoinInfo info = array.get(i);
				out.println("<tr>");
					out.println("<td>"+info.getId()+"</td>");
					out.println("<td>"+info.getPassword()+"</td>");
					out.println("<td>"+info.getName()+"</td>");
					out.println("<td>"+info.getGender()+"</td>");
					out.println("<td>"+info.getAge()+"</td>");
					out.println("<td>"+info.getEmail()+"</td>");
					out.println("<td><input type='button' value='삭제'></td>");
				out.println("</tr>");
			}
		%>
		

	</table>
</body>
</html>