<%@page import="bit.guestbook.dao.GuestbookDAO"%>
<%@page import="bit.guest.vo.GuestbookVO"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>

<%
	String id = request.getParameter("id");	
	String pass = request.getParameter("password");
	
	GuestbookVO gvo = new GuestbookVO();
	GuestbookDAO gdao = new GuestbookDAO();
	gvo.setName(id);
	gvo.setPw(pass);
	
	if(!gdao.deleteBook(gvo))
	{
%>	
	<script type="text/javascript">
		alert("비밀번호가 틀립니다.");		
	</script>	
	<jsp:forward page = "deleteform.jsp"></jsp:forward>
	
<%
	}
%>
</body>
</html>
<jsp:forward page = "index.jsp"></jsp:forward>
