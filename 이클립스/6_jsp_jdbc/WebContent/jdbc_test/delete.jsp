<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
		
		String id = request.getParameter("id");
	
		//드라이버 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//연결문자열
			String ConnString = "jdbc:oracle:thin:@localhost:1521:XE"; 
			//커넥션 객체 얻기
			Connection conn = DriverManager.getConnection(ConnString, "scott","tiger");
			
			if(conn != null)
			out.println("connect!!");
			//명령객체 생성
			Statement st = conn.createStatement();
			
			//선택적으로 execute 사용
			//st.execute(sql);  //어떤 쿼리든 받음
			//st.executeQuery(sql);  //select 전용  --> Resultset 리턴
			//st.executeLargeUpdate(sql);  //update, insert : DML	--> 영향받은 행의 갯수 리턴
			
			String sql = "delete from MEMBER where MEM_ID = '"+id+"'";
			
			if(st.executeUpdate(sql)==1)
				out.println("삭제 성공");
			
			st.close();
			conn.close();
		
		%>

			<jsp:forward page ="list.jsp">
				<jsp:param name = "id" value = "kjw"></jsp:param>
			 </jsp:forward> 

</body>
</html>