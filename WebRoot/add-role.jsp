<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - My Info</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />

    <!-- libraries -->
    <link href="css/lib/bootstrap-wysihtml5.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/uniform.default.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/select2.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/bootstrap.datepicker.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/personal-info.css" type="text/css" media="screen" />


    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

    <!-- navbar -->
    <%@include file="head.jsp" %>
    <!-- end navbar -->

	<!-- main container .wide-content is used for this layout without sidebar :)  -->
    <div class="content wide-content">
        <div class="container-fluid" style="width: 1349px">
        	
            <div class="settings-wrapper" id="pad-wrapper">

                <!-- edit form column -->
                
                <div class="span7 personal-info">
                <form id="ff" method="post">
                    <h5 class="personal-title">角色信息</h5>
                    
                        <div class="field-box">
                            <label>角色名称:</label>
                            <input class="span5 inline-input" id="roleName" type="text" name="roleName" />
                        </div>
                        <div class="field-box">
                                <label>角色描述:</label>
                                 <input type="text"  name="detail" id="detail" class="span5 inline-input" /> 
                        </div>
                        <div class="span6 field-box actions">
                            <input id="submit" type="submit" class="btn-glow primary" value="添加" />
                            <span>或</span>
                            <a href="role-manage.jsp"  class="btn-glow primary">取消</a>
                        </div>
                         </form>
                        </div>
                </div>
                
            </div>
        </div>
    <!-- end main container -->


	<!-- scripts for this page -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.datepicker.js"></script>
    <script src="js/jquery.uniform.min.js"></script>
    <script src="js/select2.min.js"></script>
    <script src="js/theme.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){  
$("#submit").click(function (){
	//var roleName = $("#roleName").val();  
    //var detail = $("#detail").val();  
    //var user = {roleName:roleName,detail:detail};//拼装成json格式  
	var jsonData=$("#ff").serializeArray(); 
	console.log(jsonData);
	//console.log(user);
	$.ajax({
		url:"addRole.do",
		data:jsonData,
		type:"POST",
		dataType : "json",
		success:function(data){  
            alert("成功");  
        },  
        error:function(e) {
        	alert("成功了"); 
        }  
	});
});
});
</script> 

</body>
</html>