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
    <title>My JSP 'addChapter.jsp' starting page</title>
    
  </head>
  <script type="text/javascript">
	function submitForm(){
		$("#addChapterForm").submit();
	}
	function clearForm(){
		$("#addChapterForm").form("clear");
	}
	$(function(){
		$("#addChapterForm").form({
			url:"addChapterSave.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				if(json.state==1){
					alert(json.msg);
					$("#addChapterForm").form("clear");
				}
			}
		});
	});
</script>
  <body>
  	<form id="addChapterForm" action="addChapterSave.do" method="post">
	<table>
		<tr><td>课程名称</td>
		<td>
			<select type="text" name="courseId" class="easyui-combobox"
						data-options="url:'testBody1.do',
										valueField:'courseId',
										textField:'courseName',
										width:120" >
			</select>
		</td></tr>

		<tr><td>章节名称</td>
		<td><input type="text" name="chapterName"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>关键词</td>
		<td><input type="text" name="keyword" /></td>
		<tr><td>难度</td>
		<td><input type="text" name="hard" /></td>
		<tr><td>比重</td>
		<td><input type="text" name="percent" /></td>
		<tr><td>详细描述</td>
		<td><textarea name="detail" style="height:60px;"></textarea></td>
		</tr>
	</table>	
	</form>
  	<div style="padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
  </body>
</html>
