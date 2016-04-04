<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/initParam.jspf" %>
<%
	String main_title="";
	String sub_title="";
	
	if(Mmenu.equals("1")){
		main_title = "회원관리";	
		if(Smenu.equals("1")) sub_title = "관리자회원";
		else if(Smenu.equals("2")) sub_title = "일반회원";
	}else if(Mmenu.equals("2")){
		main_title = "상담관리";
		if(Smenu.equals("1")) sub_title = "QNA";
		else if(Smenu.equals("2")) sub_title = "FAQ";
		else if(Smenu.equals("3")) sub_title = "관리자 공지사항";
	}else if(Mmenu.equals("3")){
		main_title = "상품관리";
		if(Smenu.equals("1")) sub_title = "카테고리관리";
		else if(Smenu.equals("2")) sub_title = "도서관리";
	}
%>
<span class="location">
	<img src="./img/bullet_02.gif" width="11" height="11" align="absMiddle">
</span><span class="topmenu"><%= main_title %></span>
	<span class="location"> &gt; <%= sub_title %> </span>