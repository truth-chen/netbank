<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>deposit</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="style/style.css" >
	<link rel="stylesheet" type="text/css" href="style/default.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/jquery.pagination.css" />
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ckform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.pagination.min.js"></script>
    <style>
    	table input{
    		height:30px!important;
    	}
    	table tr td{
    		vertical-align:middle!important;
    	}
    </style>
	<script language="javascript" >
	
	
	
	function disptime(){
	var now=new Date();
	
	var year=now.getFullYear();
	var month=now.getMonth()+1;
	var date=now.getDate();
	var hour=now.getHours();
	var minute=now.getMinutes();
	var second =now.getSeconds();
		document.getElementById("datetime").value=year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second;
		//year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second;
		setTimeout("disptime()", 1000);
	}
	
	function deposit(){
		var money=document.getElementById("trMoney").value;
		if(money.length>0){
					
			if(!(money.search(/^[\+\-]?\d+\.?\d*$/)==0))
			{
				document.getElementById("errormoney").innerHTML="含有非法字符";
				return false;
			}else
			{
				if(parseFloat(money)==0)
				{
					document.getElementById("errormoney").innerHTML="金额必须大于0";
					return false;
				}
				return confirm("确认存款吗?");
			}
				
		}else {
			alert("金额不能为空！");
			return false;
				
		}
	}
	
	
</script>
  </head>
  	
  <body onload="disptime()">
	<form  method="post" name="myform" action="${pageContext.request.contextPath}/transaction/deposit" onsubmit="return deposit()">
		<div align="center">
		<table width="400" border="0" class="table table-bordered definewidth m10">
			<tbody>
				<tr>
				<td style="width:117px;">&nbsp;存款时间：</td>
				<td><input type="text" name="log.datetime" id="datetime" style="height:30px;" readonly></td>
				</tr>
				<tr>
				<td>&nbsp;存款金额：</td>
				<td>
					<input type="text" name="log.trMoney" id="trMoney" value="${log.trMoney}">
					<span id="errormoney" style="color:red;"></span>
				</td>
				</tr>
				<tr>
				<td>&nbsp;</td>
				<td>&nbsp;<input type="Submit" value="存款" class="btn btn-primary" /> </td>
				</tr>
			</tbody>
		</table>
			<div style="color:red;"> 
	        <s:fielderror /> 
	    	</div> 
		</div> 
	</form>
  </body>
</html>
