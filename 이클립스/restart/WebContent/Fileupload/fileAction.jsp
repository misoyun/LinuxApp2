<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
		// 파일이 저장될 경로 설정
		
			String savePath = "D:\\workplace\\restart\\WebContent\\Fileupload\\upload";
			// out.println("저장경로"+ savePath);
			
			int sizeLim = 5 * 1024 * 1024;  //최대크기!
			
			MultipartRequest mr = new MultipartRequest( request,   //request 객체
														savePath,  //저장경로
														sizeLim,   //최대크기
														"utf-8",   //인코딩방식
														new DefaultFileRenamePolicy()
														);
		
			File file = mr.getFile("file");
			
			String fileName= file.getName();   //파일 이름
			long fileSize= file.length();	 // 피일크기
			
			if(fileName != null)
			{
			out.println("파일 이름 :" + fileName);
			out.println("파일 크기 :" + fileSize);
			}
			
			String imgPath = "upload" + fileName;
		%>

			<img src= "<%= imgPath %>">BBJjkWy.jpg   ????????


</body>
</html>