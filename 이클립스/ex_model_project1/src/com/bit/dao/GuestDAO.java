package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.vo.GuestVO;

public class GuestDAO {

	private static int cnt= 2;
	
	public void insert (GuestVO vo)
	{
		Connection conn = DbManager.getConnection();  //연결 받아옴
		PreparedStatement ps = null;
		
		
		
		try
		{
		ps = conn.prepareStatement("insert into jsp_ex_db.guest values(?, ?, ?, ?, curdate())");
		
		ps.setInt(1, cnt++);
		ps.setString(2, vo.getName());
		ps.setString(3, vo.getPassword());
		ps.setString(4, vo.getContent());
			//현재시간
		
		ps.executeUpdate();
	
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, ps);
			
		}

	}

	public void delete(GuestVO vo)
	{
		Connection conn = DbManager.getConnection();  //연결 받아옴
		Statement st = null;
		try 
		{
			st = conn.createStatement();
			String sql = "delete from jsp_ex_db.guest where no = "+ vo.getNo();
			
			st.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, st);
		}
	}
	
	public ArrayList<GuestVO> getList()
	{
		Connection conn = DbManager.getConnection();  //연결 받아옴
		Statement st = null;
		ArrayList<GuestVO> list = null;
		ResultSet rs = null;
		try
		{
		
		st = conn.createStatement();
		list = new ArrayList<>();
		rs = st.executeQuery("select * from jsp_ex_db.guest");
		
			while(rs.next())
			{
				GuestVO vo = new GuestVO();
				
				vo.setNo(rs.getInt(1));
				vo.setName(rs.getString(2));
				vo.setContent(rs.getString(3));
				vo.setPassword(rs.getString(4));
				vo.setRegDate(rs.getDate(5));
				
				list.add(vo);
				
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, st, rs );
			
		}
		
		return list;
	}
	
	
}
