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
   function checkPaper(){
	   row=$("#paperTable").datagrid("getSelected");
	   if(row==null){
		   $.messager.alert("注意","请选择一行");
	   }else{
		   var url='checkPaper.do?paperId='+row.paperId;
		   $.post(url,function(data){
				var json = eval('('+data+')');
				if(json.state==0){
				    $.messager.alert("提示",json.msg);
				    }else{
				    	$("#paperWin").window({
							  title:"导出试卷",
							  width:500,
							  height:500,
							  href:'mng/exam_paper/paperPrint.jsp'
						  });
				    }					
			});
	   }
   }
  </script>
	<table id="paperTable" class="easyui-datagrid" data-options="fit:true,
			url:'showPaper.do',
			singleSelect:true,
			toolbar:'#ptb'">
		<thead>
			<tr>
			<th data-options="field:'paperId'">试卷编号</th>
		    <th data-options="field:'paperName'">试卷名称</th>
		    <th data-options="field:'paperKind'">试卷种类</th>
		    <th data-options="field:'paperPoints'">总分</th>
		    <th data-options="field:'paperHours'">时长</th>
		    <th data-options="field:'teaName'">出卷人</th>
		    <th data-options="field:'courseId'">有关课程编号</th>
		    <th data-options="field:'paperState',
		formatter:function(val,row,index){
		    if(val==0)
		       return '未使用';
		    if(val==1)
		       return '已使用'
		}">状态</th>
		</thead>
	</table>
	<div id="paperWin"></div>
    <div id="ptb">
<a href="javascript:void(0)" class="easyui-linkbutton" onclick="checkPaper();" data-options="iconCls:'icon-print',plain:true"/a>
<a href="javascript:void(0)" class="easyui-linkbutton" onclick="delPaper();" data-options="iconCls:'icon-cut',plain:true"/a>
</div>
</body>
</html>
