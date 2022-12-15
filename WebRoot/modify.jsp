<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'modify.jsp' starting page</title>

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
	<form method="post" name="myform" action="${pageContext.request.contextPath}/info/info_modify">
		<div align="center">
			<table width="450" class="table table-bordered definewidth m10">
				<tbody>
					<tr>
						<td style="width:117px;">姓名：</td>
						<td>&nbsp;<input type="text" name="personinfo.realname"
							value="${personinfo.realname}" />
						</td>
					</tr>
					<tr>
						<td>年龄：</td>
						<td>&nbsp;<input type="text" name="personinfo.age"
							value="${personinfo.age}" />
						</td>
					</tr>
					<tr>
						<td>性别：</td>
						<td>&nbsp;<select name="personinfo.sex">
								<option value="男">男</option>
								<option value="女">女</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>家庭地址：</td>
						<td>&nbsp;<input type="text" name="personinfo.address"
							value="${personinfo.address}" />
						</td>
					</tr>
					<tr>
						<td>联系电话：</td>
						<td>&nbsp;<input type="text" name="personinfo.telephone"
							value="${personinfo.telephone}" /><font size="1"
							style="color:red;">区号(3或4位)-电话(8或9位)</font>
						</td>
					</tr>
					<tr>
						<td>证件号码：</td>
						<td>&nbsp;<input type="text" name="personinfo.cardid"
							value="${personinfo.cardid}" /><font size="1" style="color:red;">15位或18位</font>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="提交" class="btn btn-primary" />
							<br>
						</td>
					</tr>
				</tbody>
			</table>
			<div style="color:red;">
				<s:fielderror />
			</div>
		</div>
		<br>
	</form>

</body>
</html>
