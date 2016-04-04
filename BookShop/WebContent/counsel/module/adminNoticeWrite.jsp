<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							<td align="center" width="25%" bgColor="#f0f0f0">등록자 ID</td>
							<td align="left" width="30%" bgColor="#ffffff">&nbsp;<input type="text" size="15"></td>
							<td align="center" width="25%" bgColor="#f0f0f0">등록자 Email</td>
							<td align="left" width="45%" bgColor="#ffffff">&nbsp;<input type="text" style="width:150;"></td>
						</tr>									<tr>
							<td align="center" width="25%" bgColor="#f0f0f0">비밀번호</td>
							<td colspan="3" align="left" width="75%" bgColor="#ffffff">&nbsp;<input type="text"style="width:425;"></td>
						</tr>									
						<tr>
							<td align="center" width="25%" bgColor="#f0f0f0">제목</td>
							<td colspan="3" align="left" width="75%" bgColor="#ffffff">&nbsp;<input type="text"style="width:425;"></td>
						</tr>
						<tr>
							<td align="center" width="25%" bgColor="#f0f0f0">내용</td>
							<td colspan="3" align="left" width="75%" bgColor="#ffffff">&nbsp;<textarea rows="15" cols="70"></textarea></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center" height="10"></td>
			</tr>
			<tr>
				<td align="center" height="22"><a href="#"><img src="../img/button/write.gif" border="0"></a>&nbsp;&nbsp;
				<a href="/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=3&mode=l"><img src="../img/button/list.gif" border="0"></a>
				</td>
			</tr>
		</TBODY>
	</table>
</form>
<!--콘텐츠가 들어가는 테이블 끝 -->