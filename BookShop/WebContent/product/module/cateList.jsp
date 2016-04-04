<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mybook.mem.*,java.util.ArrayList"%>
<%

%>

<!--콘텐츠가 들어가는 테이블 시작(adminList.jsp) --><br>
<form>
	<table width="600" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>				
				<table width="70%" border="0" cellpadding="3" cellspacing="1" bgcolor="#cccccc">
					<tr>
						<td colspan="5" bgcolor="#ffffff"align="right" height="10">
							<a href="/MyBookShop/product/product.jsp?Mmenu=3&Smenu=1&mode=w"><img src="/MyBookShop/img/button/write.gif" border="0"></a>
						</td>
						
					</tr>		
					<tr align="center">
						<td bgcolor="#f9f9f9" width="35%">카테고리 코드</td>						
						<td bgcolor="#f9f9f9" width="35%">카테고리명</td>
						<td bgcolor="#f9f9f9" width="30%">&nbsp;</td>
					</tr>
				
					<tr align="center">
						<td bgcolor="#ffffff" width="35%"></td>						
						<td bgcolor="#ffffff" width="35%"></td>
						<td bgcolor="#ffffff" width="30%"><a href="#">[삭제]</a></td>
					</tr>
					
				</table>				
			</td>
		</tr>
		</table>
</form>
<!--콘텐츠가 들어가는 테이블 끝 -->