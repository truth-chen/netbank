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

<title>?˻???Ϣ</title>

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

<script type="text/javascript">
	function select() {
		var curPage = document.getElementById("curPage").value;
		location.href = "/transaction/list?pager.curPage=" + curPage;
	}
</script>
</head>

<body>
	<div align="center">
		<table width="650"
			class="table table-bordered table-hover definewidth m10">
			<thead>
				<!--???ⲿ??  -->
				<tr>
					<td colspan="5"
						style="font-size:18px;font-weight:bold; text-align:center;">???׼?¼</td>
				</tr>
				<tr style="font-weight:bold;">
					<td style="width:117px;">&nbsp;????</td>
					<td style="width:117px;">&nbsp;?Է??˻?</td>
					<td style="width:117px;">&nbsp;???׽???</td>
					<td style="width:117px;">&nbsp;????????</td>
					<td style="width:117px;">&nbsp;????????</td>
				</tr>
			</thead>
			<tbody align="center">
				<!--ѭ????ʾ??¼????  -->
				<s:iterator value="#request.logs" status="status">
					<tr>
						<td>&nbsp;<s:property value="#status.count" /></td>
						<s:if
							test="otherid==#session.user.accountid&&transactionType.name!='ȡ??'">
							<td>&nbsp;<s:property value="account.accountid" /></td>
							<td>&nbsp;<s:property value="trMoney" /></td>
						</s:if>
						<s:else>
							<td>&nbsp;<s:property value="otherid" /></td>
							<td>&nbsp;-<s:property value="trMoney" /></td>
						</s:else>
						<td><s:property value="transactionType.name" /></td>
						<td>&nbsp;<s:property value="datetime" /></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<!-- ??ҳ?????Ӳ??? -->
		<table>
			<tr>
				<td width="130"></td>
				<td width="80"><s:if test="pager.curPage>1">
						<A href='${pageContext.request.contextPath}/transaction/list?pager.curPage=1'>??ҳ</A>&nbsp;&nbsp;
				<A
							href='${pageContext.request.contextPath}/transaction/list?pager.curPage=${pager.curPage-1 }'>??һҳ</A>
					</s:if>
				</td>
				<td width="80"><s:if test="pager.curPage < pager.pageCount">
						<A
							href='${pageContext.request.contextPath}/transaction/list?pager.curPage=${pager.curPage+1}'>??һҳ</A>&nbsp;&nbsp;
				<A
							href='${pageContext.request.contextPath}/transaction/list?pager.curPage=${pager.pageCount }'>βҳ</A>
					</s:if>
				</td>
				<td>??${pager.curPage}/${pager.pageCount}ҳ&nbsp;&nbsp; ת?? <select
					onchange="select()" id="curPage" style="width:60px;">
						<s:iterator begin="1" end="pager.pageCount" status="status">
							<s:if test="#status.count==pager.curPage">
								<option value="${status.count}" selected="selected">${status.count
									}</option>
							</s:if>
							<s:else>
								<option value="${status.count }">${status.count }</option>
							</s:else>
						</s:iterator>
				</select>ҳ</td>
			</tr>
		</table>
	</div>
</body>
</html>
