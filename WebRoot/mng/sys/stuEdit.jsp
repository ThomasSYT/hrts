<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stuEdit.jsp' starting page</title>
    
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

  </head>
  
  <body>
  <script type="text/javascript">
    function submitEdit(){
		$("#editStuForm").submit();
	}
	function clearForm(){
		$("#editStuForm").form("clear");
	}
	$(function(){
		$("#editStuForm").form({
			url:"editStuSave.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#stuWin").window("close");
					$("#stuTable").datagrid("load");
				}
			}
		});
		$("#editStuForm").form("load",row);
	});
  </script>
    <form id="editStuForm" method="post" enctype="multipart/form-data">
      <table>
       <tr><td><input name="stuId" type="hidden"></td></tr>
       <tr><td>学生姓名</td>
       <td><input type="text" name="stuName"class="easyui-validatebox" required></td>
       </tr>
       <tr><td>班级</td>
       <td><input type="text" name="departId"class="easyui-validatebox" required></td></tr>
       <tr><td>家庭住址</td>
       <td><input type="text" name="address"class="easyui-validatebox" ></td></tr>
       <tr><td>电话</td>
       <td><input type="text" name="tel"class="easyui-validatebox" required></td></tr>
      </table>
    </form>
    <div style="text-align:center; padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEdit()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
  </body>
</html>
