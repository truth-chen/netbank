<%@page contentType="text/html;charset=gb2312"
	import="java.sql.*,java.util.*"%>
<html>
<head>
<title>����ҳ��</title>
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
</head>
<BODY leftmargin="20" topmargin="0" marginheight="0" marginwidth="0" style="margin: 10px 0 0 0; padding: 0;">
	<table height="100%" cellspacing=0 cellpadding=0 width=170
		background=images/menu_bg.jpg border=0>
		<tr>
			<td valign=top align=middle>
				<table cellspacing=0 cellpadding=0 width=150 border=0>
					<tr height=22>
						<td style="padding-left: 30px" background=images/menu_bt.jpg><a
							class=menuparent onclick=expand(1) href="javascript:void(0);">�����˵�</a>
						</td>
					</tr>
					<tr height=4>
						<td></td>
					</tr>
				</table>
				<table id=child0 cellspacing=0 cellpadding=0 width=150 border=0>
					<tr height=20>
						<td align=middle width=30><img height=9
							src="images/menu_icon.gif" width=9>
						</td>
						<td><a class=menuchild href="${pageContext.request.contextPath}/deposit.jsp"
							target=main>���</a>
						</td>
					</tr>
					<tr height=20>
						<td align=middle width=30><img height=9
							src="images/menu_icon.gif" width=9>
						</td>
						<td><a class=menuchild href="${pageContext.request.contextPath}/withdrawal.jsp"
							target=main>ȡ��</a>
						</td>
					</tr>
					<tr height=20>
						<td align=middle width=30><img height=9
							src="images/menu_icon.gif" width=9>
						</td>
						<td><a class=menuchild href="${pageContext.request.contextPath}/transfer.jsp"
							target=main>ת��</a>
						</td>
					</tr>
					<tr height=20>
						<td align=middle width=30><img height=9
							src="images/menu_icon.gif" width=9>
						</td>
						<td><a class=menuchild
							href="${pageContext.request.contextPath}/transaction/list?pager.curpage=1" target=main>��ѯ���׼�¼</a>
						</td>
					</tr>
					<tr height=20>
						<td align=middle width=30><img height=9
							src="images/menu_icon.gif" width=9>
						</td>
						<td><a class=menuchild href="${pageContext.request.contextPath}/information.jsp"
							target=main>�鿴��Ϣ</a>
						</td>
					</tr>
					<tr height=20>
						<td align=middle width=30><img height=9
							src="images/menu_icon.gif" width=9>
						</td>
						<td><a class=menuchild href="${pageContext.request.contextPath}/modify.jsp" target=main>�޸ĸ�����Ϣ</a>
						</td>
					</tr>
					<tr height=20>
						<td align=middle width=30><img height=9
							src="images/menu_icon.gif" width=9>
						</td>
						<td><a class=menuchild href="${pageContext.request.contextPath}/changepwd.jsp"
							target=main>�޸�����</a>
						</td>
					</tr>
					<tr height=20>
						<td align=middle width=30><img height=9
							src="images/menu_icon.gif" width=9>
						</td>
						<td><a class=menuchild onclick="logout()" target=main>ע��</a>
						</td>
					</tr>
				</table></td>
			<td width=1 bgcolor=#d1e6f7></td>
		</tr>
	</table>
	<script>
		function logout() {
			window.parent.location.href = '${pageContext.request.contextPath}/user/user_logout';
		}
	</script>