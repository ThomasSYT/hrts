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
var firstRow;
var indexRow;
	$(function(){
		firstRow = $("#partTable tr:last");
		indexRow=1;
		$("#addPaperForm").form({
			url:"addPaperSave.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#addPaperForm").form("clear");
				}
			}
		});
	});
	function submitAddPaper(){
		$("#addPaperForm").submit();
	}
	function clearAddPaper(){
		$("#addPaperForm").form("clear");
	}
</script>
 <div class="easyui-layout" fit="true">
	<form id="addPaperForm"  method="post" enctype="multipart/form-data">
	<div data-options="region:'west',width:400">
	<table class="easyui-panel" data-options="split:ture">
		<tr><td><input type="text" name="teaId" value="${tea.teaId}" /></td></tr>
		<tr><td>试卷名称</td>
		<td><input type="text" name="paperName"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>试卷类型</td>
		<td><select name="paperKind"class="easyui-combobox" data-options="panelHeight:'auto'">
		    <option value="1">A</option>
		    <option value="2">B</option>
		    <option value="3">C</option>
		</select></td></tr>
		<tr><td>试卷应用日期</td>
		<td><input type="text" name="paperCreateTime"
		 class="easyui-datebox" data-options="
		 		 formatter:function(date){
					var y = date.getFullYear();
					var m = date.getMonth()+1;
					var d = date.getDate();
					return y+'/'+m+'/'+d;}"/></td></tr>
		<tr><td>总分</td>
		<td><input type="text" name="paperPoints"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>考试时长</td>
		<td><input type="text" name="paperHours"
		 class="easyui-validatebox"/></td></tr>
		<tr><td>试卷状态</td>
		<td><select name="paperState"class="easyui-combobox" data-options="panelHeight:'auto'">
		    <option value="0">未使用</option>
		    <option value="1">已使用</option>
		</select></td></tr>
		<tr><td>有关课程</td>
		<td><select  name="courseId" class="easyui-combobox" id="courseSearch"
						data-options="url:'testBody1.do',
										valueField:'courseId',
										textField:'courseName',
										width:150,
										panelHeight:'auto'">
			</select></td></tr>
	</table>
	</div>
	<div data-options="region:'center'" class="easyui-panel">
	<table >
	<tr><td>试题内容设计：</td></tr>
	<tr>
	<td>
	<table id="partTable" width="100%">
	<tr><td>大题序号</td><td>试题题目</td><td>说明</td><td>分数比重</td><td>试题类型</td><td></td></tr>
	<tr><td>1</td>
	<td><input type="text" name="partName"></td>
	<td><input type="text" name="partDetail"></td>
	<td><input type="text" name="partPoints">
	<td><select name="partKind" >
	                <option value="1" >单选</option>
					<option value="2" >多选</option>
					<option value="3" >填空</option>			
					<option value="4" >判断</option>			
					<option value="5" >简答</option>			
					<option value="6" >编程</option>	
	</select></td>
	<td><button type="button" onclick="return addPart()">增加</button></td>
	<td><button type="button" onclick="return delPart()">删除</button></td>
	</tr>
	</table></td></tr>
	</table>
	</div>
	<div data-options="region:'south',height:40">
	<div style="text-align:center;padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitAddPaper()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearAddPaper()">重置</a>
	</div>
	</div>
	</form>
</div>
<script type="text/javascript">
function addPart(){
	$("#partTable").append("<tr></tr>");
	$("#partTable tr:last").html(firstRow.html());
	indexRow++;
	$("#partTable tr:last td:first").html(indexRow);
}
function delPart(){
	if(indexRow>1){
		indexRow--;
		$("#partTable tr:last").remove();
	}
}
</script>
</body>
</html>