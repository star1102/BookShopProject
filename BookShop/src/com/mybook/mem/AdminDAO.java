/**
 * Admin 회원 관련된 DB 연동작업을 수행할 클래스
 * 클래스의 객체가 1개만 존재할 수 있도록 디자인하는 패턴 :싱글톤
 */

package com.mybook.mem;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.NamingException;
import com.mybook.util.*;
import com.mybook.db.DBManager;

public class AdminDAO {
	private AdminDAO(){}
	
	static private AdminDAO instance = new AdminDAO();
	
	public static AdminDAO getInstance(){
		return instance; 
	}
	
	/**
	 * admin 테이블에 관리자 정보를 insert
	 * @param vo insert할 관리자 정보를 가지고 있는 AdminVO 객체
	 * @return insert한 행(레코드, row)의 갯수
	 */
	public int insertAdmin(AdminVO vo){
		int result=0;
		String sql = "INSERT INTO admin VALUES(?, ?, ?)";
		Connection con = null;
		PreparedStatement ps =null;
		try{
			con = DBManager.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getName());
			ps.setString(3, vo.getGrade());
			result = ps.executeUpdate();
		}catch(SQLException sqle){
			sqle.printStackTrace();
		}catch(NamingException ne){
			ne.printStackTrace();
		}finally{
			DBManager.close(con, ps);
		}
		return result;
	}
	
	public int updateAdmin(AdminVO vo){
		int result = 0;
		
		return result;
	}
	
	public int deleteAdmin(String delid){
		int result = 0;
		String sql = "delete from admin where admin_id = ?";
		Connection con = null;
		PreparedStatement pstmt =null;
		try{
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, delid);
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}finally{
			DBManager.close(con,pstmt);
		}
		
		return result;
	}
	
	public ArrayList<AdminVO> selectAdmins(){
		ArrayList<AdminVO> list = null;
		String sql = "select * from admin";
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement pstmt =null;
		try{
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				if(list==null) 
				list=new ArrayList();
				AdminVO vo = new AdminVO();
				vo.setId(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setGrade(rs.getString(3));
				list.add(vo);
				}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBManager.close(con,pstmt,rs);
		}
		
		return list;
	}
}
