<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.mybook.util.Utilities" %>
<%@ include file="/common/initParam.jspf" %>
<table cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr>
		<td height="20">&nbsp;</td>
	</tr>
	<tr>
		<td vAlign="top">	
<!--  서브 메뉴 시작 -->
<% if(Mmenu.equals("1")){ %>
	<table cellSpacing="0" cellPadding="0" width="100%" border="0">
	<%if(grade.equals("1")){ %>		
		<tr>
			<td align="right" height="25">
				<a class="leftmenu" href="/MyBookShop/member/member.jsp?Mmenu=1&Smenu=1">
					<img src="/MyBookShop/img/bullet_01.gif" border="0">
						관리자회원&nbsp;&nbsp;&nbsp;</a></td>
		</tr>
		
		<tr>
			<td align="right" height="25">
				<a class="leftmenu" href="/MyBookShop/member/member.jsp?Mmenu=1&Smenu=2">
					<img src="/MyBookShop/img/bullet_01.gif" border="0">
						일반회원&nbsp;&nbsp;&nbsp;</a></td>
		</tr>
	</table>
	<%}else{ %>
			
		<tr>
			<td align="right" height="25">
				<a class="leftmenu" href="/MyBookShop/member/member.jsp?Mmenu=1&Smenu=2">
					<img src="/MyBookShop/img/bullet_01.gif" border="0">
						일반회원&nbsp;&nbsp;&nbsp;</a></td>
		</tr>
	</table>
	<%} %>
<% } else if(Mmenu.equals("2")){ %>
	<table cellSpacing="0" cellPadding="0" width="100%" border="0">
		<tr>
			<td align="right" height="25">
				<a class="leftmenu" href="/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=1">
					<img src="/MyBookShop/img/bullet_01.gif" border="0">
						QNA&nbsp;&nbsp;&nbsp;</a></td>
		</tr>
		<tr>
			<td align="right" height="25">
				<a class="leftmenu" href="/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=2">
					<img src="/MyBookShop/img/bullet_01.gif" border="0">
						FAQ&nbsp;&nbsp;&nbsp;</a></td>
		</tr>
		<tr>
			<td align="right" height="25">
				<a class="leftmenu" href="/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=3">
					<img src="/MyBookShop/img/bullet_01.gif" border="0">
						관리자 공지사항&nbsp;&nbsp;&nbsp;</a></td>
		</tr>
	</table>
   <% }else if(Mmenu.equals("3")){ //상품관리 %>
	<table cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr>
		<td align="right" height="25">
		<a class="leftmenu" href="/MyBookShop/product/product.jsp?Mmenu=3&Smenu=1">
				<img src="/MyBookShop/img/bullet_01.gif" border="0">
				카테고리관리&nbsp;&nbsp;&nbsp;</a></td>
	</tr>
	<tr>
		<td align="right" height="25">
		<a class="leftmenu" href="/MyBookShop/product/product.jsp?Mmenu=3&Smenu=2">
				<img src="/MyBookShop/img/bullet_01.gif" border="0">
				도서관리&nbsp;&nbsp;&nbsp;</a></td>
	</tr>
	</table>
	<%
	}
	%>

<!--  서브 메뉴 끝 -->	
		</td>
	</tr>
</table>