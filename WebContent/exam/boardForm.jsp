<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#board_wrap{
		width:800px;
		margin: 0 auto;
	}
	#board_wrap fieldset {
		width: 500px;
		margin:0 auto;
		padding: 20px;
		text-align: left;
		font-family: 'Noto Sans KR';
	}
</style>
<div id="board_wrap">
	<form action="boardResult.jsp" method="get">
		<fieldset>
			<legend>글쓰기</legend>
			<p>
				<label>제 목</label>
				<input type="text" name="title" placeholder="제 목">
			</p>
			<p>
				<label>이 름</label>
				<input type="text" name="name" placeholder="이 름">
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
</div>