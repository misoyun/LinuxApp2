package com.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.board.dao.BoardDAO;
import com.board.dao.DbManager;
import com.board.dto.BoardVO;
import com.member.dto.MemberVO;

public class MemberDAO {

	private MemberDAO() {} 

	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance()
	{
		return instance;
	}
	
	public int registerUser( MemberVO vo ) 
	{
		String sql ="insert into member values(  ?, ? )";
		
		Connection conn = null;
		PreparedStatement ps = null; 
		int count = 0; 
		try
		{
			conn = DbManager.getConnection();
			
			ps = conn.prepareStatement( sql ); 
			ps.setString( 1, vo.getId()   ); 
			ps.setString( 2, vo.getPass() ); 
			
			count = ps.executeUpdate();
			
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
	
	
	
	public boolean loginUser(MemberVO vo)
	{
		String sql = "select count(*) from member where id= ? and  pass = ?";
		
		Connection conn = null;
		PreparedStatement ps= null;
		ResultSet rs = null;
		
		try
		{
			conn = DbManager.getConnection();
			if(conn!=null) {
				System.out.println("conn!=null");
			ps = conn.prepareStatement(sql);}
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getPass());
			
			rs = ps.executeQuery();
			
			if(rs.next())
			{
				if( rs.getInt(1) == 1) 
					return true;	
			}		
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, ps, rs);
		}

		return false;
	}
	
	
	
	
	
}
