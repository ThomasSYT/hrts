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
	function editStu(){
		row=$("#stuTable").datagrid("getSelected");
		if(row==null){
			$.messager.alert("注意","请选中一行");
		}else{
			$("#stuWin").window({
				title:'修改学生信息',
				width:300,
				height:200,
				href:'mng/sys/stuEdit.jsp'
			});
		}
		
	}
	function delStu(){
		var row=$("#stuTable").datagrid("getSelected");
		if(row==null){
			$.messager.alert("注意","请选中一行");
		}else{
			$.messager.confirm("警告","是否删除'"+row.stuName+"'!",
					function(r){
						if(r){
							var url="delStu.do";
							jQuery.post(url,row,function(data){
								var json=eval('('+data+')');
								$.messager.alert("提示",json.msg);
								if(json.state==1){
									$("#stuTable").datagrid("load");
								}
							});							
						}
					});			
		}
	}
</script>
<table class="easyui-datagrid" id="stuTable" data-options="
			fit:true,
			singleSelect:true,
			url:'stuShow.do',
			toolbar:'#tbstu'">
	<thead>
	<tr>
		<th data-options="field:'stuId'">学号</th>
		<th data-options="field:'stuName'">姓名</th>
		<th data-options="field:'departId'">班级</th>
		<th data-options="field:'birthday'">出生日期</th>
		<th data-options="field:'address'">家庭地址</th>
		<th data-options="field:'tel'">电话</th>
	</tr>
	</thead>
</table>
<div id="tbstu">
	<a href="javascript:void(0)" data-options="iconCls:'icon-edit',plain:true" class="easyui-linkbutton" onclick="editStu()"/>
	<a href="javascript:void(0)" data-options="iconCls:'icon-cut',plain:true" class="easyui-linkbutton" onclick="delStu()"/>
</div>		
<div id="stuWin"></div>
</body>
</html>