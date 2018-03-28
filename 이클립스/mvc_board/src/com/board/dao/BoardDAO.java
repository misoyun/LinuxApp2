package com.board.dao;

import java.sql.*;
import java.util.ArrayList;
import com.board.dto.BoardVO;

// 싱글톤 DAO 
public class BoardDAO
{
	private BoardDAO() {} 

	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance()
	{
		return instance;
	}
	
	public int updateBoard( BoardVO vo ) 
	{
		String sql1 = 
		"update board set name= ? , email= ? , pass = ?, title= ? , content = ?,  where no = " + vo.getNo();
		String sql2 = 
		"update board set name= ? , email= ? , pass = ?, title= ? , content = ?, readcount = ?  where no = " + vo.getNo();	
		Connection conn = null;
		PreparedStatement ps = null; 
		int count = 0; 
		try
		{
			if(vo.getReadcount() > 0 )
			{
			conn = DbManager.getConnection();
			
			ps = conn.prepareStatement( sql2 ); 
			ps.setString( 1, vo.getName()   ); 
			ps.setString( 2, vo.getEmail()  ); 
			ps.setString( 3, vo.getPass()   ); 
			ps.setString( 4, vo.getTitle()  );
			ps.setString( 5, vo.getContent());
			ps.setInt(6, vo.getReadcount());
			
			count = ps.executeUpdate();
			}
			else
			{
			conn = DbManager.getConnection();
				
			ps = conn.prepareStatement( sql1 ); 
			ps.setString( 1, vo.getName()   ); 
			ps.setString( 2, vo.getEmail()  ); 
			ps.setString( 3, vo.getPass()   ); 
			ps.setString( 4, vo.getTitle()  );
			ps.setString( 5, vo.getContent());
			
				
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
	
	
	
	public int deleteBoard( int no, String pass) 
	{
		String sql = "delete from board where no = ? ";
		
		Connection conn = null;
		PreparedStatement ps = null; 
		int count = 0; 
		try
		{
			conn = DbManager.getConnection();
			
			ps = conn.prepareStatement( sql ); 
			ps.setInt( 1,  no  ); 
			
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
	
	public int insertBoard( BoardVO vo ) 
	{
		String sql ="insert into board values( SEQ_BOARD.nextval , ? , ? , ? , ?, ? , 1, sysdate )";
		
		Connection conn = null;
		PreparedStatement ps = null; 
		int count = 0; 
		try
		{
			conn = DbManager.getConnection();
			
			ps = conn.prepareStatement( sql ); 
			ps.setString( 1, vo.getName()   ); 
			ps.setString( 2, vo.getEmail()  ); 
			ps.setString( 3, vo.getPass()   ); 
			ps.setString( 4, vo.getTitle()  );
			ps.setString( 5, vo.getContent());
			
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
	
	
	public BoardVO getBoardView(int no )
	{
		String sql = "select * from board where no = " + no ;
		
		Connection conn = null;
		Statement  st = null; 
		ResultSet   rs = null;
		BoardVO vo =  new BoardVO(); 
		try
		{
			conn = DbManager.getConnection(); 
			st = conn.createStatement(); 

			rs = st.executeQuery(sql);
			if(rs.next())
			{	
				vo.setNo( 	     rs.getInt( "no" ));
				vo.setName(      rs.getString("name"));
				vo.setEmail(     rs.getString("email")); 
				vo.setPass(      rs.getString("pass")); 
				vo.setTitle(     rs.getString("title"));
				vo.setContent(   rs.getString("content")); 
				vo.setReadcount( rs.getInt("readcount")); 
				vo.setWritedate( rs.getTimestamp("writedate")); 
				
				updateBoard(vo);
			}	
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally {
			DbManager.close(conn, st, rs);
		}
		return vo;
		
	}
	
	public ArrayList<BoardVO> getAllBoardList(String opt) 
	{
		String sql1 = "select * from board order by writedate desc";
		String sql2 = "select * from board order by readcount desc";
		
		ArrayList<BoardVO> list =  new ArrayList<>();
		Connection conn = null;
		Statement  st = null; 
		ResultSet   rs = null;
		
		try
		{
			conn = DbManager.getConnection(); 
			st = conn.createStatement(); 
			
			
			if(opt.equals("최신순"))
			rs = st.executeQuery(sql1);
				while(rs.next())
				{	
					BoardVO vo =  new BoardVO(); 
					vo.setNo( 	    rs.getInt( "no" ));
					vo.setName(     rs.getString("name"));
					vo.setEmail(    rs.getString("email")); 
					vo.setPass(     rs.getString("pass")); 
					vo.setTitle(    rs.getString("title"));
					vo.setContent(  rs.getString("content")); 
					vo.setReadcount( rs.getInt("readcount")); 
					vo.setWritedate( rs.getTimestamp("writedate"));
					list.add( vo ); 
				}
			else if
			{
				rs = st.executeQuery(sql2);
				while(rs.next())
				{	
					BoardVO vo =  new BoardVO(); 
					vo.setNo( 	    rs.getInt( "no" ));
					vo.setName(     rs.getString("name"));
					vo.setEmail(    rs.getString("email")); 
					vo.setPass(     rs.getString("pass")); 
					vo.setTitle(    rs.getString("title"));
					vo.setContent(  rs.getString("content")); 
					vo.setReadcount( rs.getInt("readcount")); 
					vo.setWritedate( rs.getTimestamp("writedate"));
					list.add( vo ); 
				}	
			}
			
			
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally {
			DbManager.close(conn, st, rs);
		}
		return list;
	}
	
		
	public ArrayList<BoardVO> getAllBoardListOBReadCount() 
	{
		
		String sql = "select * from board order by readcount desc";
		ArrayList<BoardVO> list =  new ArrayList<>();
		Connection conn = null;
		Statement  st = null; 
		ResultSet   rs = null;
		
		try
		{
			conn = DbManager.getConnection(); 
			st = conn.createStatement(); 
			
			rs = st.executeQuery(sql);
			while(rs.next())
			{	
				BoardVO vo =  new BoardVO(); 
				vo.setNo( 	    rs.getInt( "no" ));
				vo.setName(     rs.getString("name"));
				vo.setEmail(    rs.getString("email")); 
				vo.setPass(     rs.getString("pass")); 
				vo.setTitle(    rs.getString("title"));
				vo.setContent(  rs.getString("content")); 
				vo.setReadcount( rs.getInt("readcount")); 
				vo.setWritedate( rs.getTimestamp("writedate"));
				list.add( vo ); 
			}	
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally {
			DbManager.close(conn, st, rs);
		}
		return list;
	}
	
	public ArrayList<BoardVO> getAllBoardListOBWriteDate() 
	{
		
		String sql = "select * from board order by writedate desc";
		ArrayList<BoardVO> list =  new ArrayList<>();
		Connection conn = null;
		Statement  st = null; 
		ResultSet   rs = null;
		
		try
		{
			conn = DbManager.getConnection(); 
			st = conn.createStatement(); 
			
			rs = st.executeQuery(sql);
			while(rs.next())
			{	
				BoardVO vo =  new BoardVO(); 
				vo.setNo( 	    rs.getInt( "no" ));
				vo.setName(     rs.getString("name"));
				vo.setEmail(    rs.getString("email")); 
				vo.setPass(     rs.getString("pass")); 
				vo.setTitle(    rs.getString("title"));
				vo.setContent(  rs.getString("content")); 
				vo.setReadcount( rs.getInt("readcount")); 
				vo.setWritedate( rs.getTimestamp("writedate"));
				list.add( vo ); 
			}	
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally {
			DbManager.close(conn, st, rs);
		}
		return list;
	}
	
}













