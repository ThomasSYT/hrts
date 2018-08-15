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
  	function searchChapter(rec){
	$("#chapterTable").datagrid("load",{courseId:rec.courseId});
}
  
  </script>
	<table id="chapterTable" class="easyui-datagrid" data-options="fit:true,
			url:'showChapter.do',
			toolbar:'#chapterTb'">
		<thead>
			<tr>
			<th data-options="field:'chapterId'">编号</th>
			<th data-options="field:'chapterName'">名称</th>
			<th data-options="field:'hard',
							formatter:function(val,row,index){ 
								if(val==1)
									return '简单';
								if(val==2)
									return '普通';
								if(val==3)
									return '难点';
							}
							">难度</th>
			<th data-options="field:'percent'">比例</th>
			<th data-options="field:'courseName'">课程名</th></tr>
		</thead>
	</table>
	 <div id="chapterTb">
  		课程名称：
			<select  name="courseId" class="easyui-combobox" id="courseSearch"
						data-options="url:'testBody1.do',
										valueField:'courseId',
										textField:'courseName',
										width:150,
										onSelect:searchChapter" >
			</select>
  	</div> 
  </body>
</html>
