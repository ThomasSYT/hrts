<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#addStuForm").form("clear");
				}
			}
		});
	});
	function submitAddStu(){
		$("#addStuForm").submit();
	}
	function clearAddStu(){
		$("#addStuForm").form("clear");
	}
</script>
	<form id="addStuForm"  method="post" enctype="multipart/form-data">
	<table>
		<tr><td>学号</td>
		<td><input type="text" name="stuId" 
		class="easyui-validatebox" required="true" /></td></tr>
		<tr><td>姓名</td>
		<td><input type="text" name="stuName"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>班级</td>
		<td><input type="text" name="departId"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>出生日期</td>
		<td><input type="text" name="birthday"
		 class="easyui-datebox" data-options="
		 		 formatter:function(date){
					var y = date.getFullYear();
					var m = date.getMonth()+1;
					var d = date.getDate();
					return y+'-'+m+'-'+d;}"/></td></tr>
		<tr><td>电话</td>
		<td><input type="text" name="tel"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>地址</td>
		<td><input type="text" name="address"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>照片</td>
		<td><input type="file" name="pic" /></td></tr>
	</table>
	</form>
	<div style="padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitAddStu()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearAddStu()">重置</a>
	</div>

</body>
</html>