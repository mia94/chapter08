<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="chapter08.StudentInfo" scope="page"></jsp:useBean>
<jsp:setProperty name="student" property="*"/>
<jsp:useBean id="studentMgr" class="chapter08.StudentInfoManager" scope="application"></jsp:useBean>
<!DOCTYPE html>
<%
	studentMgr.addStudent(student);//setProperty의 변수이름과 맞춰야함
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
		text-align: center;
		width:400px;
	}
	td{
		border:1px solid black;
	}
</style>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<table>
		<tr>
			<td>이름</td>
			<td><%=student.getName() %></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><%=student.getMath() %></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><%=student.getEng() %></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><%=student.getKor() %></td>
		</tr>
		<tr>
			<td>총점</td>
			<td><%=student.sumScore() %></td>
		</tr>
		<tr>
			<td>평균</td>
			<td><%=student.avgScore() %></td>
		</tr>
	</table>	
	
	<a href="StudentList.jsp">학생 전체 정보보기</a>
</body>
</html>




















