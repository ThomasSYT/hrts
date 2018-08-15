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
		$("#addTeaForm").form({
			url:"addTeaSave.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#addTeaForm").form("clear");
				}
			}
		});
	});
	function submitAddTea(){
		$("#addTeaForm").submit();
	}
	function clearAddTea(){
		$("#addTeaForm").form("clear");
	}
</script>
	<form id="addTeaForm"  method="post">
	<table>
		<tr><td>教学编号</td>
		<td><input type="text" name="teaId" 
		class="easyui-validatebox" required="true" /></td></tr>
		<tr><td>姓名</td>
		<td><input type="text" name="teaName"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>班级</td>
		<td><input type="text" name="departId"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>电话</td>
		<td><input type="text" name="tel"
		 class="easyui-validatebox"/></td></tr>
	</table>
	</form>
	<div style="padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitAddTea()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearAddTea()">重置</a>
	</div>

</body>
</html>