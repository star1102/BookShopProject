package com.mybook.faq;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.NamingException;
import com.mybook.db.DBManager;
import com.mybook.util.*; 

public class FaqDAO {
	private FaqDAO(){}
	
	static private FaqDAO instance = new FaqDAO();
	
	public static FaqDAO getInstance(){
		return instance;
	}
	
	/**
	 * admin 테이블에 관리자 정보를 insert
	 * @param vo insert할 관리자 정보를 가지고 있는 AdminVO 객체
	 * @return insert한 행(레코드, row)의 갯수
	 */
	public int insertFaq(FaqVO fvo){
		int result=0;
		String sql = "insert into faq(no,title,content,writer) values (faq_serial_no.nextval,?,?,?)";
		Connection con = null;
		PreparedStatement ps =null;
		try{
			con = DBManager.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, Utilities.toUTF8(fvo.getTitle()));
			ps.setString(2, Utilities.toUTF8(fvo.getContent()));
			ps.setString(3, Utilities.toUTF8(fvo.getWriter()));
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
	
	
	public ArrayList<FaqVO> selectFaq(){
		ArrayList<FaqVO> list = null;
		String sql = "SELECT * FROM FAQ";
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
				FaqVO vo = new FaqVO();
				
				vo.setNo(rs.getString(1));
				vo.setTitle(rs.getString(2));
				vo.setContent(rs.getString(3));
				vo.setWriter(rs.getString(4));
				vo.setYmd(rs.getString(5));
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
