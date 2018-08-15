<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

  </head>
  <body>
  <script type="text/javascript">
   $(function(){
	   $("#addStuForm").form({
		   url:"addStuSave.do",
		   success:function(data){
			   //alert(data);
			    var json=eval('('+data+')');
			    alert(json.msg);
			  	if(json.state==1){			
				$("#addStuForm").form("clear");
			  	}
			
		   } 
	   })
   })
  </script>
  	<form id="addStuForm"  method="post" enctype="multipart/form-data">
	<table>
		<tr><td>学号</td><td><input type="text" name="stuId" class="easyui-validatebox" required="true" /></td></tr>
		<tr><td>姓名</td><td><input type="text" name="stuName" class="easyui-validatebox"/></td></tr>
		<tr><td>照片</td><td><input type="file" name="pic" /></td></tr>
		<tr><td><input type="submit" value="提交"></td></tr>
	</table>
	</form>
  	
  </body>
</html>
