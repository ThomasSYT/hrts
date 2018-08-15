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
<script type="text/javascript">
	var ajax;
	function show(){
		ajax = new XMLHttpRequest();
		if(ajax!=null){
			ajax.onreadystatechange=myCallback;
			ajax.open("post","jsp/test2.jsp",true);
			ajax.send(null);
			
		}
	}
	function myCallback(){
		if(ajax.readyState==4){
			alert(ajax.status);
			if(ajax.status==200){
				window.document.getElementById("box").innerHTML=ajax.responseText;
				alert(ajax.responseText);
			}
		}
	}
</script>
</head>
<body>
	<input type="button" value="do" onclick="show();"/>
<div id="box" style="width: 200px;height: 200px;border-style: double;border-width: 1px;">
</div >

</body>
</html>