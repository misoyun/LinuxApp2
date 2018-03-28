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
<form action="BoardServlet"  method="post">
		<input type="hidden" name = "command" value ="board_update" >
		<input type="hidden" name ="no" value="${board.no}">
		<div id="wrap" align="center">
		<h1>게시글 수정</h1>
		<table>
			<tr>
				<th>작성자</th>
				<td> <input type="text" name ="name"   value= "${board.name}">  </td>
				<th>이메일</th>
				<td> <input type="email" name ="email" value= "${board.email}"> </td>
			</tr>
			<tr>
				<th colspan="2">비밀번호</th>
				<td> <input type="password" name="pass"  > </td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"> <input type="text" name="title" value="${board.title}">  </td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"> <textarea rows="10" cols="100" name="content" > ${board.content} </textarea> </td>
			</tr> 
			<tr>
				<td colspan="3"> 
					<input type="submit" value = "수정" class="btn btn-primary btn-sm"> 
					<input type="reset" value = "초기화" class="btn btn-primary btn-sm">
					<input type="button" value ="목록" class="btn btn-primary btn-sm" onclick = "location.href='BoardServelet?command=board_list'" >
				</td>
			</tr> 
		</table>
		
	</div>
</form>
</body>
</html>