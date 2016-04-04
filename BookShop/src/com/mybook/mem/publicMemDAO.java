/**
 * 일반회원 관련되서 DB 관련 작업을 할 클래스의 객체
 */
package com.mybook.mem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mybook.db.DBManager;

public class publicMemDAO {
	private publicMemDAO(){}
	
	private static publicMemDAO instance = new publicMemDAO();
	
	public static publicMemDAO getInstance(){
		return instance;
	}
	
	/**
	 * 현재 회원 테이블의 총 레코드의 수 반환
	 */
	public int totalRecCnt(){
		int result = 0;
		StringBuffer query = new StringBuffer();
		query.append("select count(memid) from member");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = DBManager.getConnection();
			pstmt =con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBManager.close(con, pstmt, rs);
		}
		return result;
	}
	
	/**
	 * 현재 회원 테이블의 총 레코드의 수 반환
	 */
	public int totalRecCnt(String gen, String area,
							String type, String key){
		int result = 0;
		StringBuffer query = new StringBuffer();
		query.append(" select count(memid) from member");
		query.append(" where 1 = 1");
		if(!gen.equals("0"))
			query.append(" and gender = '"+gen+"'");
		if(!area.equals("0"))
			query.append(" and memarea = '"+area+"'");
		if(type.equals("id"))
			query.append(" and memid = '"+key+"'");
		if(type.equals("name"))
			query.append(" and memname like '%"+key+"%'");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = DBManager.getConnection();
			pstmt =con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBManager.close(con, pstmt, rs);
		}
		return result;
	}
	
	/**
	 * 일반회원 리스트 select
	 * @param cpage 현재 페이지
	 * @param apagecnt 한 페이지당 보여질 레코드 수
	 * @param gen 검색 성별
	 * @param area 검색 지역
	 * @param type 검색 키에 사용될 타입
	 * @param key type 값에 따른 검색어
	 * @return
	 */
	public ArrayList selectMems(int cpage, int apagecnt,
								String gen, String area,
								String type, String key){
		ArrayList result = null;
		StringBuffer query = new StringBuffer();
		query.append(" select *");
		query.append(" from");
		query.append(" (select rownum rn, t1.*");
		query.append(" from");
		query.append(" (select memid, memname, membirth, memregist");
		query.append(" from");
		query.append(" member");
		query.append(" where 1 = 1");
		if(!gen.equals("0"))
			query.append(" and gender = '"+gen+"'");
		if(!area.equals("0"))
			query.append(" and memarea = '"+area+"'");
		if(type.equals("id"))
			query.append(" and memid = '"+key+"'");
		if(type.equals("name"))
			query.append(" and memname like '%"+key+"%'");
		query.append(" order by memregist desc");
		query.append(" ) t1");
		query.append(" ) t2");
		query.append(" where rn between ? and ?");
		
		Connection con = null; PreparedStatement pstmt=null;
		ResultSet rs = null;
		try{
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(query.toString());
			pstmt.setInt(1, (cpage-1)*apagecnt+1);
			pstmt.setInt(2, (cpage-1)*apagecnt + apagecnt);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new ArrayList();
				do{
					publicMemVO vo = new publicMemVO();
					vo.setMemid(rs.getString(1));
					vo.setMemname(rs.getString("memname"));
					vo.setMembirth(rs.getString("membirth"));
					vo.setMemregist(rs.getTimestamp("memregist"));
					result.add(vo);
				}while(rs.next());
			}
		}catch(Exception e){		
			e.printStackTrace();
		}finally{
			DBManager.close(con, pstmt, rs);
		}
		return result;
	}
	
	/**
	 * 일반회원 리스트 select
	 * @return
	 */
	public ArrayList selectMems(int cpage, int apagecnt){
		ArrayList result = null;
		StringBuffer query = new StringBuffer();
		query.append(" select *");
		query.append(" from");
		query.append(" (select rownum rn, t1.*");
		query.append(" from");
		query.append(" (select memid, memname, membirth, memregist");
		query.append(" from");
		query.append(" member");
		query.append(" order by memregist desc");
		query.append(" ) t1");
		query.append(" ) t2");
		query.append(" where rn between ? and ?");
		
		Connection con = null; PreparedStatement pstmt=null;
		ResultSet rs = null;
		try{
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(query.toString());
			pstmt.setInt(1, (cpage-1)*apagecnt+1);
			pstmt.setInt(2, (cpage-1)*apagecnt + apagecnt);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new ArrayList();
				do{
					publicMemVO vo = new publicMemVO();
					vo.setMemid(rs.getString(1));
					vo.setMemname(rs.getString("memname"));
					vo.setMembirth(rs.getString("membirth"));
					vo.setMemregist(rs.getTimestamp("memregist"));
					result.add(vo);
				}while(rs.next());
			}
		}catch(Exception e){		
			e.printStackTrace();
		}finally{
			DBManager.close(con, pstmt, rs);
		}
		return result;
	}
}
