<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="login-bg">
<head>
	<title>Detail Admin - Sign up</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/signup.css" type="text/css" media="screen" />


    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
    <div class="header">
        <a href="index.jsp">
            <img src="img/logo.png" class="logo" />
        </a>
    </div>
    <div class="row-fluid login-wrapper">
        <div class="box">
        <form id="ff" method="post" >
            <div class="content-wrap">
                <h6>登陆信息设置</h6>
                <input hidden="hidden" name="emId" value="${userPShow.emId }">
                <input hidden="hidden" name="roleId" value="${userPShow.roleId }">
                <input class="span12" name="userId" type="text" placeholder="用户名" />
                <input class="span12" name="pwd" type="password" placeholder="密码" />
                <input class="span12"  type="password" placeholder="Confirm Password" />
                <div class="action">
                    <input id="sub" type="button" class="btn-glow primary" value="确认" />
                </div>                
            </div>
            </form>
        </div>

    </div>

	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
	<script type="text/javascript">
        $(function () {
        	$("#sub").click(function() {  
               	var jsonData=$("#ff").serializeArray(); 
               	$.ajax({
            		url:"addUser.do",
            		data:jsonData,
            		type:"POST",
            		dataType : "json",  
                  success : function(data) {  
                    alert("成功！");  
                  },  
                  error : function(data) {  
                	  alert("更新成功！");  
                  }  
                });  
              }); 
              
        });
    </script>
</body>
</html>