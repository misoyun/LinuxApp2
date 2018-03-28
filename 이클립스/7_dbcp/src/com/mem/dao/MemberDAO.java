package com.mem.dao;

import java.util.ArrayList;
// 추가 
import com.guestbook.util.DbManager;
import java.sql.*;
import com.mem.vo.*;

public class MemberDAO 
{
	public ArrayList<MemberVO> selectMemberList() 
	{
		Connection conn = null;
		MemberVO  vo = null;
		Statement st = null; 
		ResultSet rs = null;
		ArrayList<MemberVO> members = null;
		
		try
		{
			conn = DbManager.getConnection(); 
			
			st =  conn.createStatement();
			rs =  st.executeQuery("select * from jsp_ex_db.member");
			 members = new ArrayList<MemberVO>();
			while(rs.next())
			{
				vo =  new MemberVO();
				vo.setId( rs.getString(1) );
				vo.setPw( rs.getString(2) );
				members.add(vo);
			}
		}
		catch( SQLException e )
		{
			e.printStackTrace();
		}
		finally 
		{
			DbManager.close(conn, st, rs );
		}
		return members;
	}
}
