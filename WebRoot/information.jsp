<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>�˻���Ϣ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="style/style.css">
<link rel="stylesheet" type="text/css" href="style/default.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/jquery.pagination.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/ckform.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/common.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.pagination.min.js"></script>
<style>
table input {
	height: 30px !important;
}

table tr td {
	vertical-align: middle !important;
}
</style>

</head>

<body>
	<div align="center">
		<table width="450"
			class="table table-bordered definewidth m10">
			<tbody>
				<tr>
					<td style="width:117px;">�˻���</td>
					<td>&nbsp;${user.accountid}</td>
				</tr>
				<tr>
					<td>������</td>
					<td>&nbsp;${personinfo.realname}</td>
				</tr>
				<tr>
					<td>���䣺</td>
					<td>&nbsp;${personinfo.age}</td>
				</tr>
				<tr>
					<td>�Ա�</td>
					<td>&nbsp;${personinfo.sex}</td>
				</tr>
				<tr>
					<td>��ͥ��ַ��</td>
					<td>&nbsp;${personinfo.address}</td>
				</tr>
				<tr>
					<td>��ϵ�绰��</td>
					<td>&nbsp;${personinfo.telephone}</td>
				</tr>
				<tr>
					<td>֤�����룺</td>
					<td>&nbsp;${personinfo.cardid}</td>
				</tr>
				<tr>
					<td>�˻���</td>
					<td>${user.balance}</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
