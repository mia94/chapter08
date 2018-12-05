<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="boardResult.jsp" method="get">
		<fieldset>
			<legend>게시판 글쓰기</legend>
			<p>
				<label>제 목</label>
				<input type="text" name="title" placeholder="제 목" size="20">
			</p>
			<p>
				<label>이 름</label>
				<input type="text" name="name" placeholder="이 름" size="10">
			</p>
			<p>
				<label>내 용</label><br>
				<textarea rows="10" cols="50" name="content" placeholder="내 용"></textarea>
			</p>
			<p>
				<input type="submit" value="전송">
				<input type="reset" value="다시 작성">
			</p>
		</fieldset>
	</form>
</body>
</html>