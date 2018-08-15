
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
		$("#editItemForm").form({
			url:"editItemSave.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#editItemWin").window("close");
					$("#ItemTable").datagrid("load");
				}
			}
		});
		$("#editItemForm").form("load",row);
	});

		
	function submitEdit(){
		
		$("#editItemForm").submit();
	}
	function clearForm(){
		$("#editItemForm").form("clear");
	}
</script>
	<form id="editItemForm"  method="post">
	<table>
	<tr><td>试题编号</td>
		<td><input type="text" name="itemId"  readonly="readonly"
		class="easyui-validatebox" required /></td></tr>
		<tr><td>试题内容</td>
		<td><textarea type="text" name="itemTitle" value="" 
		 required ></textarea></td></tr>
		<tr><td>难度</td>
		<td><select name="itemHard" class="easyui-combobox"
		data-options="panelHeight:'auto'">
		<option value="1" >简单</option>
		<option value="2" >普通</option>
		<option value="3" >难题</option>
		</select></td></tr>
		 <tr><td>有关知识点：</td>
			<td><select  name="chapterId" class="easyui-combobox" id="chapterSearch"
						data-options="url:'showChapter.do',
										valueField:'chapterId',
										textField:'chapterName',
										width:150,
										onSelect:searchItem,
										panelHeight:'auto'">
			</select>
		 </td></tr>
	</table>	
	</form>
	<div style="padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEdit()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>

</body>
</html>
