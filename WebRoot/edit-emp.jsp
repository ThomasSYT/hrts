<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="container-fluid">
        	
            <div class="settings-wrapper" id="pad-wrapper">
                <!-- avatar column -->
                <div class="span3 avatar-box">
                    <div class="personal-image">
                        <img src="img/personal-info.png" class="avatar img-circle" />
                        <p>更新一张图片...</p>
                        
                        <input type="file" />
                    </div>
                </div>

                <!-- edit form column -->
                
                <div class="span7 personal-info">
                <form id="ff" method="post">
                    <h5 class="personal-title">个人信息</h5>
                    
                        <div class="field-box">
                            <label>姓名:</label>
                            <input hidden="hidden" name="emId" value="${userPShow.emId }" />
                            <input class="span5 inline-input" type="text" name="emName" value="${userPShow.emName}" />
                        </div>
                        <div class="field-box">
                            <label>性别:</label>
                            <input class="span5 inline-input" type="text" name="emSex" value="${userPShow.emSex}" />
                        </div>
                        <div class="field-box">
                            <label>年龄:</label>
                            <input class="span5 inline-input" type="text" name="emAge" value="${userPShow.emAge} " />
                        </div>
                        <div class="field-box">
                            <label>出生日期:</label>
                            <input class="span5 inline-input" type="text" name="emBorn" value="${userPShow.emBorn}" />
                        </div>
                        
                        <div class="field-box">
                            <label>职务:</label>
                            <input class="span5 inline-input" type="text" name="emBz" value="${userPShow.emBz}" />
                        </div>
                        <div class="field-box">
                            <label>学历:</label>
                            <input class="span5 inline-input" type="text" name="emIsstock" value="${userPShow.emIsstock}" />
                        </div>
                        <div class="field-box">
                            <label>电话:</label>
                            <input class="span5 inline-input" type="text" name="emTel" value="${userPShow.emTel}" />
                        </div>
                        <div class="field-box">
                            <label>毕业院校:</label>
                            <input class="span5 inline-input" type="text" name="emAfterSchool" value="${userPShow.emAfterSchool}" />
                        </div>
                        <div class="field-box">
                            <label>所学专业:</label>
                            <input class="span5 inline-input" type="text" name="emTeachSchool" value="${userPShow.emTeachSchool}" />
                        </div>
                        <div class="field-box">
                            <label>工作经验:</label>
                            <input class="span5 inline-input" type="text" name="emExperience" value="${userPShow.emExperience}" />
                        </div>
                        <div class="span6 field-box actions">
                            <input id="sub" type="submit" class="btn-glow primary" value="保存" />
                            <span>或</span>
                            <a href="emp-manage.jsp"  class="btn-glow primary">取消</a>
                            <s:if test="${user.roleId==1}">
                            <a href="signup.jsp"  class="btn-glow primary">设置登录信息</a>
                            </s:if>
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
            		url:"updateUserMassage.do",
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