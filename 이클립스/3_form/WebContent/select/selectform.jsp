<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="selectAction.jsp" method="post">
			<table>
				<tr>
					<td>면류</td>
					<td>
					<select name = "noodle">
						<option selected>짬뽕</option>
						<option>짜장</option>
						<option>우동</option>
					</select>    
					</td>
				</tr>
				<tr>
					<td> 빵 </td>
					<td> 
						<select name = "bbang" size = "3">
							<option>박찬호빵 </option>
							<option>국지니빵 </option>
							<option selected >핑클빵  </option>
						</select>
					</td>
				</tr>
				<tr>
					<td>게임</td>
					<td>
						<select name = "game" multiple="multiple"> 
								<option selected >LOL</option>
								<option>스타</option>
								<option>배그</option>
								<option>오버워치</option>
								<option>디아블로</option>
								<option>리니지</option>
								<option>서든어택</option>
						</select>
					</td>
				</tr>
			
			</table>
			<input type="submit" value ="선택완료" >
		</form>
</body>
</html>






