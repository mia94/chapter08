<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chapter08.MemberInfo" scope="page"></jsp:useBean>
<%-- <%
	String id = request.getParameter("id");
	member.setId(id);
	개발자는 알지만 디자이너가 모르기때문에 다른 방식을 이용
	
	name에는 변수이름 property에는 id param은 넘어오는 id값
%> --%>
<%-- <jsp:setProperty name="member" property="id" param="id"/>
<jsp:setProperty name="member" property="name" param="name"/>
<jsp:setProperty name="member" property="email" param="email"/>
<jsp:setProperty name="member" property="password" param="password"/>
<jsp:setProperty name="member" property="testTest" param="test"/> --%>
<!-- 주의! set으로 시작하는 함수만 인식  -->
<jsp:setProperty name="member" property="*"/><!-- 바로 동일한 이름의 변수에 값을 집어넣으려 함 date의 경우 이름을 다르게해서 수동으로 넣어줘야함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디 : <%=member.getId() %><br>
	비밀번호 : <%=member.getPassword() %><br>
	이름 : <%=member.getName() %><br>
	이메일 : <%=member.getEmail() %><br>
	주소 : <%=member.getAddress() %><br>
	날짜 : 
			<% 
				String sDate = request.getParameter("date");
				//yyyy-mm-dd형태로 받을예정(이렇게 받아야 가능)
				SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
				Date date = sd.parse(sDate);
				member.setRegisterDate(date);
				
			%>
			
			<%=date %>
</body>
</html>













