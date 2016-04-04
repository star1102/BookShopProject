<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<HEAD>	    
		<title>관리자모드</title>
		<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
		<LINK href="/MyBookShop/common/admin.css" type="text/css" rel="stylesheet">
			<script>
			
				function popupClose(){
					if(document.frm.adminN.checked){
																
																		//Cookie myC = new Cookie("popup","y");
																		//myC.setMaxAge(60*60*24); //쿠키의 유효기간 , 초단위
																		//response.addCookie(myC); 
						expDate  = new Date();
						expDate.setDate(expDate.getDate()+1);
						
						document.cookie="popup=y;path=/;expires="+expDate.toGMTString();
						
					}
					self.close();
				}
			</script>
	</HEAD> 
	<body leftMargin="10" topMargin="10">
        <form id="Form1" name="frm">
            <table width="100%">
                <tr>
                    <td align="center"><input type="checkbox" name="adminN" value="y">오늘하루동안 열지 않음</td>
                </tr>
                <tr>
                    <td align="center"><input type="button" value="닫기" onclick="popupClose()"></td>
                </tr>
            </table>            
        </form>
    </body>
</html>