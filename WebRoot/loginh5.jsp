<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" class="no-js">

<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>html5响应式后台登录界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- CSS -->

<link rel="stylesheet" href="css/supersized.css">
<link rel="stylesheet" href="css/login.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
<![endif]-->
<script src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/tooltips.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</head>

<body>
<script type="text/javascript">
	$(function(){
	   $("#ff").form({
		   url:"findUser.do",
		   success:function(data){
			  var json=eval('('+data+')');
			  if(json.state==1){
				  $.messager.alert("提示",json.msg);
			  }
			  if(json.state==0){
				  var url2="findUserKind.do";
				  location=url2;
			  }
		   }
	   });
	});

	function submitLogin(){
		$("#ff").submit();
	}
</script>
<div class="page-container">
	<div class="main_box">
		<div class="login_box">
			<div class="login_logo">
				<!-- <img src="images/logo.png" > -->
			</div>
		
			<div class="login_form">
				<form id="ff" method="post">
					<div class="form-group">
						<label  class="t">用户名：</label> 
						<input value="" name="userId" type="text" class="form-control x319 in">
					</div>
					<div class="form-group">
						<label for="j_password" class="t">密　码：</label> 
						<input id="password" value="" name="pwd" type="password" 
						class="password form-control x319 in">
					</div>
					<div class="form-group">
						<label class="t"></label>
						<label for="j_remember" class="m">
						<input id="j_remember" type="checkbox" value="true">&nbsp;记住登陆账号!</label>
					</div>
					<div class="form-group space">
						<label class="t"></label>　　　
						<button onclick="submitLogin()" type="button"  id="submit_btn" 
						class="btn btn-primary btn-lg">&nbsp;登&nbsp;录&nbsp </button>
						<input type="reset" value="&nbsp;重&nbsp;置&nbsp;" class="btn btn-default btn-lg">
					</div>
				</form>
			</div>
		</div>
		<div class="bottom">Copyright @Thomas <a href="#">系统登陆</a></div>
	</div>
</div>

<!-- Javascript -->

<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<script src="js/scripts.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

</body>
</html>