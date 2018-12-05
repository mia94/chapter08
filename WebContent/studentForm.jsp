<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	fieldset {
		width:300px;
		color:gray;
	}
	label{
		float: left;
		width:100px;
	}
</style>
</head>
<body>
	<form action="studentResult.jsp">
		<fieldset>
			<legend>학생정보</legend>
			<label>이름</label>
			<input type="text" name="name"><br>
			<label>수학</label>
			<input type="text" name="math"><br>
			<label>영어</label>
			<input type="text" name="eng"><br>
			<label>국어</label>
			<input type="text" name="kor"><br>
			<input type="submit" value="전송">
			<input type="reset" value="취소">
		</fieldset>
	</form>
</body>
</html>