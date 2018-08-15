<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
  </head>
  <body>
  <script type="text/javascript">
   function editTest(){
	   row=$("#testTable").datagrid("getSelected");
	   if(row==null){
		   $.messager.alert("注意","请选择一行");
	   }else{
		   
				    	$("#testWin").window({
							  title:"修改考试计划",
							  width:250,
							  height:160,
							  href:'mng/test/planEdit.jsp'
						  });
	   }
   }
   function addTest(){
	   $("#testWin").window({
			  title:"增加考试计划",
			  width:250,
			  height:150,
			  href:'mng/test/planAdd.jsp'
		  });
   }
   function delTest(){
	   row=$("#testTable").datagrid("getSelected");
	   if(row==null){
		   $.messager.alert("注意","请选择一行");
	   }else{
		   $.messager.confirm("警告","是否删除计划'"+row.testId+"'!",
		function(r){
		 if(r){
		   var url='delPlan.do?testId='+row.testId;
		   $.post(url,function(data){
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){
					$("#testable").datagrid("load");
				}
		   });
		 }
	   });
   }
   }
  </script>
	<table id="testTable" class="easyui-datagrid" data-options="fit:true,
			url:'showPlan.do',
			singleSelect:true,
			toolbar:'#ttb'">
		<thead>
			<tr>
			<th data-options="field:'testId'">考试编号</th>
		    <th data-options="field:'paperName'">试卷名称</th>
		    <th data-options="field:'runTime'">开始时间</th>
		    <th data-options="field:'testName'">考试名称</th>
		    </tr>
		</thead>
	</table>
	<div id="testWin"></div>
    <div id="ttb">
<a href="javascript:void(0)" class="easyui-linkbutton" onclick="editTest()" data-options="iconCls:'icon-edit',plain:true"/a>
<a href="javascript:void(0)" class="easyui-linkbutton" onclick="delTest()" data-options="iconCls:'icon-cut',plain:true"/a>
<a href="javascript:void(0)" class="easyui-linkbutton" onclick="addTest()" data-options="iconCls:'icon-add',plain:true"/a>
</div>
</body>
</html>
