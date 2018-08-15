<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - Form Showcase</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="css/lib/bootstrap-wysihtml5.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/uniform.default.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/select2.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/bootstrap.datepicker.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/form-showcase.css" type="text/css" media="screen" />


    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

    <!-- navbar -->
    <%@include file="head.jsp" %>
    <!-- end navbar -->


	<!-- main container -->
    <div class="content">
        
        <div class="container-fluid" style="margin-left:150px;margin-right:150px">
            <div id="pad-wrapper" class="form-page">
                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span8 column">
                        <form id="ff" method="post">
                            <div class="field-box">
                                <label>第一阶段内容:</label>
                                <textarea name="stage1" class="span8" rows="4"></textarea>
                            </div>
                            <div class="field-box">
                                <label>截至时间:</label>
                                <input type="text" name="time1" class="input-large datepicker" />
                            </div>
                            <div class="field-box">
                                <label>第二阶段内容:</label>
                                <textarea name="stage2" class="span8" rows="4"></textarea>
                            </div>
                            <div class="field-box">
                                <label>截至时间:</label>
                                <input type="text" name="time2" class="input-large datepicker" />
                            </div>
                            <div class="field-box">
                                <label>最终意见:</label>
                                <div class="wysi-column">
                                    <textarea name="stage3" id="wysi" class="span10 wysihtml5" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="span11 field-box actions">
                                    <input id="sub" type="button" class="btn-glow primary" value="提交" />
                                    <span>或</span>
                                    <a href="index.jsp"  class="btn-glow primary">取消</a>
                                    <a id="print"  class="btn-glow primary">打印</a>
                                </div>
                        </form>
                    </div>

                    <!-- right column -->
                    <div class="span4 column pull-right">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->

	<!-- scripts for this page -->
    <script src="js/wysihtml5-0.3.0.js"></script>
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-wysihtml5-0.0.2.js"></script>
    <script src="js/bootstrap.datepicker.js"></script>
    <script src="js/jquery.uniform.min.js"></script>
    <script src="js/select2.min.js"></script>
    <script src="js/theme.js"></script>

    <!-- call this page plugins -->
    <script type="text/javascript">
        $(function () {
        	$("#sub").click(function() {  
               	var jsonData=$("#ff").serializeArray(); 
               	$.ajax({
            		url:"addEmChangeAdvance.do",
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
        	$("#print").click(function() {  
               	$.ajax({
            		url:"printPaper.do",
            		type:"POST",
            		dataType : "json",  
                  success : function(data) {  
                    alert("成功！");  
                  },  
                  error : function(data) {  
                	  alert("您的文件已存储至：D:\Programming Software\Tomcat\webapps\hrts\word！");  
                  }  
                });  
        	 }); 
            // add uniform plugin styles to html elements
            $("input:checkbox, input:radio").uniform();

            // select2 plugin for select elements
            $(".select2").select2({
                placeholder: "Select a State"
            });

            // datepicker plugin
            $('.datepicker').datepicker().on('changeDate', function (ev) {
                $(this).datepicker('hide');
            });

            // wysihtml5 plugin on textarea
            $(".wysihtml5").wysihtml5({
                "font-styles": false
            });
        });
    </script>

</body>
</html>