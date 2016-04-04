<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.mybook.util.Utilities" %>
<%@ include file="/common/initParam.jspf" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<title>관리자모드</title>
		<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
		<LINK href="/MyBookShop/common/admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<tr>
				<td vAlign="top" height="52">				
<!-- TOP Menu 시작 -->
<jsp:include page="/common/top.jsp"/>
<!-- TOP Menu 종료 -->
					</td>
			</tr>
			<tr>
				<td valign="top">
					<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr>
							<td vAlign="top" width="165" background="/MyBookShop/img/l_m_bg.gif">
								<!-- Left_Menu 시작 부 //-->
								<jsp:include page="/common/left.jsp"/>
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
											<jsp:include page="/common/title.jsp"/>
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
											<%
												if(Smenu.equals("1")){			//qna
														if(mode.equals("l")){
											%>
														<jsp:include page="/counsel/module/qnaList.jsp" />
											<%		
														}else if(mode.equals("w")){
											%>
														<jsp:include page="/counsel/module/qnaList.jsp" />
											<%
														}
												}else if(Smenu.equals("2")){	//faq
														if(mode.equals("l")){
											%>
														<jsp:include page="/counsel/module/faqList.jsp" />
											<%		
														}else if(mode.equals("w")){
											%>			
														<jsp:include page="/counsel/module/faqWrite.jsp" />
											<%			}
												}else if(Smenu.equals("3")){	//관리자 공지사항
														if(mode.equals("l")){							
											%>
														<jsp:include page="/counsel/module/adminNotice.jsp" />
											<%
														}else if(mode.equals("w")){
											%>
														<jsp:include page="/counsel/module/adminNoticeWrite.jsp" />
											<%			
														}
														}
											%>		
											
												
											
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
    