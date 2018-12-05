<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	label{
		float: left;
		width:120px;
		text-align: right;
		padding-right: 10px;
	}
	p:LAST-CHILD {
		width:300px;
		text-align: center;
	}
</style>
</head>
<body>
	<form action="memberResult.jsp" method="get">
		<p>
			<label>아이디</label>
			<input type="text" name="id" size="20">
		</p>
		<p>
			<label>패스워드</label>
			<input type="password" name="password" size="20">
		</p>
		<p>
			<label>이름</label>
			<input type="text" name="name" size="20">
		</p>
		<p>
			<label>이메일</label>
			<input type="text" name="email" size="20">
		</p>
		<p>
			<label>주소</label>
			<input type="text" name="address" size="20">
		</p>
		<p>
			<label>날짜</label>
			<input type="text" name="date" size="20"> <!-- 이름이 달라서 *에 안들어가게 됨 -->
		</p>
		<p>
			<input type="submit" value="전송">
		</p>
		
	</form>
</body>
</html>