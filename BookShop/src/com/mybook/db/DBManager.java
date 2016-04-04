package com.mybook.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public final class DBManager {
	private DBManager(){}
	
	/**
	 * DBCP 커넥션 풀을 이용해서 Oracle DB에 연결되는
	 * <b>Connection</b>을 얻는 메소드<br>
	 * @return 정상적인 연결의 경우에는 연결된 Connection object<br>
	 *         연결이 안되면 null 값
	 */
	public static Connection getConnection() throws SQLException, NamingException{
		Connection conn = null;
		
			Context initCtx = new InitialContext();
			Context envContext = 
					(Context)initCtx.lookup("java:comp/env");
			DataSource ds 
			= (DataSource)envContext.lookup("jdbc/jsptest");
			conn = ds.getConnection();
		
		return conn;
	}
	
	/**
	 * Connection을 이용해서 SQL 구문을 수행시킬 수 있는 Statement 객체를 반환
	 * @param c DB에 연결되어 있는 Connection
	 * @param s 실행시킬 sql문의 문자열
	 * @return 생성된 PreparedStatement
	 */
	public static PreparedStatement getStatement(Connection c, String s){
		PreparedStatement pstmt = null;
		try{
			pstmt = c.prepareStatement(s);
		}catch(SQLException sqle){
			sqle.printStackTrace();
		}
		return pstmt;
	}
	
	/**
	 * 열려있는 Connection close
	 * @param c 닫을 Connection 객체
	 */
	public static void close(Connection c){
		if(c != null){
			try{
				c.close();
			}catch(SQLException sqle){
				sqle.printStackTrace();
			}
		}			
	}
	
	/**
	 * 열려있는 Connection, PreparedStatement close
	 * @param c 닫을 Connection 객체
	 * @param p 닫을 PreparedStatement 객체
	 */
	public static void close(Connection c, PreparedStatement p){
		if(p != null){
			try{
				p.close();
			}catch(SQLException sqle1){
				sqle1.printStackTrace();
			}
		}
		if(c != null){
			try{
				c.close();
			}catch(SQLException sqle2){
				sqle2.printStackTrace();
			}
		}
	}
	
	/**
	 * 열려있는 Connection, PreparedStatement, ResultSet close
	 * @param c 닫을 Connection 객체
	 * @param p 닫을 PreparedStatement 객체
	 * @param r 닫을 ResultSet 객체
	 */
	public static void close(Connection c, 
								PreparedStatement p,
								ResultSet r){
		if(r != null){
			try{
				r.close();
			}catch(SQLException sqle){
				sqle.printStackTrace();
			}
		}		
		if(p != null){
			try{
				p.close();
			}catch(SQLException sqle1){
				sqle1.printStackTrace();
			}
		}
		if(c != null){
			try{
				c.close();
			}catch(SQLException sqle2){
				sqle2.printStackTrace();
			}
		}
	}
}
