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
    <link rel="stylesheet" type="text/css" href="css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/new-user.css" type="text/css" media="screen" />

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


   <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
              
             <li>
             <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a class="dropdown-toggle" href="#">
                   <!--  <i class="icon-home"></i> -->
                   <i class="icon-group"></i>
                    <span>人事管理</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="user-list.jsp">员工管理</a></li>
                    <li><a href="new-user.jsp">部门管理</a></li>
                    <li><a href="user-profile.jsp">级别管理</a></li>
                    <li><a href="new-user.jsp">招聘管理</a></li>
                    <li><a href="user-profile.jsp">离职登记</a></li>
                </ul>
            </li>  
                    
            
            <li>          
                <a class="dropdown-toggle" href="#">
                    <!-- <i class="icon-signal"></i> -->
                    <i class="icon-crop"></i>
                    <span>工作指标管理</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="user-list.jsp">部门指标管理</a></li>
                    <li><a href="new-user.jsp">员工指标管理</a></li>
                    <li><a href="user-profile.jsp">我的工作指标</a></li>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <!-- <i class="icon-group"></i> -->
                    <i class="icon-calendar-empty"></i>
                    <span>工作日志管理</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="user-list.jsp">项目组日志</a></li>
                    <li><a href="new-user.jsp">员工日志</a></li>
                    <li><a href="user-profile.jsp">我的日志</a></li>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                <i class="icon-code-fork"></i>
                    
                    <span>培训考勤管理</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="user-list.jsp">请假申请</a></li>
                    <li><a href="new-user.jsp">申请处理</a></li>
                    <li><a href="user-profile.jsp">我的请求</a></li>
                    <li><a href="user-list.jsp">培训登记</a></li>
                    <li><a href="new-user.jsp">外出登记</a></li>
                    <li><a href="user-profile.jsp">我的培训</a></li>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>工作考核</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="user-list.jsp">我的成绩</a></li>
                    <li><a href="new-user.jsp">员工考核处理</a></li>
                    <li><a href="user-profile.jsp">标准考核入口</a></li>
                    <li><a href="user-list.jsp">考核申诉</a></li>
                    
                </ul>
            </li>
            
             <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-location-arrow"></i>
                    <span>工作改进</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="user-list.jsp">能力态度分级</a></li>
                    <li><a href="new-user.jsp">基于ISO体系修改意见</a></li>
       
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-rocket"></i>
                    <span>考核激励</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="user-list.jsp">能力薪资分级</a></li>
                    <li><a href="new-user.jsp">薪资管理</a></li>
      			    <li><a href="new-user.jsp">职务调整</a></li>
                </ul>
            </li>
            
            <li>
                <a href="calendar.jsp">
                    <i class="icon-calendar-empty"></i>
                    <span>日历</span>
                </a>
            </li>
            <li>
                <a href="chart-showcase.jsp">
                    <i class="icon-th-large"></i>
                    <span>图表</span>
                </a>
            </li>
            
        </ul>
    </div>
    <!-- end sidebar -->


	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->
        <div class="skins-nav">
            <a href="#" class="skin first_nav selected">
                <span class="icon"></span><span class="text">Default</span>
            </a>
            <a href="#" class="skin second_nav" data-file="css/skins/dark.css">
                <span class="icon"></span><span class="text">Dark skin</span>
            </a>
        </div>
        
        <div class="container-fluid">
            <div id="pad-wrapper" class="new-user">
                <div class="row-fluid header">
                    <h3>Create a new user</h3>
                </div>

                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span9 with-sidebar">
                        <div class="container">
                            <form class="new_user_form inline-input" />
                                <div class="span12 field-box">
                                    <label>Name:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>State:</label>
                                    <div class="ui-select span5">
                                        <select>
                                            <option value="AK" />Alaska
                                            <option value="HI" />Hawaii
                                            <option value="CA" />California
                                            <option value="NV" />Nevada
                                            <option value="OR" />Oregon
                                            <option value="WA" />Washington
                                            <option value="AZ" />Arizona
                                        </select>
                                    </div>
                                </div>
                                <div class="span12 field-box">
                                    <label>Company:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>Email:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>Phone:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>Website:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>Address:</label>
                                    <div class="address-fields">
                                        <input class="span12" type="text" placeholder="Street address" />
                                        <input class="span12 small" type="text" placeholder="City" />
                                        <input class="span12 small" type="text" placeholder="State" />
                                        <input class="span12 small last" type="text" placeholder="Postal Code" />
                                    </div>
                                </div>
                                <div class="span12 field-box textarea">
                                    <label>Notes:</label>
                                    <textarea class="span9"></textarea>
                                    <span class="charactersleft">90 characters remaining. Field limited to 100 characters</span>
                                </div>
                                <div class="span11 field-box actions">
                                    <input type="button" class="btn-glow primary" value="Create user" />
                                    <span>OR</span>
                                    <input type="reset" value="Cancel" class="reset" />
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- side right column -->
                    <div class="span3 form-sidebar pull-right">
                        <div class="btn-group toggle-inputs hidden-tablet">
                            <button class="glow left active" data-input="inline">INLINE INPUTS</button>
                            <button class="glow right" data-input="normal">NORMAL INPUTS</button>
                        </div>
                        <div class="alert alert-info hidden-tablet">
                            <i class="icon-lightbulb pull-left"></i>
                            Click above to see difference between inline and normal inputs on a form
                        </div>                        
                        <h6>Sidebar text for instructions</h6>
                        <p>Add multiple users at once</p>
                        <p>Choose one of the following file types:</p>
                        <ul>
                            <li><a href="#">Upload a vCard file</a></li>
                            <li><a href="#">Import from a CSV file</a></li>
                            <li><a href="#">Import from an Excel file</a></li>
                        </ul>
                    </div>
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

            // toggle form between inline and normal inputs
            var $buttons = $(".toggle-inputs button");
            var $form = $("form.new_user_form");

            $buttons.click(function () {
                var mode = $(this).data("input");
                $buttons.removeClass("active");
                $(this).addClass("active");

                if (mode === "inline") {
                    $form.addClass("inline-input");
                } else {
                    $form.removeClass("inline-input");
                }
            });
        });
    </script>

</body>
</html>