<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sysFun.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <script type="text/javascript">
      var sysFunState=1;
      var sysFunNode;
      $(function(){
    	  $("#editfuntree").tree({
    		 url:'funShowTree.do',
    		 onClick:function(node){
    			 
    			 sysFunNode=node;
    		 }
    	  });
      });
      function doFunAdd(){
    	  sysFunState=1;
    	  //alert(sysFunNode);
    	  if(sysFunNode==null){
    		  $.messager.alert("提示","请先选中节点");
    		  return;
    	  }
    	  $("#upfuntext").val(sysFunNode.text);
    	  $("#upfunid").val(sysFunNode.id);
      }
      function doFunEdit(){
    	  sysFunState=2;
    	  if(sysFunNode==null){
    		  $.messager.alert("提示","请先选中节点");
    		  return;
    	  }
    	  var pnote=$("#editfuntree").tree("getParent",sysFunNode.target);
    	  $("#upfuntext").val(pnote.text);
    	  $("#upfunid").val(pnote.id);
    	  $("#funId").val(sysFunNode.id);
    	  $("#funtext").val(sysFunNode.text);
    	  $("#funattributes").val(sysFunNode.attributes);
      }
      function doFunDel(){
    	  var sf=sysFunNode;
    	  if(sysFunNode==null){
    		  $.messager.alert("提示","请先选中节点");
    		  return;
    	  }
    	  $.messager.confirm("警告","是否删除"+sf.text+"!",
    		function(n){
    		  if(n){
    			  var url="delfunSave.do?id="+sf.id;
    			  $.post(url,function(data){
    				  var json=eval('('+data+')');
					$.messager.alert("提示",json.msg);
					if(json.state==1){
						$("#editfuntree").tree("reload");
					}	
				});
    		  }
    	  });
      }
      function submitfun(){
    	  //alert();
    	  var actionurl="addfunSave.do";
    	  if(sysFunState==2){
    		  actionurl="editfunSave.do";
    	  }
    	  $("#funForm").form("submit",{
    		  url:actionurl,
    		  success:function(data){
    			var json = eval('('+data+')');
  				$.messager.alert("提示",json.msg);
  				if(json.state==1){					
  					$("#funForm").form("reset");
  					$("#editfuntree").tree("reload");
  				}
    		  }
    	  });
      }
      function clearfun(){
    	  $("#funForm").form("clear");
      }
    </script>
    <div class="easyui-layout" fit="true">
      <div data-options="region:'west',title:'系统功能',width:290,split:true,tools:'#sysfuntreebtn'">
       <div id="sysfuntreebtn">
        <a class="icon-add" onclick="doFunAdd()"></a>
        <a class="icon-edit" onclick="doFunEdit()"></a>
        <a class="icon-cut" onclick="doFunDel()"></a>
       </div>
       <ul id="editfuntree"></ul>
      </div>
      <div data-options="region:'center'">
        <form action="" id="funForm" method="post">
          <table>
            <tr>
            <td>上级菜单</td>
            <td>
            <input type="text" id="upfuntext" readonly="readonly">
            <input type="hidden" id="upfunid" name="sys_funId">
            </td>
            </tr>
            <tr>
            <td>名称</td>
            <td>
            <input type="text" name="text" id="funtext" 
            class="easyui-vaildatebox" required="true">
            <input type="hidden" name="funId" id="funId" value="0">
            </td>
            </tr>
            <tr>
            <td>访问地址</td>
            <td>
            <input type="text" name="attributes" id="funattributes">
            </td>
            </tr>
            <tr><td>访问权限</td>
            <td><input type="radio" name="roleId" value="1">管理员
                <input type="radio" name="roleId" value="2">学生
                <input type="radio" name="roleId" value="3">教师</td>
            </tr>
          </table>
        </form>
        <div style="padding:5px">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitfun()">保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearfun()">重置</a>
        </div>
      </div>
    </div>
  </body>
</html>
