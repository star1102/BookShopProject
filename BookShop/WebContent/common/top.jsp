<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.mybook.util.Utilities" %>
<%@ include file="/common/initParam.jspf" %>
<table id="tblTopLogo" height="40" cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr height="20">
		<td align="left" width="670" rowSpan="2" valign="middle"><IMG src="/MyBookShop/img/logo/admin_logo.gif"></td>
		<td align="left">
			<table id="tblHeaderLink" cellSpacing="0" cellPadding="0" width="200" border="0">
				<tr>
					<td height="5">&nbsp;</td>
				</tr>
				<tr>
					<td align="right" width="70"><%= id %><a href="/MyBookShop/login/logProcess.jsp?type=out"><img src="/MyBookShop/img/logout.gif" width="59" height="19" border="0"></a></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>
<table id="tblTopMenu" cellSpacing="0" cellPadding="0" width="100%" border="0" background="/MyBookShop/img/t_m_bg.gif"
	height="36">
	<tr height="36">
		<td align="center" width="165"><A id="A1" href="#" runat="server"><b>관리자 | Administrator</b></A></td>
		<td width="15"></td>
		<td valign="middle">
				<table id="tblTopMenuView_Site" cellSpacing="0" cellPadding="0" width="600" border="0">
					<tr>
<td vAlign="middle" align="center" width="124"><a class="topmenu" href="/MyBookShop/member/member.jsp?Mmenu=1">회원관리</a></td>
<td align="center" width="124"><a class="topmenu" href="/MyBookShop/counsel/counsel.jsp?Mmenu=2">상담관리</a></td>
<td align="center" width="124"><a class="topmenu" href="/MyBookShop/product/product.jsp?Mmenu=3">상품관리</a></td>
<td align="center" width="124"><a class="topmenu" href="/MyBookShop/poll/poll.jsp?Mmenu=4">설문관리</a></td>
<td align="center" width="124"><a class="topmenu" href="/MyBookShop/stati/stati.jsp?Mmenu=5">접속통계</a></td>
					</tr>
				</table>
		</td>
	</tr>
</table>