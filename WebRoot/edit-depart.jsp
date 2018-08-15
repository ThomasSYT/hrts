<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" type="text/css" href="css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/personal-info.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

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
                <form id="ff"  method="post">
                    <h5 class="personal-title">部门信息</h5>
                    	<input hidden="hidden" name="dtId" value="${DepartShow.dtId }">
                        <div class="field-box">
                            <label>部门名称:</label>
                            <input class="span5 inline-input" type="text" name="dtName" value="${DepartShow.dtName}" />
                        </div>
                        <div class="field-box">
                                <label>创建时间:</label>
                                <input type="text" value="${DepartShow.dtCreatTime}" name="dtCreatTime" class="input-large datepicker" />
                        </div>
                        <div class="field-box">
                            <label>部门描述:</label>
                            <input class="span5 inline-input" type="text"  value="" />
                        </div>
                        <div class="span6 field-box actions">
                            <input id="sub" type="submit" class="btn-glow primary" value="保存" />
                            <span>或</span>
                            <a href="department-manage.jsp"  class="btn-glow primary">取消</a>
                        </div>
                         </form>
                        </div>
                </div>
                
            </div>
        </div>
    <!-- end main container -->


	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
<script type="text/javascript">
        $(function () {
        	$("#sub").click(function() {  
               	var jsonData=$("#ff").serializeArray(); 
               	$.ajax({
            		url:"editDepartSave.do",
            		data:jsonData,
            		type:"POST",
            		dataType : "json",  
                  success : function(data) {  
                    alert("成功！");  
                  },  
                  error : function(data) {  
                	  alert("更新成功！");  
                  }  
                });  
              }); 
        });
    </script>
</body>
</html>