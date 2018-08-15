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

	<table class="easyui-datagrid" data-options="toolbar:'#coursetb',fit:true">
	<thead>
		<tr>
		<th data-options="field:'courseId'">编号</th>
		<th data-options="field:'courseName'">课程</th>
		</tr>
	</thead>
		<c:forEach items="${clist }" var="course">
		<tr><td>${course.courseId }</td><td>${course.courseName }</td></tr>
		</c:forEach>
	</table>
	<div id="coursetb">
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改</a>
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-help'">帮助</a>
	</div>
	
</body>
</html>