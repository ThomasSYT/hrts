<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - Grids</title>
    
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
    <link rel="stylesheet" href="css/compiled/grids.css" type="text/css" media="screen" />


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
        <div class="container-fluid" style="width:1349px">
            <div id="pad-wrapper" style="margin-left:150px;margin-right:150px">
                <!-- grid with .row-fluid -->
                <div class="grid-wrapper">
                <form id="ff" method="post">
                    <div class="row-fluid head">
                        <div class="span12">
                            <h4>业绩指标</h4>
                        </div>
                    </div>
                    <div class="row-fluid show-grid" style="height: 50px">
						<div style="float:left;margin-left: 20px" class="field-box">
						<h5>工作量：</h5>
							<input hidden="hidden" name="emId" value="${ExamShow.emId}">
							<input hidden="hidden" name="jbemname" value="${ExamShow.emName}">
							<select name="workload" style="width:180px;height:35px" class="select2">
								<option value="2" />轻松
								<option value="3" />较少
								<option value="5" />合适
								<option value="7" />较大
								<option value="10" />繁重
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
						<h5>工作质量：</h5>
							<select name="quality" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
						<h5>工作用时：</h5>
							<select name="timeuse" style="width:180px;height:35px" class="select2">
								<option value="1" />严重超时
								<option value="3" />稍有推迟
								<option value="5" />合适
								<option value="7" />稍有提早
								<option value="10" />提前完成
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
						<h5>业绩描述：</h5>
							<input type="text" name="performancetext">
						</div>
					</div>
                    <div class="row-fluid head">
                        <div class="span12">
                            <h4>能力指标</h4>
                        </div>
                    </div>
                    <div class="row-fluid show-grid" style="height: 50px">
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>沟通能力：</h5>
							<select name="communicate" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>决策能力：</h5>
							<select name="decision" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>创新能力：</h5>
							<select name="innovate" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>执行能力：</h5>
							<select name="execute" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
						<h5>能力描述：</h5>
							<input type="text" name="abilitytext">
						</div>
					</div>
					<div class="row-fluid head">
                        <div class="span12">
                            <h4>态度指标</h4>
                        </div>
                    </div>
                    <div class="row-fluid show-grid" style="height: 50px">
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>责任心：</h5>
							<select name="responsibility" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>纪律性：</h5>
							<select name="discipline" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>协作精神：</h5>
							<select name="cooperation" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
						<h5>态度描述：</h5>
							<input type="text" name="attitudetext">
						</div>
					</div>
					<div class="row-fluid head">
                        <div class="span12">
                            <h4>其他考核</h4>
                        </div>
                    </div>
                    <div class="row-fluid show-grid" style="height: 50px">
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>日志撰写情况：</h5>
							<select name="log" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>培训情况：</h5>
							<select name="learn" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
						<div style="float:left;margin-left: 20px" class="field-box">
							<h5>出勤情况：</h5>
							<select name="attendance" style="width:180px;height:35px" class="select2">
								<option value="1" />很差
								<option value="3" />较差
								<option value="5" />合适
								<option value="7" />较好
								<option value="10" />很好
							</select>
						</div>
					</div>
                     <div class="span11 field-box actions" style="margin: 50px 550px">
                                    <input id="sub" type="button" class="btn-glow primary" value="确认" />
                                    <span>或</span>
                                    <a href="index.jsp"  class="btn-glow primary">取消</a>
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
            		url:"addManExam.do",
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