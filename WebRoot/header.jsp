<%@page contentType="text/html;charset=gb2312"
	import="java.sql.*,java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY>
	<table cellspacing=0 cellpadding=0 width="100%"
		background="images/header_bg.jpg" border=0>
		<tr height=56>
			<td width=260>
			<img height=56 src="images/header_left.jpg" width=260>
			</td>
			<td style="font-weight: bold; color: #fff; padding-top: 20px"
				align=middle>��ӭ���� <s:property
					value="#session.personinfo.realname" /> &nbsp;&nbsp;</td>
			<td align=right width=268>
				<img height=56
				src="images/header_right.jpg" width=268>
			</td>
		</tr>
	</table>
	<table cellspacing=0 cellpadding=0 width="100%" border=0>
		<tr bgcolor=#1c5db6 height=4>
			<td></td>
		</tr>
	</table>
</BODY>
</HTML>