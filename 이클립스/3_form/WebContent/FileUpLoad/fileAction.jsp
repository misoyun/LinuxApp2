<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 파일 저장 경로 설정  
		String savePath =  "D:\\workplace\\mvc_board\\WebContent\\FileUpLoad\\upload";
	
	
		//application.getRealPath("/upload");
		//out.println("저장 경로 :" + savePath );
		int sizeLim = 5 * 1024 * 1024;  // 최대 크기 !! 	
			
		MultipartRequest mr = new MultipartRequest( request,  // request 객체 
													savePath, // 저장 경로 
													sizeLim,  // 최대 크기 
													"utf-8",  // 인코딩 방식 
													new DefaultFileRenamePolicy()
													);
		
		
		File  file = mr.getFile("file");
		
		String fileName = file.getName();	//파일 이름
		  long fileSize = file.length();	//파일 크기 
		
		if( fileName != null)  
		{
			out.println( "파일이름 : " + fileName ); 
			out.println( "파일크기 : " + fileSize  ); 
		}
		String imgPath = "upload/"+ fileName;  
	%>
		<img  src="<%=imgPath%>">
</body>
</html>












