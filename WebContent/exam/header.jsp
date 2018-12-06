<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	header{
		width:1024px;
		height: 130px;
		background-color: #FFFFD2;
		text-align: center;
	}
	header h1{
		height: 80px;
		line-height: 80px;
		color: #ED0000;
	}
	header nav{
		height: 40px;
	}
	header nav ul{
		list-style: none;
		border-top:2px solid black;
		border-bottom: 2px solid black;
	}
	header nav ul li{
		float: left;
		display: inline;
		line-height: 40px;
	}
	header nav ul li:FIRST-CHILD{
		margin-left: 350px;
	}
	header nav ul a{
		color:black;
		text-decoration: none;
		margin: 0 10px;
	}
</style>

<header>
	<h1>대구 CGV</h1>
	<nav>
		<ul>
			<li><a href="template.jsp?section=home.jsp">HOME  | </a></li>
			<li><a href="template.jsp?section=movieList.jsp">  상영영화   |  </a></li>
			<li><a href="template.jsp?section=timeList.jsp">  상영시간표   |  </a></li>
			<li><a href="template.jsp?section=boardList.jsp">  게시판</a></li>
		</ul> 
	</nav>
</header>