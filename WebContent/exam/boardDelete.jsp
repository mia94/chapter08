<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardMgr" class="chapter08.BoardInfoManager" scope="application"></jsp:useBean>
<%
	boardMgr.clearAll();
	/* response.sendRedirect("template.jsp?section=boardList.jsp"); */
%>
<script>
	location.href = "template.jsp?section=boardList.jsp";
	//redirect가 안먹을 경우 제이쿼리를 이용해서 넘김
</script>
<!-- 
		만약 에러페이지의 길이가 512바이트보다 작다면,
		인터넷 익스플로러는 이 페이지가 출력하는 에러페이지를 출력하지 않고,
		자체적으로 제공하는 'HTTP 오류메세지' 화면을 출력한다.
		인터넷 익스플로러에서도 에러페이지 내용을 올바르게 출력하려면
		응답결과에 이 주석과 같은 내용을 포함시켜서
		에러데이터가 512바이트를 넘도록 해야한다.
	 -->