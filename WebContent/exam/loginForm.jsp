<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	#loginForm_wrap{
		width:960px;
		margin:0 auto;
	}
	fieldset {
		width:500px;
		margin: 30px auto;
		padding: 40px 20px;
	}
	label{
		width:100px;
		float: left;
	}
</style>

<div id="loginForm_wrap">
	<form action="" method="post">
		<fieldset>
			<legend>로그인</legend>
				<label>아이디</label>
				<input type="text" name="id"><br><br>
				
				<label>비밀번호</label>
				<input type="password" name="passwd"><br><br>
				
				<input type="submit" value="로그인">
				<input type="reset" value="취소">
		</fieldset>
	</form>
</div>