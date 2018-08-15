<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		$("#editCourseForm").form({
			url:"editCourseSave.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#editCourseWin").window("close");
					$("#courseTb").datagrid("load");
				}
			}
		});
		$("#editCourseForm").form("load",row);
	});

		
	function submitEdit(){
		$("#editCourseForm").submit();
	}
	function clearForm(){
		$("#editCourseForm").form("clear");
	}
</script>
	<form id="editCourseForm"  method="post">
	<table>
	<tr><td>课程编号</td>
		<td><input type="text" name="courseId"  readonly="readonly"
		class="easyui-validatebox" required /></td></tr>
		<tr><td>课程名称</td>
		<td><input type="text" name="courseName" 
		class="easyui-validatebox" required /></td></tr>
		<tr><td>课时</td>
		<td><input type="text" name="hours"
		 class="easyui-numberbox"/></td></tr>
		<tr><td>学分</td>
		<td><input type="text" name="points" /></td></tr>
	</table>	
	</form>
	<div style="padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEdit()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>

</body>
</html>
