<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
	}
	td{
		background-color: orange;
		border:white solid 1px;
		padding: 5px;
	}
</style>
</head>
<body>
	<form action="joinResult.jsp" method="get">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" name="gender" value="남자">남
				<input type="radio" name="gender" value="여자">여
			</td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input type="text" name="age"></td>
		</tr>
		<tr>
			<td>이메일 주소</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="가입">
				<input type="reset" value="다시 작성">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>