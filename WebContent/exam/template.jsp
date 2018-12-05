<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		padding: 0;
		margin: 0;
	}
	#container{
		width:1024px;
		margin: 0 auto;
	}
	section{
		margin:30px auto;
		width:100%;
		text-align: center;
	}
</style>
</head>
<body>
	<%
		String section = request.getParameter("section");
		if(section==null){
			section = "home.jsp";
		}
	%>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		
		<section>
			<jsp:include page='<%=section %>'></jsp:include>
		</section>
		
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>