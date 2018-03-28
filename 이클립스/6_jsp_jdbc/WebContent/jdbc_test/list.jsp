<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
			//String id = request.getParameter("id");
			//String pw = request.getParameter("pw");
			
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
		
			ResultSet rs = st.executeQuery("select * from member");
			
			%>
			<table border = 1>
			
			
			<%
			while(rs.next())
			{
			%>	
				<tr>
					<td><%= rs.getString("MEM_ID") %></td>
					<td><%= rs.getString("MEM_PW") %></td>
					<td><a href = "delete.jsp?id=<%=rs.getString("MEM_ID") %>"> 삭제 </a></td>
				</tr>
			<%} 
				
				rs.close();
				st.close();
				conn.close();
			%>
			</table>
	
	<a href = "index.jsp"> 추가 </a>

	
	
</body>
</html>
