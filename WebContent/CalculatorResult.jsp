<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="calculator" class="chapter08.Calculator" scope="page"></jsp:useBean>
<%-- <jsp:setProperty name="calculator" property="num1" param="num1"/>
<jsp:setProperty name="calculator" property="num2" param="num2"/> --%>
<jsp:setProperty  name="calculator" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			double num1 = calculator.getNum1();
			double num2 = calculator.getNum2();
		%>
		
		<%=num1 %> + <%=num2 %> = <%=calculator.add() %><br>
		<%=num1 %> - <%=num2 %> = <%=calculator.minus() %><br>
		<%=num1 %> * <%=num2 %> = <%=calculator.multiply() %><br>
		<%=num1 %> / <%=num2 %> = <%=calculator.divi() %><br>
		
		<%=calculator.getNum1() %> + <%=calculator.getNum2() %> = <%=calculator.add() %><br>
		<%=calculator.getNum1() %> - <%=calculator.getNum2() %> = <%=calculator.minus() %><br>
		<%=calculator.getNum1() %> * <%=calculator.getNum2() %> = <%=calculator.multiply() %><br>
		<%=calculator.getNum1() %> / <%=calculator.getNum2() %> = <%=calculator.divi() %>
</body>
</html>