<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/MyBookShop/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/MyBookShop/js/member.js"></script>
<form name="frmAdminW" id="frmAdminW">
	<table width="600" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>				
				<table width="50%" border="0" cellpadding="3" cellspacing="1" bgcolor="#cccccc">
				<tr align="center">
						<td bgcolor="#f9f9f9" colspan="2">카테고리 등록</td>						
					</tr>
					<tr align="center">
						<td bgcolor="#f9f9f9" width="20%">카테고리 코드</td>						
						<td bgcolor="#ffffff" width="20%"><input type="text" size="15" name="code" id="code"></td>
					</tr>
					<tr align="center">
						<td bgcolor="#f9f9f9" width="20%">카테고리명</td>						
						<td bgcolor="#ffffff" width="20%"><input type="text" size="15" name="name" id="name"></td>
					</tr>
					
					<tr align="right">								
						<td colspan="2" bgcolor="#ffffff">	
							<a href="#"><img src="/MyBookShop/img/button/write.gif" id="adminWrite" border="0"></a>
						</td>
					</tr>
				</table>				
			</td>
		</tr>		
	</table>
</form>