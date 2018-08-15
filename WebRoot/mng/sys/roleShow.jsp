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

</head>
<body>
<script type="text/javascript">
function show(){
		var url="courseShow.do";
		var data={courseId:15027};
		jQuery.post(url,data,function(data){});
	}
function addRole(){
			$("#editroletb").window({
				title:'编辑课程',
				width:250,
				height:150,
				href:"mng/sys/addRole.jsp"
			});
	}
	

function delRole(){
		var row=$("#roleTable").datagrid("getSelected");
		if(row==null)
			$.messager.alert("注意","请选中一行");
		else{
			$.messager.confirm("警告","是否删除'"+row.roleName+"'!",
					function(r){
						if(r){
							var url="delRole.do";
							//var data={courseId:row.courseId};
							jQuery.post(url,row,function(data){
								var json=eval('('+data+')');
								$.messager.alert("提示",json.msg);
								if(json.state==1){
									$("#roleTable").datagrid("load");
								}
							});							
						}
					});			
		}
	}


</script>
<table class="easyui-datagrid" id="roleTable" data-options="
			fit:true,singleSelect:true,
			url:'roleShow.do',
			toolbar:'#roletb'">
	<thead>
	<tr>
		<th data-options="field:'roleId'">角色编号</th>
		<th data-options="field:'roleName'">角色名</th>
		<th data-options="field:'detail'">说明</th>
	</tr>
	</thead>
</table>
<div id="editroletb"></div>
	<div id="roletb">
	<a class="easyui-linkbutton" href="javascript:void(0)" onclick="addRole();" data-options="iconCls:'icon-add',plain:true"></a>
	<a class="easyui-linkbutton" href="javascript:void(0)" onclick="delRole();" data-options="iconCls:'icon-cut',plain:true"></a>
	</div>

</body>
</html>