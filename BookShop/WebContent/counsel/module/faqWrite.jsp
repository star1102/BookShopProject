<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <script type="text/javascript" src="/MyBookShop/js/faq.js"></script>
<!--콘텐츠가 들어가는 테이블 시작 -->
<form id="frmwrite" name="frmwrite">
	<table cellSpacing="0" cellPadding="0" width="600" border="0">
		<TBODY>
			<tr>
				<td align="center" height="1"></td>
			</tr>
			<tr>
				<td>
					<table cellSpacing="1" cellPadding="3" width="100%" bgColor="#cccccc" border="0">						
						<tr>
							<td align="center" width="30%" bgColor="#f0f0f0">등록자</td>
							<td colspan="3" align="left" width="70%" bgColor="#ffffff">&nbsp;<input type="text" size="15" name="writer" id="writer" ReadOnly  value="<%=(String)session.getAttribute("adminID")%>"></td>
						</tr>									
						<tr>
							<td align="center" width="30%" bgColor="#f0f0f0">제목</td>
							<td colspan="3" align="left" width="70%" bgColor="#ffffff">&nbsp;<input type="text" name="title" id="title" style="width:425;"></td>
						</tr>
						<tr>
							<td align="center" width="30%" bgColor="#f0f0f0">내용</td>
							<td colspan="3" align="left" width="70%" bgColor="#ffffff">&nbsp;<textarea rows="15" name="content" id="content" cols="70"></textarea></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center" height="10"></td>
			</tr>
			<tr>
				<td align="center" height="22">
					<a href="javascript:faqWCheck();"><img src="/MyBookShop/img/write.gif" border="0"></a>&nbsp;&nbsp;  
				
										<!-- <a href="#"><img src="/MyBookShop/img/write.gif" border="0" id="faqWrite"></a>&nbsp;&nbsp; -->
				
					<a href="/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=2&mode=l"><img src="/MyBookShop/img/list.gif" border="0"></a>
				</td>
			</tr>
		</TBODY>
	</table>
</form>
<!--콘텐츠가 들어가는 테이블 끝 -->