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
	function editUser(){
		row=$("#userTable").datagrid("getSelected");
		if(row==null){
			$.messager.alert("注意","请选中一行");
		}else{
			$("#userWin").window({
				title:'修改用户信息',
				width:300,
				height:200,
				href:'mng/sys/userEdit.jsp'
			});
		}
		
	}
	function delUser(){
		var row=$("#userTable").datagrid("getSelected");
		if(row==null){
			$.messager.alert("注意","请选中一行");
		}else{
			$.messager.confirm("警告","是否删除'"+row.userId+"'!",
					function(r){
						if(r){
							var url="delUser.do";
							jQuery.post(url,row,function(data){
								var json=eval('('+data+')');
								$.messager.alert("提示",json.msg);
								if(json.state==1){
									$("#userTable").datagrid("load");
								}
							});							
						}
					});			
		}
	}
	function select(data){
		var json=eval('('+data+')');
		if(json.stuName!=null){
			$("#stuName").datagrid({
				field:'stuName'
			});
		}
	}
</script>
<table class="easyui-datagrid" id="userTable" data-options="
			fit:true,
			singleSelect:true,
			url:'userShow.do',
			toolbar:'#tbUser'
			">
	<thead>
	<tr>
		<th data-options="field:'userId'">账号</th>
		<th data-options="field:'roleName'">角色</th>
		<th data-options="field:'name' ,
		   formatter:function(val,row,index){
		       if(val==null){
		          return '隐藏';
		       }else{
		          return val;
		       }
		  }">姓名</th>
		<th data-options="field:'pwd'">密码</th>
		<th data-options="field:'regDate'">注册日期</th>
	</tr>
	</thead>
</table>
<div id="tbUser">
	<a href="javascript:void(0)" data-options="iconCls:'icon-edit',plain:true" class="easyui-linkbutton" onclick="editUser()"/>
	<a href="javascript:void(0)" data-options="iconCls:'icon-cut',plain:true" class="easyui-linkbutton" onclick="delUser()"/>
</div>		
<div id="userWin"></div>
</body>
</html>