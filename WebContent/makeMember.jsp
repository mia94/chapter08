<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chapter08.MemberInfo" scope="request"></jsp:useBean>
<%
	member.setId("mia94");
	member.setName("우선미");
%>

<jsp:forward page="useMember.jsp">
	<jsp:param value="aaa@ss.net" name="email"/>
</jsp:forward>