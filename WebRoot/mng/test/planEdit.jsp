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
		$("#editPlanForm").form({
			url:"updatePlan.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#testWin").window("close");
					$("#testTable").datagrid("load");
				}
			}
		});
		$("#editPlanForm").form("load",row);
	});

		
	function submitEdit(){
		$("#editPlanForm").submit();
	}
	function clearForm(){
		$("#editPlanForm").form("clear");
	}
</script>
	<form id="editPlanForm"  method="post">
	<table>
	    <tr>
		<td><input type="hidden" name="testId"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>考试名称</td>
		<td><input type="text" name="testName"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>选择试卷：</td>
            <td><select id="showPaper" name="paperId" class="easyui-combobox"
            data-options="url:'showPaper.do',
            valueField:'paperId',
            textField:'paperName',
            width:160,
            panelHeight:'auto'
            " >
            <option value="请选择..."></option></select></td>
            </tr>
		<tr><td>开始时间</td>
		<td><input type="text" name="runTime"
		 class="easyui-datebox" data-options="
		 		 formatter:function(date){
					var y = date.getFullYear();
					var m = date.getMonth()+1;
					var d = date.getDate();
					return y+'-'+m+'-'+d;}"/></td></tr>
	</table>	
	</form>
	<div style="padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEdit()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>

</body>
</html>
