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
                    <h5 class="personal-title">个人信息</h5>
                    <form action="editEmpSave.do" method="post">
                        <div class="field-box">
                            <label>姓名:</label>
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
                            <input type="button" class="btn-glow primary" value="保存" />
                            <span>或</span>
                            <input type="reset" value="取消" class="reset" />
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

</body>
</html>