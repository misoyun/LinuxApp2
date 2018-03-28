package guestbook.dao;

import java.sql.*;

import guestbook.vo.guestbookVO;

//싱클턴 패턴 --> 하나의 dao에서는 하나의  Connection 만 갖는다.
public class guestbookDAO {

	private static Connection conn = null;
	
	public guestbookDAO() {
		
	}
	public int insert(guestbookVO vo) throws SQLException
	{
		String sql = "insert into guestbook values(? , ? , ?)";
		
		PreparedStatement ps = null;
		try
		{
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getPage());
			ps.setString(3, vo.getContent());
			
				
		}
		catch( SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if(ps !=null) ps.close();
				if(conn != null) conn.close();
			}
			catch( SQLException e)
			{
				e.printStackTrace();
			}
			
			return ps.executeUpdate();
			
		}
		
	}
	
	
	private Connection getConnection() throws SQLException, ClassNotFoundException
	{
		if(conn == null)
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String connString = "jdbc:oracle:thin:@localhost:1521:XE"; 
			
			conn =  DriverManager.getConnection( connString, "scott", "tiger" );

		}
		return conn;
	}
	
	
}
