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
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	function show(){
		//var val=$("tr:first td:last").html();
		//var dd=$("#dd").html("<font color='red'>天津工大</font>");
		var dd=$("#dd td:last").html("<font color='red'>天津工大</font>");
	}
</script>
</head>
<body bgcolor="yellow">
	test2 page
	<table border="1">
		<tr><td>a</td><td>b</td></tr>
		<tr  id="dd"><td>c</td><td>d</td></tr>
		<tr><td>e</td><td>f</td></tr>
	</table>
</body>
	<input type="button" value="do" onclick="show();"/>

</html>