<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>网上银行系统</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css"></link>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/mycss.css" type="text/css"></link>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js"></script>
   <script>
        $(function(){
            //客户端表单校验，使用bootstrapValidator插件
            $('#frmLogin').bootstrapValidator({
                feedbackIcons:{
                    valid:'glyphicon glyphicon-ok',
                    invalid:'glyphicon glyphicon-remove',
                    validating:'glyphicon glyphicon-refresh'
                },
                fields:{
                    "account.username":{
                        validators:{
                            notEmpty:{
                                message:'用户名不能为空'
                            }
                        }
                    },
                    "admin.username":{
                        validators:{
                            notEmpty:{
                                message:'用户名不能为空'
                            }
                        }
                    },
                    "account.password": {
                        validators: {
                            notEmpty: {
                                message: '密码不能为空'
                            }
                        }
                    },
                    "admin.password": {
                        validators: {
                            notEmpty: {
                                message: '密码不能为空'
                            }
                        }
                    }
                }
            });
        });
        
        function adminlogin(){
			document.getElementById("username1").style.display="none";
			document.getElementById("password1").style.display="none";
			document.getElementById("username2").style.display="block";
			document.getElementById("password2").style.display="block";
			document.myform.action="${pageContext.request.contextPath }/admin/login"
		}
		
		function init(){
			document.getElementById("username1").style.display="block";
			document.getElementById("password1").style.display="block";
			document.getElementById("username2").style.display="none";
			document.getElementById("password2").style.display="none";
			document.myform.action="${pageContext.request.contextPath }/user/user_login";
		}
		function change(){
			var select=$('#loginType').val();
			if(select=="0")
			{
				var username2=document.getElementById("username2").value;
				var password2=document.getElementById("password2").value;
				init();
				document.getElementById("username1").value=username2;
				document.getElementById("password1").value=password2;
			}
			if(select=="1")
			{
				var username1=document.getElementById("username1").value;
				var password1=document.getElementById("password1").value;
				adminlogin();
				document.getElementById("username2").value=username1;
				document.getElementById("password2").value=password1;
			}
		}
		
    </script>    
    
  </head>
  <body onload="init()">
  	<!-- 使用自定义css样式 div-signin 完成元素居中-->
    <div class="container div-signin">
      <div class="panel panel-primary div-shadow">
      	<!-- h3标签加载自定义样式，完成文字居中和上下间距调整 -->
	    <div class="panel-heading">
	    	<h3>网上银行系统</h3>
	    </div>
	    <div class="panel-body">
	      <!-- login form start -->
	      <form action="${pageContext.request.contextPath }/user/user_login" class="form-horizontal" method="post" id="frmLogin" name="myform">
		     <div class="form-group">
		       <label class="col-sm-3 control-label">用户名：</label>
		       <div class="col-sm-9">
		         <input class="form-control" type="text" placeholder="请输入用户名" name="account.username" id="username1">
		         <input class="form-control" type="text" placeholder="请输入用户名" name="admin.username" id="username2">
		       </div>
		    </div>
		     <div class="form-group">
		       <label class="col-sm-3 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
		       <div class="col-sm-9">
		         <input class="form-control" type="password" placeholder="请输入密码" name="account.password" id="password1">
		         <input class="form-control" type="password" placeholder="请输入密码" name="admin.password" id="password2">
		       </div>
		    </div>
		     <div class="form-group">
		       <label class="col-sm-3 control-label">身&nbsp;&nbsp;&nbsp;&nbsp;份：</label>
		       <div class="col-sm-9">
		       	 <select class="form-control" name="loginType" id="loginType" onchange="change()">
		       	 	<option value="0" selected>客户</option>
					<option value="1">管理员</option>
		       	 </select>
		       </div>
		    </div>
		    <div class="form-group">
		       <div class="col-sm-3">
		       </div>
		       <div class="col-sm-9 padding-left-0">
		       	 <div class="col-sm-4">
			         <button type="submit" class="btn btn-primary btn-block" id="login">登&nbsp;&nbsp;陆</button>
		       	 </div>
		       	 <div class="col-sm-4">
			         <button type="reset" class="btn btn-primary btn-block">重&nbsp;&nbsp;置</button>
		       	 </div>
		       	 <div class="col-sm-4" style="padding:0;margin-left:-10px;width:auto;padding-top: 5px;">
		       	 	<c:if test="${msg!=null }">
			       		<span class="text-danger">${msg}</span>
			       </c:if>
		       	 </div>
		       </div>
		    </div>
	      </form>
	      <!-- login form end -->
	    </div>
	  </div>
    </div>
    <!-- 页尾 版权声明 -->
    <div class="container">
		<div class="col-sm-12 foot-css">
		        <p class="text-muted credit">
		        </p>
	    </div>
    </div>
  </body>
</html>
