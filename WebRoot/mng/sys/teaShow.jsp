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
	function editTea(){
		row=$("#teaTable").datagrid("getSelected");
		if(row==null){
			$.messager.alert("注意","请选中一行");
		}else{
			$("#teaWin").window({
				title:'修改教师信息',
				width:300,
				height:200,
				href:'mng/sys/teaEdit.jsp'
			});
		}
		
	}
	function delTea(){
		var row=$("#teaTable").datagrid("getSelected");
		if(row==null){
			$.messager.alert("注意","请选中一行");
		}else{
			$.messager.confirm("警告","是否删除'"+row.teaName+"'!",
					function(r){
						if(r){
							var url="delTea.do";
							jQuery.post(url,row,function(data){
								var json=eval('('+data+')');
								$.messager.alert("提示",json.msg);
								if(json.state==1){
									$("#teaTable").datagrid("load");
								}
							});							
						}
					});			
		}
	}
</script>
<div></div>
<table class="easyui-datagrid" id="teaTable" data-options="
			fit:true,
			singleSelect:true,
			url:'teaShow.do',
			toolbar:'#tbtea'">
	<thead>
	<tr>
		<th data-options="field:'teaId'">学号</th>
		<th data-options="field:'teaName'">姓名</th>
		<th data-options="field:'departId'">班级</th>
		<th data-options="field:'tel'">电话</th>
	</tr>
	</thead>
</table>
<div id="tbtea">
	<a href="javascript:void(0)" data-options="iconCls:'icon-edit',plain:true" class="easyui-linkbutton" onclick="editTea()"/>
	<a href="javascript:void(0)" data-options="iconCls:'icon-cut',plain:true" class="easyui-linkbutton" onclick="delTea()"/>
</div>		
<div id="teaWin"></div>
</body>
</html>