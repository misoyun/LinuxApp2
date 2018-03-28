<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		1. 출력 <% out.println("1.-----print-----"); %> <br>  <!-- 1번 4번 6번은 리턴이 없어서 그냥 % 만 했음 -->
		2. 크기 <%= out.getBufferSize() %><br>
		3. 상태 <%= out.getRemaining() %><br>
		4. 청소 <% out.flush(); %><br>
		5. 상태 <%= out.getRemaining() %><br>
		6. 닫기 <% out.close(); %><br>
		7. 상태 <%= out.getRemaining() %><br>


</body>
</html>