<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		function move() 
		{	
			
			var url = document.getElementById("url");
			//alert( url.value );
			location.href = url.value;
		}
	
</script>
</head>
	<input type="text" id = "url"> 
	<button onclick="move()" > 이동 </button>
	
	<%
		Random r =  new Random(); 
		int data = r.nextInt(); 
		String numberString = Integer.toString( data ); 
	%>
	<script type="text/javascript">
		location.href = "jsvalue.jsp?data=<%= numberString%>";
	</script>
	
	
	
	
	
	
	
<body>
	
</body>
</html>








