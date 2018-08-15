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
</head>
<body>
<script type="text/javascript">
	function fun(){
		var a=5;
		var b="tianjin";
		var c={id:123,name:'张飞'};
		var d=[{id:123,name:'张飞'},{id:125,name:'关羽'}];
		var e=[3,5,76];
		alert(d[1].name);
		alert(e[2]);
	}
</script>
	<input type="button" value="go" onclick="fun();" />
</body>
</html>