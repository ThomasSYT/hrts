<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'paperSelItem.jsp' starting page</title>
    <link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <script type="text/javascript">
    function showPart(rec){
    	var url="findItemPart.do?paperId="+rec.paperId;
		$("#showPart").combobox("reload",url);
    }
    function submitForm(){
    	$("#setItem").submit();
    }
    function clearForm(){
    	$("#setItem").form("clear");
    }
    $(function(){
    	$("#setItem").form({
    	url:"paperSetItem.do",
    	success:function(data){
    	    var json=eval('('+data+')');
    	    if(json.state==1){
    	    	$.messager.alert("提示",json.msg);
    	    }
    	}
    	});
    })
  </script>
       <form id="setItem">
         <table>
            <tr><td>选择试卷：</td>
            <td><select id="showPaper" name="paperId" class="easyui-combobox"
            data-options="url:'showPaper.do',
            valueField:'paperId',
            textField:'paperName',
            width:160,
            panelHeight:'auto',
            onSelect:showPart
            ">
            <option value="请选择..."></option></select></td>
            </tr>
            <tr><td>试卷题型：</td>
            <td><select id="showPart" name="partId" class="easyui-combobox" 
            data-options="panelHeight:'auto',
            valueField:'partId',
            textField:'partName',
            panelHeight:'auto',
            width:160">
			<option value="请选择..."></option></select></td>
            </tr>
            <tr><td>该类型试题数量：</td>
            <td><input type="text" name="count" value="0"></td>
            </tr>
         </table>
         </form>
	<div style="padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">生成试题</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
  </body>
</html>
