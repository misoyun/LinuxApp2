<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
request.setCharacterEncoding("UTF-8");
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<!-- radio는 결국 1개의 값만 선택되기 때문에  getParameter로 바로 받을 수 있다 -->
	
		
		단말기 <%= request.getParameter("phone") %> <br>
		통신사 <%= request.getParameter("telecom") %>

</body>
</html>