<%--
	* 로그인/로그아웃 처리.
	* request가 type = in : login,
	*           type = out : logout
	* since 2015.11.12
	* author imbaesy@naver.com
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import ="com.mybook.db.DBManager" %>
<% 
	request.setCharacterEncoding("utf-8");
	String type= request.getParameter("type");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pass");

	if(type.equals("in")){
		//login
		//1. db에서 사용자 아이디와 비번.
		String sql 
		= "select * from admin where admin_id = ? and admin_name = ?";
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt 
				= DBManager.getStatement(conn, sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			session.setAttribute("adminID", rs.getString(1));
			session.setAttribute("adminG", rs.getString(3));
			response.sendRedirect("/MyBookShop/index.jsp");
		}else{
%>
				<script>
					alert("아이디나 이름이 잘못되었습니다.");
					location.href="/MyBookShop/login/login.jsp";
				</script>
<%
		}
		DBManager.close(conn, pstmt, rs);
	}else if(type.equals("out")){
		//logout
		session.invalidate();
		response.sendRedirect("/MyBookShop/index.jsp");
	}
%>