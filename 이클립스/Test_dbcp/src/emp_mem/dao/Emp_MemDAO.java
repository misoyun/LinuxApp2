package emp_mem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;

import emp_mem.vo.*;




public class Emp_MemDAO {

	Scanner scan = new Scanner(System.in);
	
	
	public ArrayList<Emp_MemVO> selectMemberList()
	{
		Connection conn = null;
		Emp_MemVO vo = null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<Emp_MemVO> members = null;
		
		conn = DbManager.getConnection();
		
		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from emp_member");
			members = new ArrayList<Emp_MemVO>();
			
			while(rs.next())
			{
				vo = new Emp_MemVO();
				vo.setName(rs.getString(1));
				vo.setDept(rs.getString(2));
				members.add(vo);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, st, rs);
		}
		return members;
		
	}
	
	public void insertMember() {
		
		Connection conn = null;
		PreparedStatement ps = null;
		conn = DbManager.getConnection();
		
		try {
			
			ps = conn.prepareStatement("insert into emp_member values(? , ?)");
			
			System.out.println("사원 이름 :");
			String na = scan.next();
			ps.setString(1, na);
			
			System.out.print("사원 부서 :");
			String de = scan.next();
			ps.setString(2, de);
			
			if(ps.executeUpdate() ==1)
			{	System.out.println("삽입 성공");
				selectMemberList();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, ps);
		}	
	}
	
	public void deleteMember()
	{
		
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		
		conn = DbManager.getConnection();
		
		try {
			st = conn.createStatement();
			
			System.out.println("삭제할 사원의 이름 입력 :");
			String na = scan.next();
			
			System.out.println("삭제할 사원의 부서 입력 :");
			String de = scan.next();
			
			
					
				if(st.executeUpdate("delete from emp_member where emp_name = '"+na+"'")==1)
				{	System.out.println("삭제 성공");
					    selectMemberList();
				}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, st);
		}
		
	}
	
	public void updateMember() {
		
		Connection conn = null;
		Emp_MemVO vo = null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<Emp_MemVO> members = null;
		PreparedStatement ps = null;
		
		conn = DbManager.getConnection();
		
		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from emp_member");			
			
			System.out.println("수정할 사원의 이름 입력 :");
			String na = scan.next();
			
			System.out.println("수정할 사원의 부서 입력 :");
			String de = scan.next();
			
			while(rs.next())
			{
				if(rs.getString(1) == na && rs.getString(2)==de)
				{	
					ps = conn.prepareStatement("update emp_member set emp_name = ?, emp_dept = ? where emp_name = "+ rs.getString(1) );
					
					System.out.println("사원 이름 입력: ");
					String na2 = scan.next();
					ps.setString(1, na2);
					
					System.out.println("부서 이름 입력");
					String de2 = scan.next();
					ps.setString(2, de2);
					
					if(ps.executeUpdate()==1)
					{	System.out.println("수정 성공");
						selectMemberList();
					}
				}				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			DbManager.close(conn, st, ps, rs);
		}
	

		
	}
	
	
	
}
