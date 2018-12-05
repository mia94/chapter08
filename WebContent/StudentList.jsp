<%@page import="chapter08.StudentInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="studentMgr" class="chapter08.StudentInfoManager" scope="application"></jsp:useBean><!-- StudentResult에서 복사해옴 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
	}
	td, th{
		border: 1px solid gray;
		padding: 10px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th>이름</th>
			<th>수학</th>
			<th>영어</th>
			<th>국어</th>
			<th>총점</th>
			<th>평균</th>
		</tr>
		<%
			ArrayList<StudentInfo> array = studentMgr.getStudentList();
			for(int i=0;i<array.size();i++){
				out.print("<tr>");
				StudentInfo info = array.get(i);
				out.println("<td>"+info.getName()+"</td>");
				out.println("<td>"+info.getMath()+"</td>");
				out.println("<td>"+info.getEng()+"</td>");
				out.println("<td>"+info.getKor()+"</td>");
				out.println("<td>"+info.sumScore()+"</td>");
				out.println("<td>"+info.avgScore()+"</td>");
				out.print("</tr>");
			}
		%>
	</table>
	<a href="studentForm.jsp">입력창 바로가기</a>
</body>
</html>















