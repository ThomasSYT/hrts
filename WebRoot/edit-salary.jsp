<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - New User Form</title>
    
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
    <link rel="stylesheet" href="css/compiled/new-user.css" type="text/css" media="screen" />


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
        
        <div class="container-fluid" style="margin-left:80px">
            <div id="pad-wrapper" class="new-user" >
                <div class="row-fluid header">
                    <h3>薪资修改</h3>
                </div>

                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span9 with-sidebar">
                        <div class="container">
                            <form id="ff" method="post" >
                                <div class="span12 field-box">
                                    <label>姓名:</label>
                                    <input disabled="disabled" value="${payDShow.payEmName}">
                                </div>
                                <div class="span12 field-box">
                                    <label>基本工资:</label>
                                    <input hidden="hidden" name="payId" value="${payDShow.payId}">
                                    <input name="payBaseMoney" value="${payDShow.payBaseMoney}" class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>加班费:</label>
                                    <input name="payOvertime" value="${payDShow.payOvertime}" class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>保险:</label>
                                    <input name="paySafety" value="${payDShow.paySafety}" class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>补助:</label>
                                    <input name="payAbsent" value="${payDShow.payAbsent}" class="span9" type="text" />
                                </div>
                                <div class="field-box">
                                <label>发薪日:</label>
                                <input name="payMonth" value="${payDShow.payMonth}" type="text"  class="input-large datepicker" />
                            	</div>
                                <div class="span11 field-box actions">
                                    <input id="sub" type="button" class="btn-glow primary" value="确认" />
                                    <span>或</span>
                                    <a href="salary-manager.jsp"  class="btn-glow primary">取消</a>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- side right column -->
                    <div class="span3 form-sidebar pull-right">
                        <div class="btn-group toggle-inputs hidden-tablet">
                            <button class="glow left active" data-input="inline">提</button>
                            <button class="glow right" data-input="normal">示</button>
                        </div>
                        <div class="alert alert-info hidden-tablet">
                            <i class="icon-lightbulb pull-left"></i>
                            	认真填写信息后，系统将注销您的账户。谢谢您对本公司的付出，祝您今后一切顺利。
                        </div>                        
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
            		url:"changePay.do",
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