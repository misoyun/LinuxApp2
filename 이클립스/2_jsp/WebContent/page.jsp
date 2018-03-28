<!-- 지시자 : jsp파일의 설정이나 다른 파일 불러오기 !!
	
	%@ page :  페이지 전체에 적용되는 정보 작성 !! 
	  language : 작성언어 (java) 
	  contentType : jsp페이지가 생성하는 문서의 종류와 인코딩 방식 
	  pageEncoding : jsp페이지의 인코딩 방식 설정 !! 
	  import :  java 패키지 임포트 !! 
 --> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Random" %>

<%@ page import="java.util.HashSet" %>   
<%@ page import="java.util.Iterator"%>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
		<!--  로또 생성  -->
		<%
			HashSet hs =  new HashSet();
			Random r =  new Random();
			
			while( hs.size() < 6)
				hs.add( Math.abs( r.nextInt()%45 +1) );			
			
			Iterator i =  hs.iterator(); 
			while( i.hasNext() ) 
			{
				out.println( i.next() + "<br>");
			}
			
		%>
		
</body>
</html>














