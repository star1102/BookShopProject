<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mybook.mem.*"%>
<%@ include file="/common/initParam.jspf" %>

<%
request.setCharacterEncoding("utf-8");
	if(mode.equals("w")){
	

%>
	<jsp:useBean id="inputVo" class="com.mybook.mem.AdminVO">
		<jsp:setProperty name="inputVo" property="*"/>
	</jsp:useBean>
	
<%
	AdminDAO dao = AdminDAO.getInstance();
	int row = dao.insertAdmin(inputVo);
	out.println(row);

	//dao.insertAdmin(inputVo);
	//response.sendRedirect("/MyBookShop/member/member.jsp?Mmenu=1&Smenu=1&mode=l");

	}else if(mode.equals("d")){
	String did = request.getParameter("delid");
	AdminDAO dao = AdminDAO.getInstance();
	int row = dao.deleteAdmin(did);
%>

	<script>
		alert("<%= row %>개의 data 삭제 완료");
		location.href="/MyBookShop/member/member.jsp?Mmenu=1&Smenu=1&mode=l";
	</script>
<%
	}
%>