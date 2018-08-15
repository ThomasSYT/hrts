<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
	<script type="text/javascript">
	function onclick(node){
		if(node.attributes==null) return;
		if($("#workbar").tabs("exists",node.text)){
			$("#workbar").tabs("select",node.text);
			var tab=$("#workbar").tabs("getSelected");
			$("#workbar").tabs("update",{
				tab:tab,
				options:{
					href:node.attributes,
					closable:true
				}
			})
		}else
			$("#workbar").tabs("add",
				{title:node.text,
				href:node.attributes,
				closable:true
			});
	}
	$(function(){
		$("#sysmenu").tree({
			 url:'funSysTree.do', 
			 onClick:function(node){
				 onclick(node);
			 }
		});
		$("#itemmenu").tree({
			url:'funItemTree.do',
			onClick:function(node){
				onclick(node);
			}
		});
		$("#papermenu").tree({
			url:'funPaperTree.do',
			onClick:function(node){
				onclick(node);
			}
		});
		$("#testmenu").tree({
			url:'funTestTree.do',
			onClick:function(node){
				onclick(node);
			}
		});
	});
	/* $(function(){
		$("#sysmenu").tree({
			 url:'funSysTree.do',
			 onClick:function(node){
					if(node.attributes==null) return;
					if($("#workbar").tabs("exists",node.text)){
						$("#workbar").tabs("select",node.text);
						var tab=$("#workbar").tabs("getSelected");
						$("#workbar").tabs("update",{
							tab:tab,
							options:{
								href:node.attributes,
								closable:true
							}
						})
					}else
						$("#workbar").tabs("add",
							{title:node.text,
							href:node.attributes,
							closable:true
						});
				}
			 });
		}); */
	</script>
	<div class="easyui-accordion" fit="true">
	<s:if test="${user.roleId==1}">
		<div data-options="title:'人事管理',iconCls:'icon-ok'">
		<ul id="sysmenu" fit="true">
		</ul>		
		</div>
	</s:if>
      <s:if test="${user.roleId==3 or user.roleId==1}">
		<div data-options="title:'工作指标管理',iconCls:'icon-ok'">
		<ul id="itemmenu" fit="true">
		</ul>
		</div>
		<div data-options="title:'工作日志管理',iconCls:'icon-ok'">
		<ul id="papermenu" fit="true">
		</ul>
		</div>
		<div data-options="title:'工作考核',iconCls:'icon-ok'">
		<ul id="" fit="true">
		</ul>
		<div data-options="title:'工作改进',iconCls:'icon-ok'">
		<ul id="" fit="true">
		</ul>
		<div data-options="title:'薪酬调整',iconCls:'icon-ok'">
		<ul id="" fit="true">
		</ul>
		</div>
	  </s:if>
	</div>
</body>
</html>