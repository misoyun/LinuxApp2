package com.bit.guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bit.guestbook.vo.GuestBookVO;

public class GuestBookDAO {

	public int insertGuest( GuestBookVO vo ) 
	{
		String sql ="insert into guestbook values(?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement ps = null; 
		int count = 0; 
		try
		{
			
			conn = DbManager.getConnection();
			if(ps != null)
			{
			ps = conn.prepareStatement( sql );
			
			
			ps.setInt( 1, vo.getBookNum() ); 
			ps.setString( 2, vo.getName() );
			ps.setString( 3, vo.getPw() ); 
			ps.setString( 4, vo.getContent() ); 
			ps.setString( 5, vo.getTime() ); 
			
			count = ps.executeUpdate();
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, ps);
			
		}
		return count; 
	}
	
}
