<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mybook.faq.*,java.util.*"%>
<%
	FaqDAO dao = FaqDAO.getInstance();
	ArrayList<FaqVO> list = dao.selectFaq();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" 
	  name="viewport" 
      content="width=device-width,initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
<!--콘텐츠가 들어가는 테이블 시작 -->
	<br>
	<table width="600" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<table width="100%" border="0" cellpadding="3" cellspacing="1">					
					<form>
					<tr>
						<td colspan="7" align="right">							
							<select>
								<option>선택</option>
								<option>이름</option>
								<option>아이디</option>
							</select>&nbsp;
							<input type="text" maxlength="20" size="15">&nbsp; <a href="#" class="text"><img src="../img/button/sear.gif" border="0"></a>
						</td>
					</tr>	
					</form>
				</table>
				<%if(list != null){ //db에 data가 있을 경우에만%>
				<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#cccccc">
					<tr align="center">
						<td bgcolor="#f9f9f9" width="10%">번호</td>						
						<td bgcolor="#f9f9f9" width="50%">제목</td>
						<td bgcolor="#f9f9f9" width="20%">글쓴이</td>
						<td bgcolor="#f9f9f9" width="20%">글쓴날짜</td>
					</tr>	
					<%
							for(int idx=0; idx<list.size();idx++){
							FaqVO vo=list.get(idx);
					%>
					<tr align="center">
						<td bgcolor="#ffffff" width="10%"><%=idx+1 %></td>						
						<td bgcolor="#ffffff" width="50%" align="left"><a href="#"><%=vo.getTitle() %></a></td>
						<td bgcolor="#ffffff" width="20%"><%=vo.getWriter() %></td>
						<td bgcolor="#ffffff" width="20%"><%=vo.getYmd() %></td>
					</tr>
					<% 
					}
					%>
				</table>
				<%}else{ %>
				<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#cccccc">
					<tr align="center">
						<td bgcolor="#f9f9f9" width="10%">번호</td>						
						<td bgcolor="#f9f9f9" width="50%">제목</td>
						<td bgcolor="#f9f9f9" width="20%">글쓴이</td>
						<td bgcolor="#f9f9f9" width="20%">글쓴날짜</td>
					</tr>
					</table>
					<%} %>
					
				<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#ffffff">
					<td height="15"><!--간격조절 --></td>
					<tr>
						<td align="right" height="22"">
							<a href="/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=2&mode=w"><img src="../img/button/write.gif" border="0"></a>
						</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#ffffff">
					<td height="15"><!--간격조절 --></td>
					<tr>
						<td align="center" height="22"">
							<!-- 페이지 네비게이터 -->
							<img src="../img/button/back.gif">&nbsp;1&nbsp;2&nbsp;3&nbsp;4&nbsp;<img src="../img/button/next.gif">
							<!-- 페이지 네비게이터 -->
						</td>
					</tr>
				</table>
			</td>
		</tr>		
	</table>
<!--콘텐츠가 들어가는 테이블 끝 -->
</body>
</html>