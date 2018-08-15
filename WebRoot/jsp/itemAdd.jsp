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
		//alert();
		/*$("#itemTitle").jqte({right:false,left:false,center:false,
				ul:false,ol:false,link:false,remove:false,p:false,
				color:false,ulink:false});*/
		firstRow = $("#itemAnswerTable tr:last");
		indexRow=1;
		$("#baseItemandAnswerForm").form({
			url:"addBaseItemAnswer.do",
			success:ItemAnswerCallback
		});
	});
	function ItemAnswerCallback(data){
		var json= jQuery.parseJSON(data);
		alert(data);
		$.messager.alert("提示",json.msg);
		if(json.state==1){
			$("#baseItemandAnswerForm").form("clear");
		}
	}
	function addAnswer(){
		$("#itemAnswerTable").append("<tr></tr>");
		$("#itemAnswerTable tr:last").html(firstRow.html());
		indexRow++;
		$("#itemAnswerTable tr:last td:first").html(indexRow);
	}
	function clearAnswer(){
		if(indexRow>1){
			indexRow--;
			$("#itemAnswerTable tr:last").remove();
		}
	}
	function submitItemandAnswerForm(){
		$("#baseItemandAnswerForm").submit();
	}
</script>
    <div class="easyui-layout" fit="true">
    <form action="" id="baseItemandAnswerForm" method="post">
    <div data-options="region:'west',width:400">
    <table class="easyui-panel" fit="true">
    <tr>
		<td>
		<table>
			<tr>
			<td>课程</td>
			<td><select  class="easyui-combobox" data-options="url:'testBody1.do',
														textField:'courseName',
														valueField:'courseId',
														width:160"></select></td>
			<td>章节</td>
			<td><select name="chapterId" class="easyui-combobox" data-options="url:'chapterShow.do',
														textField:'chapterName',
														valueField:'chapterId',
														width:160"></select></td>
			</tr>
			<tr>
			<td>难度</td>
			<td><select name="itemHard">
					<option value="1" selected="selected">简单</option>
					<option value="2" >普通</option>
					<option value="3" >难题</option>
				</select></td>
			<td>类型</td>
			<td><select name="itemKind">
					<option value="1" selected="selected">单选</option>
					<option value="2" >多选</option>
					<option value="3" >填空</option>			
					<option value="4" >判断</option>			
					<option value="5" >简答</option>			
					<option value="6" >编程</option>			
				</select></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr><td>题目：</td></tr>
	<tr><td>
	<textarea  id="itemTitle" name="itemTitle" cols="50" ></textarea></td></tr>
	</table>
	</div>
	<div data-options="region:'center',title:'填写答案',tools:'#answerOpr'">
		<table >
		<tr>
		<td>
		<table width="100%" id="itemAnswerTable">
		<tr><td>序号</td><td>答案</td><td>正确状态</td><td>关键词</td></tr>
		<tr>
		<td>1</td>
		<td><textarea rows="2" cols="30" name="answerText"></textarea></td>
		<td><select name="answerState"><option value='1'>正确</option><option value='0'>错误</option></select></td>
		<td><input type="text" name="answerKeyword"/></td>
		</tr>
		</table>
		</td>
	</tr>
    </table>
    <div id="answerOpr">
	    	<a href="javascript:void(0)" class="icon-add" onclick="addAnswer()"></a>
	    	<a href="javascript:void(0)" class="icon-del" onclick="clearAnswer()"></a>
	    </div>		
	</div>
	<div data-options="region:'south',height:40">
	    <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitItemandAnswerForm()">保存</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	    </div>
	</div>
    </form>
    </div>
  </body>
</html>
