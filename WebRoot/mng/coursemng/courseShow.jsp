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
<meta http-equiv="Content-Type" content="textml; charset=UTF-8"/>
<title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
</head>

<body>

<script type="text/javascript">
function editCourse(){
		row=$("#courseTb").datagrid("getSelected");
		if(row==null)
			$.messager.alert("注意","请选中一行");
		else{
			$("#editCourseWin").window({
				title:'编辑课程',
				width:250,
				height:180,
				href:"mng/coursemng/courseEdit.jsp"
			});
		}
	}
	

function delCourse(){
		var row=$("#courseTb").datagrid("getSelected");
		if(row==null)
			$.messager.alert("注意","请选中一行");
		else{
			$.messager.confirm("警告","是否删除'"+row.courseName+"'!",
					function(r){
						if(r){
							var url="delCourse.do";
							//var data={courseId:row.courseId};
							jQuery.post(url,row,function(data){
								var json=eval('('+data+')');
								$.messager.alert("提示",json.msg);
								if(json.state==1){
									$("#courseTb").datagrid("load");
								}
							});							
						}
					});			
		}
	}
</script>

	<table class="easyui-datagrid" 
	data-options="
	fit:true,
	url:'courseShow.do',
	toolbar:'#ctb',
	singleSelect:true"
	id="courseTb" 
	>
	<thead>
		<tr>
		<th data-options="field:'courseId'">编号</th>
		<th data-options="field:'courseName'">课程</th>
		<th data-options="field:'hours'">课时</th>
		<th data-options="field:'points'">学分</th>
		</tr>
	</thead>
	</table>
	<div id="editCourseWin"></div>
	<div id="ctb">
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="editCourse();" data-options="iconCls:'icon-edit',plain:true"/a>
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="delCourse();" data-options="iconCls:'icon-cut',plain:true"/a>
    </div>
</body>
</html>
