
<%@page import="org.springframework.ui.ModelMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
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
		$("#editAnswerForm").form({
			url:"editAnswerSave.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#editItemWin").window("close");
					$("#baseAnswerTable").datagrid("load");
				}
			}
		});
		$("#editAnswerForm").form("load",row);
	});

		
	function submitEdit(){
		
		$("#editAnswerForm").submit();
	}
	function clearForm(){
		$("#editAnswerForm").form("clear");
	}
</script>
	<form id="editAnswerForm"  method="post">
	<table>
	<tr>
		<td><input type="hidden" name="answerId"
		class="easyui-validatebox" /></td></tr>
		<tr><td>答案</td>
		<td><textarea type="text" name="answerText" value="" 
		 required ></textarea></td></tr>
		<tr><td>是否正确</td>
		<td><select name="answerState" class="easyui-combobox"
		data-options="panelHeight:'auto'">
		<option value="0" >错误</option>
		<option value="1" >正确</option>
		</select></td></tr>
	</table>	
	</form>
	<div style="padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEdit()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>

</body>
</html>
