<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <h3>编辑日志</h3>
                </div>

                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span9 with-sidebar">
                        <div class="container">
                            <form id="ff" method="post" />
                                <div class="span12 field-box">
                                    <label>姓名:</label>
                                    <input disabled="disabled" class="span9" type="text" name="tlEmname" value="${logPShow.tlEmname }"/>
                                </div>
                                <div class="span12 field-box">
                                    <label>任务名:</label>
                                    <div class="ui-select">
										<select name="taskId">
											<c:forEach items="${mtlist}" varStatus="list">
												<option value=${mtlist[list.index].taskId}>${mtlist[list.index].basetarget}</option>
											</c:forEach>
										</select>
									</div>
                                </div>
                                <div class="span12 field-box">
                                    <label>日志名:</label>
                                    <input hidden="hidden" name="logId" value="${logPShow.logId }">
                                    <input  class="span9" type="text" name="logname" value="${logPShow.logname }"/>
                                </div>
                                <div class="field-box">
                                <label>创建时间:</label>
                                <input  type="text" name="date" class="input-large datepicker" value="${logPShow.date }"/>
                            	</div>
                                <div class="span12 field-box textarea ">
                                    <label>日志内容:</label>
                                    <textarea  class="span9" name="logtext" >${logPShow.logtext }</textarea>
                                    <span class="charactersleft" >填写限制在100个字</span>
                                </div>
                                <div class="span11 field-box actions">
                                    <input id="sub" type="button" class="btn-glow primary" value="确认" />
                                    <span>或</span>
                                    <a href="my-log.jsp"  class="btn-glow primary">取消</a>
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
                            	日志作为工作指标的重要评价内容，将在本系统中计入考核评分。
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
            		url:"editLog.do",
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