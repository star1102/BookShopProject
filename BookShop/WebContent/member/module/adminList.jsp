<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mybook.mem.*,java.util.ArrayList"%>
<%
	AdminDAO dao = AdminDAO.getInstance();
	ArrayList<AdminVO> list = dao.selectAdmins();
%>

<!--콘텐츠가 들어가는 테이블 시작(adminList.jsp) --><br>
<form>
	<table width="600" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>				
				<table width="70%" border="0" cellpadding="3" cellspacing="1" bgcolor="#cccccc">
					<tr>
						<td colspan="5" bgcolor="#ffffff"align="right" height="10">
							<a href="/MyBookShop/member/member.jsp?Mmenu=1&Smenu=1&mode=w"><img src="/MyBookShop/img/button/write.gif" border="0"></a>
						</td>
						
					</tr>		
					<tr align="center">
						<td bgcolor="#f9f9f9" width="10%">번호</td>						
						<td bgcolor="#f9f9f9" width="20%">아이디</td>
						<td bgcolor="#f9f9f9" width="20%">성명</td>
						<td bgcolor="#f9f9f9" width="25%">등급</td>
						<td bgcolor="#f9f9f9" width="25%">&nbsp;</td>
					</tr>
					<%
						for(int idx=0; idx<list.size();idx++){
							AdminVO vo=list.get(idx);
					%>
					
					<tr align="center">
						<td bgcolor="#ffffff" width="10%"><%= (idx+1) %></td>						
						<td bgcolor="#ffffff" width="20%"><%= vo.getId() %></td>
						<td bgcolor="#ffffff" width="20%"><%= vo.getName() %></td>
						<td bgcolor="#ffffff" width="25%"><%= vo.getGrade() %></td>
						<td bgcolor="#ffffff" width="25%"><a href="/MyBookShop/member/adminproc.jsp?Mmenu=1&Smenu=1&mode=d&delid=<%=vo.getId()%>">[삭제]</a></td>
					</tr>
					<% 
					}
					%>
				</table>				
			</td>
		</tr>
		</table>
</form>
<!--콘텐츠가 들어가는 테이블 끝 -->