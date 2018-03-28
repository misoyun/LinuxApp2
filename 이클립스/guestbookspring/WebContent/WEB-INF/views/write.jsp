<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action= "${pageContext.servletContext.contextPath}/guest/insert" method="post"> <!-- 현재 경로 가져오기!!! -->
		    글 번호: <input type = "number" name = "bookNum"><br>
		  이름:  <input type = "text" name = "name" ><br>
		 비밀번호: <input type = "password" name = "pw" ><br>
		내용: <input type = "text" name = "content"><br>
		작성시간:	<input type = "text" name = "time"><br>
			<input type = "submit"  value = "저장"><br>
		</form>


</body>
</html>