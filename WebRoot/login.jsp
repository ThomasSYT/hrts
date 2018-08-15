<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
	<link rel="stylesheet" type="text/css" href="js/themes/ui-pepper-grinder/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	
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
  </head>
  
  <body style="background-image: url('js/images/bg03.jpg');">
  
   <div class="easyui-window"
   		  data-options="title:'登录窗口',
   		 				height:200,
   		 				width:400,
   		 				closable:false,
   		 				minimizable:false,
   		 				maximizable:false,
   		 				draggable:false,
   		 				resizable:false,
   		 				collapsible:false,
   		 				iconCls:'icon-sys'">
		<div class="easyui-tabs" id="workbar" data-options="fit:true">
			
			<center>
			<form id="ff" method="post">
			<div style="height:40px;line-height:20px;">
				用户名：<input type="text" name="userId"/><br><br>
			</div>
			<div style="height:10px;line-height:20px;">
				密&nbsp&nbsp&nbsp&nbsp码：<input type="password" name="pwd" /><br>
				
				
			</div>
			</form>
			<a id="btn" href="javascript:void(0)" class="easyui-linkbutton" onclick="submitLogin()">登录</a>	
			</center>
			
		</div>	
			
		
	</div>

  </body>
</html>
