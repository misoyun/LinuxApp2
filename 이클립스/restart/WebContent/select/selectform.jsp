<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<form action="selectAction.jsp" method="post">   <!-- 액션해서 줘서 받는 것은 servlet 이 될 수도,  jsp가 될 수도 있다  -->
		
			<table>
			
				<tr>
					<td>면류</td>
					<td>
					 		<select name = "noodle">    <!-- 제한된 항목 여러 개중 하나 선택할 때 -->
					 		
					 		<option>짬뽕</option>
					 		<option selected="selected">짜장</option>
					 		<option>우동</option>
					 		
							 </select> 
					</td>
				</tr>
				<tr>
					<td>빵류</td>
					<td>
							<select name = "bread" size = "3">    <!-- size 주면 숨지않고 3개의 공간 준다 -->
					 		
					 		<option selected="selected">국진이빵</option>
					 		<option>포켓몬빵</option>
					 		<option>핑클빵</option>
					 		
					 		</select> 
					</td>
				</tr>
				<tr>
					<td>게임</td>
					<td>
						 <select name = "game" multiple = "multiple">    <!-- multiple 선택 여러 개 할 수 있게!!! -->
					 		
					 		<option selected="selected">lol</option>
					 		<option>starcraft</option>
					 		<option>bettleground</option>
					 		<option>overwatch</option>
					 		<option>디아블로</option>
					 		<option>리니지</option>
					 		<option>서든어택</option>
					 		
					 	</select> 
					
					
					</td>
				</tr>
			
			</table>
		
			
			<input type = "submit" value = "선택 완료">
			
			
		
		
		</form>




</body>
</html>