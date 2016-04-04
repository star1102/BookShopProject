<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form name="fileForm" method="post" enctype="multipart/form-data" action="">
<table cellSpacing="0" cellPadding="0" width="600" border="0">
		<tbody>
			<tr>
				<td align="center" height="1"></td>
			</tr>
			<tr>
				<td>
					<table cellSpacing="1" cellPadding="3" width="100%" bgColor="#cccccc" border="0">		<tr>
							<td align="center" width="25%" bgColor="#f0f0f0">도서명</td>
							<td colspan="3" align="left" width="75%" bgColor="#ffffff">&nbsp;<input type="text"style="width:425;"></td>
						</tr>				
						<tr>
							<td align="center" width="25%" bgColor="#f0f0f0">가격</td>
							<td align="left" width="30%" bgColor="#ffffff">&nbsp;<input type="text"style="width:100;"></td>
							<td align="center" width="25%" bgColor="#f0f0f0">카테고리</td>
							<td align="left" width="45%" bgColor="#ffffff">&nbsp;<select name="selcate"><option value="000">선택<option value="001">수필</select> </td>
						</tr>						
						<tr>
							<td align="center" width="25%" bgColor="#f0f0f0">도서내용</td>
							<td colspan="3" align="left" width="75%" bgColor="#ffffff">&nbsp;<textarea cols="70" rows="15"></textarea></td>
						</tr>
						<tr>
							<td align="center" width="25%" bgColor="#f0f0f0">도서이미지</td>
							<td colspan="3" align="left" width="75%" bgColor="#ffffff">&nbsp;<input type="file" name="uploadFile"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center" height="10"></td>
			</tr>
			<tr>
				<td align="center" height="22"><a href="#"><img src="../img/button/write.gif" border="0"></a>&nbsp;&nbsp;
				<a href="/MyBookShop/product/product.jsp?Mmenu=3&Smenu=2&mode=l"><img src="../img/button/list.gif" border="0"></a>
				</td>
			</tr>
		</tbody>
	</table>
</form>