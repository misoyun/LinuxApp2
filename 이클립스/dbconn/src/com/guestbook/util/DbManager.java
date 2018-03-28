package com.guestbook.util;

import java.sql.*;

import javax.naming.*;
import javax.sql.DataSource;

public class DbManager
{
	private static final String DB_URL = "jdbc/mysql";
	private static Connection  conn  = null;
	
	public static Connection getConnection() 
	{
		if( conn != null)
			return conn;
		
		try
		{
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup(DB_URL);
			conn = ds.getConnection();
			System.out.println("mysql 연결 성공");
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
			stmt.close(); 
			conn.close(); 
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
			rs.close(); 
			stmt.close();
			conn.close();
		}
		catch(SQLException e )
		{
			e.printStackTrace();
		}
	}
	
}













