<%@page contentType="text/html;charset=utf-8" import="java.sql.*,java.util.*"%>
<%
	if(session.getAttribute("admin")==null)
	{ 
%>
		<jsp:forward page="/login.jsp"></jsp:forward>
<%
	}
%>
<html>
<head>
<title>网上银行系统-后台管理</title>
</head>
<FRAMESET border=0 frameSpacing=0 rows="60, *" frameBorder=0>
	  <FRAME name=header src="/netbank/header_admin.jsp" frameBorder=0 noResize scrolling=no>
	  <frameset framespacing="0" border="false" cols="180,*" frameborder="0">
		  <frame name="left"  scrolling="no" marginwidth="0" marginheight="0" src="left.jsp">
		  <frame name="right" scrolling="yes" src="${pageContext.request.contextPath}/admin/listUsers?status.id=0">
	  </frameset>
</FRAMESET>
<noframes>
</noframes> 
</html>
