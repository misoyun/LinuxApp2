<!-- 게시판 글 쓰기 폼 작성! 
	
	-게시판 선택
	-제목
	-첨부파일 1개
	-내용
	-전체공개, 멤버공개
	-검색허용

-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

		<%
		request.setCharacterEncoding("utf-8");
		%>
		
		<%
		String board = request.getParameter("board");
		
		String posthead = request.getParameter("posthead");
		
		String title = request.getParameter("title");
		
		String file = request.getParameter("file");
		
		String content = request.getParameter("content");
		
		String open = request.getParameter("open");
		
		String search = request.getParameter("search");
		%>
		


</head>
<body>
		<br>
		-게시판 선택: <%= board %> 
		 말머리 선택: <%= posthead %> 
		<br>
		-제목: <%= title %>
		<br>
		-첨부파일: <%= file %>
		<br>
		-내용: <%= content %>
		<br>
		-공개설정: <%= open %>
		<br>
		-검색허용: <%= search %>
		<br>
			







</body>
</html>