<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("adminID");
	if(id == null || id.equals("")) 
		response.sendRedirect("/MyBookShop/login/login.jsp");
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!-- 		Cookie[] clientCookie = request.getCookies();
		if(clientCookie != null){
			out.println("클라이언트 쿠키값:<br>");
			for(int i=0;i<clientCookie.length;i++){
				Cookie tmp = clientCookie[i];
				out.println(tmp.getName());
			}
				
		}-->
			
<HTML>
	<HEAD>
		<title>관리자모드</title>
		<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
		<LINK href="/MyBookShop/common/admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body leftMargin="0" topMargin="0">

		
	<script>

	
		isFound = false;
		i = 0;
		
		while(i<document.cookie.length){
			start = i;
			end = i+5;
			if(document.cookie.substring(start, end) == "popup"){
				isFound = true;
				break;
			}
			i++;
		}
		if(!isFound){
			open("/MyBookShop/common/popup.jsp", "notice", 
					"width=250, height=500, top=150, left=550");
		}
	</script>
	
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<tr>
				<td vAlign="top" height="52">				
<!-- TOP Menu 시작 -->
<jsp:include page="/common/top.jsp" flush="false"/>
<!-- TOP Menu 종료 -->
					</td>
			</tr>
			<tr>
				<td valign="top">
					<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr>
							<td vAlign="top" width="165" background="/MyBookShop/img/l_m_bg.gif">
								<!-- Left_Menu 시작 부 //-->
								<jsp:include page="/common/left.jsp" flush="false"/>
								<!-- Left_Menu 종료 부 //--></td>
							<td width="15">&nbsp;</td>
							<td valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="15"><!--간격조절 --></td>
									</tr>
									<tr>
										<td>
											<!-- Quick_Link 시작 부 //-->
											<jsp:include page="/common/title.jsp" flush="false"/>
											<!-- Quick_Link 종료 부 //--></td>
									</tr>
									<tr>
										<td height="5"><!--간격조절 --></td>
									</tr>
									<tr>
										<td background="/MyBookShop/img/c_m_bg.gif" height="15">&nbsp;</td>
									</tr>
									<tr>
										<td height="10"><!--간격조절 --></td>
									</tr>
									<tr>
										<td height="5">
											<!--콘텐츠가 들어가는 테이블 시작 --><br>
											<font size="3">관리자 모드에 오신 것을 환영합니다.</font><br>
											<br>
											<font size="2">사용하실 메뉴를 선택하여 주십시요.</font><br>
											<!--콘텐츠가 들어가는 테이블 끝 --></td>
									</tr>
									<tr>
										<td height="15"><!--간격조절 --></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
<!-- Footer 시작 부 //-->
<%@ include file="/common/footer.jsp" %>
<!-- Footer 종료 부 //-->
	</body>
</HTML>
    