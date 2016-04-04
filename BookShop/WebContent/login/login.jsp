<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
	<HEAD>
		<title>관리자모드 Login</title>
		<LINK href="../common/admin.css" type="text/css" rel="stylesheet">
		<script src = "../js/jquery-1.11.3.min.js"></script>
		<script src="../js/login.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<FORM id="default" name ="frmLogin" method="post" action="logProcess.jsp?type=in">
<table width="100%" height="600"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="979" height="336"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" background="../img/main_img.gif"><table width="383" height="315"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="70" height="215">&nbsp;</td>
            <td width="313">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
			<table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="63" height="25"><img src="../img/id.gif"></td>
                <td width="161"><input type="text" name="id" id="id" Width="130" TabIndex="1" value="admin"></td>
                <td width="89" rowspan="2"><img id="login" src="../img/login.gif"></td>
              </tr>
              <tr>
                <td height="25"><img src="../img/pw.gif"></td>
                <td><input type="text" name="pass" id="pass" Width="130" tabIndex="2" value="관리자"></td>
                </tr>
              <tr>
                <td height="25" colspan="3"></td>
                </tr>                
            </table>
			</td>
          </tr>
        </table>
        </td>
      </tr>
    </table></td>
  </tr>
</table>			
		</FORM>
	</body>
</HTML>
    