<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	fieldset {
		width: 500px;
		margin-left: 230px;
		padding: 20px;
		text-align: left;
		font-family: 'Noto Sans KR';
	}
	label {
		width:100px;
	}
</style>

<form action="uploadResult.jsp" method="get">
	<fieldset>
		<legend>영화 정보</legend>
		<label>제목 : </label> 
		<input type="text" name="name" placeholder="영화 이름">
		<br><br> 
		<label>상세 설명</label><br>
		<textarea rows="10" cols="50" placeholder="영화 상세 설명" name="explain"></textarea>
		<br> <br>
		<label>파일 : </label> 
		<input type="file" value="파일 선택" name="poster"><br><br>
		<label>상영시간 : </label> 
		<input type="text" placeholder="경로" name="time"><br><br>
		<input type="submit" value="전송">
	</fieldset>
</form>
