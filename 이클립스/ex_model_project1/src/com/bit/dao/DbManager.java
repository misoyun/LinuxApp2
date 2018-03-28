package com.bit.dao;

import java.sql.*;

import javax.naming.*;
import javax.sql.DataSource;

public class DbManager
{
	private static final String DB_URL = "jdbc/mysql";
	
	
	public static Connection getConnection() 
	{
		Connection conn = null;
		if( conn != null)
			return conn;
		
		try
		{
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup(DB_URL);
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
			if(rs!=null)rs.close(); 
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		catch(SQLException e )
		{
			e.printStackTrace();
		}
	}
	
}













