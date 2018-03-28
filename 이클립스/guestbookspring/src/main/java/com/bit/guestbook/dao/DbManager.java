package com.bit.guestbook.dao;

import java.sql.*;

import javax.naming.*;
import javax.sql.DataSource;

public class DbManager
{	
	
	public static Connection getConnection() 
	{
		Connection conn = null;
		
		if( conn != null)
			return conn;
		
		try
		{
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myDB");
			conn = ds.getConnection();
			
		}
		catch( SQLException | NamingException e)
		{
				e.printStackTrace();
		}
		return conn;
	}// DB명령 실행 후 정리 작업 : insert, delete, update 
	public static void close( Connection conn ,  Statement stmt ) 
	{
		try
		{
			if(stmt !=null) stmt.close(); 
			if(conn !=null) conn.close(); 
		}
		catch(SQLException e )
		{
			e.printStackTrace();
		}
		
	}// DB명령 실행 후 정리 작업 : select 
	public static void close( Connection conn ,  Statement stmt , ResultSet rs ) 
	{
		try
		{
			if(rs!=null)  rs.close();    //위에서 예외처리가 제대로 되어있지 않아서 
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		catch(SQLException e )
		{
			e.printStackTrace();
		}
	}
	
}













