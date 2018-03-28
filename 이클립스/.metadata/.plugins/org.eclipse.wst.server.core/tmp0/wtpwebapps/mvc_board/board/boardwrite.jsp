<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"63587",secure:"63592"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/mvc_board/WebContent/board/boardwrite.jsp">
	
	<form action="BoardServlet"  method="post" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/mvc_board/WebContent/board/boardwrite.jsp">
		<input type="hidden" name = "command" value ="board_write" >
		<div id="wrap" align="center">
		
		<h1>게시글 작성</h1>
		<table>
			<tr>
				<th>작성자</th>
				<td> <%=session.getAttribute("memberid") %>  </td>
				<th>이메일</th>
				<td> <input type="email" name ="email"> </td>
			</tr>
			<tr>
				<th colspan="2">비밀번호</th>
				<td> <input type="password" name="pass"> </td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"> <input type="text" name="title">  </td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"> <textarea rows="10" cols="100" name="content"></textarea> </td>
			</tr>
			<tr>
						<th>파일 : <input type="file" name = "file" enctype="multipart/form-data"></th>
		
					
					</form>
			</tr>
			<tr>
				<td colspan="3"> 
					<input type="submit" value = "작성" class="btn btn-primary btn-sm"> 
					<input type="reset" value = "초기화" class="btn btn-primary btn-sm">
					<input type="button" value ="목록" class="btn btn-primary btn-sm" onclick = "location.href='BoardServelet?command=board_list'" >
				</td>
			</tr> 
		</table>
		
	</div>
	</form>
</body>
</html>