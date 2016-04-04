<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.mybook.mem.*" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.mybook.util.*" %>
<%@ include file="/common/initParam.jspf" %>

<%

String gen 
	=Utilities.isNull(request.getParameter("gen"), "0");
String area 
	= Utilities.isNull(request.getParameter("area"), "0");
String searchType = Utilities.isNull(
		request.getParameter("searchType"), "0"
	  );
String searchKey = 
		Utilities.isNull(
	  request.getParameter("searchKey"), "");

String searParm="gen="+gen+
                "&area="+area+
                "&searchType="+searchType+
                "&searchKey=" + searchKey;

//한페이지 당 보여질 레코드의 수
final int aPagePerRecCnt  = 2;
//한 화면당 보여질 페이지 수 
final int aScreenPerPgCnt = 5;

publicMemDAO dao = publicMemDAO.getInstance();
ArrayList list = dao.selectMems(cpage, aPagePerRecCnt,
								gen, area, 
								searchType,
								searchKey);

int totalRecCnt = dao.totalRecCnt(gen, area, 
								searchType,
								searchKey);	//총레코드의 수

int totalPage = totalRecCnt/aPagePerRecCnt;
totalPage += (totalRecCnt%aPagePerRecCnt ==0?0:1); 

int cblock = cpage/aScreenPerPgCnt;
cblock += (cpage%aScreenPerPgCnt ==0?-1:0); 

int firstPage = cblock*aScreenPerPgCnt+1;
int lastPage =  cblock*aScreenPerPgCnt + aScreenPerPgCnt;
if(lastPage>totalPage) lastPage = totalPage;
%>

<!--콘텐츠가 들어가는 테이블 시작 -->
	<br>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<table width="100%" border="0" cellpadding="3" cellspacing="1">
					<tr>
						<td colspan="7" align="right">&nbsp;<a href="/MyBookShop/member/publicList_Excel.jsp"><img src="<%=IMAGEPATH%>/button/allexcel.gif" border="0"></a></td>
					</tr>
					<form action="<%=ROOTPATH_MEM%>" method="get">
						<input type="hidden" name="Mmenu" value="1">
						<input type="hidden" name="Smenu" value="2">
						<input type="hidden" name="mode" value="l">
						<input type="hidden" name="curpage" value="<%=cpage%>">
					<tr>
						<td colspan="7" align="center">
							<select name="gen">
								<option value="0">성별</option>
								<option value="m" <% if(gen.equals("m")){%> selected <%}%>>남</option>
								<option value="f" <% if(gen.equals("f")){%> selected <%}%>>여</option>
							</select>&nbsp;
							<select name="area">
								<option value="0">지역별</option>
								<%//for(int i=0;i<arrArea.length; i++){ 
									//String var = arrArea[i];
								for(String var:arrArea){ %>
									<option value="<%=var%>" <% if(area.equals(var)){%> selected <%}%>><%= var %></option>
								<%} %>
							</select>&nbsp;
							<select name="searchType"> 
								<option value="0">선택</option>
								<option value="name" <% if(searchType.equals("name")){%> selected <%}%>>이름</option>
								<option value="id"  <% if(searchType.equals("id")){%> selected <%}%>>아이디</option>
							</select>&nbsp;
							<input type="text" name="searchKey" value="<%= searchKey %>" maxlength="20" size="15">&nbsp; 
							<input type="image" src="../img/button/sear.gif">
						</td>
					</tr>	
					</form>
				</table>
				
				<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#cccccc">
					<tr align="center">
						<td bgcolor="#f9f9f9" width="10%">번호</td>						
						<td bgcolor="#f9f9f9" width="20%">아이디</td>
						<td bgcolor="#f9f9f9" width="20%">성명</td>
						<td bgcolor="#f9f9f9" width="25%">생년월일</td>
						<td bgcolor="#f9f9f9" width="25%">가입일</td>
					</tr>
					
					<%
					if(list != null){ //db에 data가 있을 경우에만
					for(int i=0;i<list.size();i++){
						publicMemVO vo = (publicMemVO)(list.get(i));
					%>
					<tr align="center">
						<td bgcolor="#ffffff" width="10%"><%= i+1 %></td>						
						<td bgcolor="#ffffff" width="20%"><%= vo.getMemid() %></td>
						<td bgcolor="#ffffff" width="20%"><%= vo.getMemname() %></td>
						<td bgcolor="#ffffff" width="25%"><%= vo.getMembirth() %></td>
						<td bgcolor="#ffffff" width="25%"><%= vo.getMemregist() %></td>
					</tr>
					<%}} %>
				</table>
				
					
				<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#ffffff">
					<td height="15"><!--간격조절 --></td>
					<tr>
						<td align="center" height="22"">
							<!-- 페이지 네비게이터 -->
							<%if(cpage <= 1){
								%>
							<img src="../img/button/back.gif">
							<%}else{%>
								<a href="/MyBookShop/member/member.jsp?Mmenu=1&Smenu=2&mode=l&curpage=<%=cpage-1%>&<%=searParm%>">
									<img src="../img/button/back.gif">
							</a>
								<%}%> 
								
								&nbsp;
								<%for(int i=firstPage; i<=lastPage; i++){ 
									if(cpage == i){
										out.println("<span style='color:red'><b>"+i+"</b></span>&nbsp;");
									}else{
								%>
									<a href="/MyBookShop/member/member.jsp?Mmenu=1&Smenu=2&mode=l&curpage=<%=i%>&<%=searParm%>"><%= i %></a>&nbsp;
								<%
									} 
								}
							if(cpage >= totalPage){
							%>
								<img src="../img/button/next.gif">
							<%}else{%>
								<a href="/MyBookShop/member/member.jsp?Mmenu=1&Smenu=2&mode=l&curpage=<%=cpage+1%>&<%=searParm%>">
									<img src="../img/button/next.gif">
								</a>
							<%}%>
							<!-- 페이지 네비게이터 -->
						</td>
					</tr>
				</table>
			</td>
		</tr>		
	</table>
<!--콘텐츠가 들어가는 테이블 끝 -->