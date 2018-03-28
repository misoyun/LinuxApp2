<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="checkAction.jsp"  method="post">
			<table> 
				<tr>
					<td>핸드폰 기종</td>
					<td>통신사     </td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name = "chk"  value = "note2" checked="checked"> note2 <br>
					    <input type="checkbox" name = "chk"  value = "아이폰"> 아이폰<br>
					    <input type="checkbox" name = "chk"  value = "갤럭시">갤럭시<br>
					    <input type="checkbox" name = "chk"  value = "g6"> g6 <br>
					    <input type="checkbox" name = "chk"  value = "s7">s7<br>
					</td>
					<td>
						<input type="checkbox" name="telecom" value ="SKT" checked  > SKT   <br>
						<input type="checkbox" name="telecom" value ="KT"  			>  KT   <br>
						<input type="checkbox" name="telecom" value ="U+"       	>  U+   <br>
						<input type="checkbox" name="telecom" value ="알뜰폰"       > 알뜰폰<br>
					
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"> 
						<input type="submit" value ="확인" >
						<input type ="reset" value ="재설정">
					</td>
					
				</tr>
			</table>
		</form>
</body>
</html>







