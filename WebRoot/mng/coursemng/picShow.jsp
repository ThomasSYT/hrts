<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <base href="<%=basePath%>">
</head>
<body>
	<img alt="" src="stuShowPic.do?stuId=<%=request.getParameter("stuId") %>"
		width="120" height="120"/>
</body>
</html>

