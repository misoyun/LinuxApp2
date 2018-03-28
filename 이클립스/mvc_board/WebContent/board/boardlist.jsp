<%@ taglib uri="http://java.sun.com/jsp/jstl/core"      prefix="c"   %> <!-- 기본 기능  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"       prefix="fmt" %> <!-- 포맷  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"  %> <!-- 함수 기능  -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
</head>
<body>

		<div class="container">
			<h1 class="text-center"> 게시판</h1>   <br>
			
			<p1 style="margin-left:73%"><%= session.getAttribute("memberid") %>님 반갑습니다.&nbsp; &nbsp; <input type= "button" name="logout" class="btn btn-primary" value="로그아웃" onclick="location.href='BoardServlet?command=board_logout'"></h5>
		
			
			<table class = "table table-hover" >
				<tr> 
					<th>번호</th>
					<th><a href= "BoardServlet?command=order_title">제목</a></th>
					<th>작성자</th>
					<th><a href= "BoardServlet?command=order_writedate">작성일</a></th>
					<th><a href= "BoardServlet?command=order_readcount">조회</a></th>
				</tr>
				<c:forEach var = "vo" items="${boardlist}" >
					<tr>
						<td>${ vo.no 		}</td>
						<td> <a href="BoardServlet?command=board_view&no=${vo.no}" > ${ vo.title } </a> </td>
						<td>${ vo.name 		}</td>
						<td>${ vo.writedate }</td>
						<td>${ vo.readcount }</td>
					</tr>
				</c:forEach>
				
			</table>
		
			<div class="text-center">
				
			<form action="BoardServlet"  method="post" >
			<input type="hidden" name = "command" value = "list_option">
			<select name = "option"  >
				<option selected >최신순</option>
				<option >조회순</option>
			</select>
			<input type="submit" value ="정렬">
		</form>	
						<br>
				<table class="pagination">	
					<tr>
						 <a href="/BoardServlet?command=board_login_form">1</a> 
						 <a href="#">2</a>
						 <a href="#">3</a>
						 <a href="#">4</a>
						 <a href="#">5</a>
					</tr>
				</table>
			</div>
			
			<hr>
			<input type="button" value ="글쓰기" class="btn btn-primary" style="margin-left:90%" onclick = "location.href='BoardServlet?command=board_write_form'" >
			
			

		
		</div>
		
		
		

</body>
</html>








