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
		$("#editUserForm").submit();
	}
	function clearForm(){
		$("#editUserForm").form("clear");
	}
	$(function(){
		$("#editUserForm").form({
			url:"editUserSave.do",
			success:function(data){
				//alert(data);
				var json = eval('('+data+')');
				$.messager.alert("提示",json.msg);
				if(json.state==1){					
					$("#userWin").window("close");
					$("#userTable").datagrid("load");
				}
			}
		});
		$("#editUserForm").form("load",row);
	});
  </script>
    <form id="editUserForm" method="post">
      <table>
       <tr><td><input name="userId" type="hidden"></td></tr>
       <tr><td>用户姓名</td>
       <td><input type="text" name="name"class="easyui-validatebox" required></td>
       </tr>
       <tr><td>密码</td>
       <td><input type="text" name="pwd"class="easyui-validatebox" required></td></tr>
       <tr><td>E-mail</td>
       <td><input type="text" name="email"class="easyui-validatebox" required></td></tr>
      </table>
    </form>
    <div style="text-align:center; padding:5px">
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitEdit()">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
  </body>
</html>
