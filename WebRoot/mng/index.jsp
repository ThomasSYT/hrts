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
<title>首页</title>
	<link rel="stylesheet" type="text/css" href="js/themes/metro-green/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

</head>
<body class="easyui-layout">
	<div data-options="region:'north',height:80">
	<div style="position: absolute; bottom: 5px; left: 20px;font-size: 15px;">欢迎${employee.emName}
     <a href="userRemove.do"  style="font-size: 13px;">注销</a></div>
	</div>
	<div data-options="region:'west',
						width:200,
						title:'系统菜单',
						href:'mng/menu.jsp',
						split:true">
	</div>
	<div data-options="region:'center',title:'操作',iconCls:'icon-edit'">
		<div class="easyui-tabs" fit="true" id="workbar">
		<div title="个人信息" data-options="closable:true,
								href:'mng/coursemng/courseShow.jsp'">页面1</div>
		</div>	
	</div>
	<div data-options="region:'south',height:50"></div>
</body>
</html>
