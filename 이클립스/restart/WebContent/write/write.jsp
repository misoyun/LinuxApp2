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
</head>
<body>

		<form action="writeAction.jsp" method="post" style = "margin-left: 50px ">
		
		<select name = "board" >    <!-- 제한된 항목 여러 개중 하나 선택할 때 -->
					 		
					<option selected>자유게시판</option>
					<option> 거래게시판 </option>
					<option> 고민게시판 </option>
					<option> 스터디모집</option>
		</select>
		
		<select name = "posthead" >    <!-- 제한된 항목 여러 개중 하나 선택할 때 -->
					 		
					<option selected>가입인사</option>
					<option> 삽니다 </option>
					<option> 팝니다 </option>
					<option> 고민있어요 </option>
					<option> 스터디괌 </option>
		</select>
		
		
		<br>
		
		제목: <input type = "text" name = "title" style = "padding-right: 600px" ><br>
		파일첨부: <input type = "file" name = "file" value = "파일첨부"><br>
		내용: <br> 
		<textarea rows="30" cols="100" name = "content" style = "background-color: skyblue"></textarea><br>
		
		공개: <input type = "radio" name = "open" value = "전체공개" checked>전체공개<br> 
			 <input type = "radio" name = "open" value = "멤버공개" style = "margin-left: 44px ">멤버공개<br>
			 
		검색 허용: <input type = "checkbox" name = "search"> 
		<br> 
		<input type ="submit" value = "글 쓰기" style = "position:relative; left:750px">
		
		<br>
		</form>
		
</body>
</html>