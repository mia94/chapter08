<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	header{
		width:1024px;
		height: 130px;
		text-align: center;
		position: relative;
	}
	header h1{
		height: 80px;
		line-height: 80px;
		color: #C90000;
		font-family: 'Jua'
	}
	header h1 span{
		font-family: 'Bungee';
		font-size: 1.5em;
	}
	header nav{
		height: 40px;
		font-family: 'Jua'
	}
	header nav ul{
		list-style: none;
		border-top:2px solid #F2CB61;
		border-bottom: 2px solid #F2CB61;
	}
	header nav ul li{
		float: left;
		display: inline;
		line-height: 40px;
		margin: 10px 30px;
	}
	header nav ul li:FIRST-CHILD{
		margin-left: 280px;
	}
	header nav ul a{
		color:black;
		text-decoration: none;
		margin: 0 10px;
	}
	/*------- 로그인 파트 --------*/
	header>a{
		text-decoration: none;
		color:black;
		font-weight: bold;
		position: absolute;
		top: 55px;
		right: 30px;
	}
</style>

<header>
	<h1>대구 <span>CGV</span></h1>
	<a href="template.jsp?section=loginForm.jsp">로그인</a>
	<span></span>
	<nav>
		<ul>
			<li><a href="template.jsp?section=home.jsp">HOME</a></li>
			<li><a href="template.jsp?section=movieList.jsp">상영영화</a></li>
			<li><a href="template.jsp?section=timeList.jsp">상영시간표 </a></li>
			<li><a href="template.jsp?section=boardList.jsp">게시판</a></li>
		</ul> 
	</nav>
</header>