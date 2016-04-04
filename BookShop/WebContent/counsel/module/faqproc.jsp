<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mybook.faq.*" %>
<%@ include file="/common/initParam.jspf" %>

<%
request.setCharacterEncoding("utf-8");
if(mode.equals("w")){
	

%>
	<jsp:useBean id="FaqVo" class="com.mybook.faq.FaqVO">
		<jsp:setProperty name="FaqVo" property="*"/>
	</jsp:useBean>
	
<%
	FaqDAO dao = FaqDAO.getInstance();
	int row = dao.insertFaq(FaqVo);
	out.println(row);
	// FaqDAO dao1 = FaqDAO.getInstance();
	// dao1.insertFaq(FaqVo);
	// response.sendRedirect("/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=2&mode=l"); 


%>
	<script>
		alert("<%= row %>개의 data 등록 완료");
		location.href="/MyBookShop/counsel/counsel.jsp?Mmenu=2&Smenu=2&mode=l";
	</script>

<%
}
%>