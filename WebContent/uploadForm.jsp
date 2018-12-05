<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	fieldset {
		width:400px;
		float: left;
	}
	label{
		float: left;
		width:100px;
	}
</style>
</head>
<body>
	<form action="uploadResult.jsp" method="get">
		<fieldset>
			<legend>책제목</legend>
			<p>
				<label>제목</label>
				<input type="text" name="name" placeholder="책이름" size="20">
			</p>
			<p>
				<label>파일</label>
				<input type="file" name="file" placeholder="경로">
			</p>
			<p>
				<input type="submit" value="업로드">
			</p>
		</fieldset>
	</form>
</body>
</html>