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
  	function searchItem(rec){
	$("#ItemTable").datagrid("load",{chapterId:rec.chapterId});
}
  	function editItem(){
		row=$("#ItemTable").datagrid("getSelected");
		if(row==null)
			$.messager.alert("注意","请选中一行");
		else{
			$("#editItemWin").window({
				title:'修改试题',
				width:300,
				height:190,
				href:"mng/itemng/itemEdit.jsp"
			});
		}
	}
  	function editAnswer(){
		row=$("#baseAnswerTable").datagrid("getSelected");
		if(row==null)
			$.messager.alert("注意","请选中一行");
		else{
			$("#editItemWin").window({
				title:'修改试题',
				width:260,
				height:140,
				href:"mng/itemng/answerEdit.jsp"
			});
		}
	}	

function delItem(){
		var row=$("#ItemTable").datagrid("getSelected");
		if(row==null)
			$.messager.alert("注意","请选中一行");
		else{
			$.messager.confirm("警告","是否删除试题'"+row.itemId+"'!",
					function(r){
						if(r){
							var url="delItem.do";
							//var data={courseId:row.courseId};
							jQuery.post(url,row,function(data){
								var json=eval('('+data+')');
								$.messager.alert("提示",json.msg);
								if(json.state==1){
									$("#ItemTable").datagrid("load");
								}
							});							
						}
					});			
		}
	}
function selBaseItem(ri,rd){
	$("#baseAnswerTable").datagrid("load",{itemId:rd.itemId});
}
  </script>
  <div class="easyui-layout" fit="true">
    <div data-options="region:'center'">
	<table id="ItemTable" class="easyui-datagrid" data-options="fit:true,
			url:'showItemAllSmp.do',
			toolbar:'#itemTb',
			onClickRow:selBaseItem,
			singleSelect:true">
		<thead>
			<tr>
			<th data-options="field:'itemId'">编号</th>
			<th data-options="field:'itemTitle'">内容</th>
			<th data-options="field:'itemHard',
							formatter:function(val,row,index){ 
								if(val==1)
									return '简单';
								if(val==2)
									return '普通';
								if(val==3)
									return '难点';
							}
							">难度</th>
			<th data-options="field:'chapterName'">有关知识点</th>
			<th data-options="field:'partName'">题目类型</th></tr>
		</thead>
	</table>
	</div>
    <div data-options="region:'south',height:180,title:'答案'">
	<table id="baseAnswerTable" class="easyui-datagrid"  data-options="fit:true,
			url:'findAnswer.do',
			toolbar:'#answerTb',
			singleSelect:true">
	<thead>
	<tr>
		<th data-options="field:'answerId'">编号</th>
		<th data-options="field:'answerText'">答案</th>
		<th data-options="field:'answerState',
							formatter:function(val,row,index){ 
								if(val==0)
									return '错误';
								if(val==1)
									return '正确';
							}">是否正确</th>
		<th data-options="field:'answerKeyword'">关键词</th> 
	</tr>
	</thead>
	</table>
	</div> 
	<div id="editItemWin"></div>
	<div id="itemTb">
  		有关知识点：
			<select  name="chapterId" class="easyui-combobox" id="chapterSearch"
						data-options="url:'showChapter.do',
										valueField:'chapterId',
										textField:'chapterName',
										width:150,
										onSelect:searchItem">
			</select>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="editItem()" data-options="iconCls:'icon-edit',plain:true"></a>
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="delItem()" data-options="iconCls:'icon-cut',plain:true"></a>
  	</div>
  	<div id="answerTb">
  	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="editAnswer()" data-options="iconCls:'icon-edit',plain:true"></a>
  	</div>
</div>
  </body>
</html>
