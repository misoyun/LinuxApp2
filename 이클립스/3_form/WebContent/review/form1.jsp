<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!--  form : 사용자 입력을 받아 서버로 전송 HTML 요소 !! --> 
		<!-- 
			INPUT :  입력 
			- text, password, checkbox , radio, submit, hidden, reset 
			- email,,,, 		
			SELECT : 선택 여러개의 값중에 하나를 선택하는 요소 !! 
			
			TEXTAREA : 여러행의 값 입력  
		
		 -->
		 <!--  게시판 글쓰기 !! --> 
		<form action = "form1Action.jsp"  method="post" >
		 제목 :  <input type="text"  name = "title"> <br>
		 내용 <br> 
		 	<textarea rows="10" cols="100" name="content" >  </textarea>
		 	<input type="submit" value ="저장"> 
		 </form>
		 
</body>
</html>

















