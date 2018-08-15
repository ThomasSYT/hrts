<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - Code Editor</title>
    
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
    <link rel="stylesheet" type="text/css" href="css/code-editor.css" />

    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

    <!-- navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <button type="button" class="btn btn-navbar visible-phone" id="menu-toggler">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="brand" href="index.jsp"><img src="img/logo.png" /></a>

            <ul class="nav pull-right">                
               
                <!-- <li class="notification-dropdown hidden-phone">
                    <a href="#" class="trigger">
                        <i class="icon-warning-sign"></i>
                        <span class="count">8</span>
                    </a>
                    <div class="pop-dialog">
                        <div class="pointer right">
                            <div class="arrow"></div>
                            <div class="arrow_border"></div>
                        </div>
                        <div class="body">
                            <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                            <div class="notifications">
                                <h3>You have 6 new notifications</h3>
                                <a href="#" class="item">
                                    <i class="icon-signin"></i> New user registration
                                    <span class="time"><i class="icon-time"></i> 13 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <i class="icon-signin"></i> New user registration
                                    <span class="time"><i class="icon-time"></i> 18 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <i class="icon-envelope-alt"></i> New message from Alejandra
                                    <span class="time"><i class="icon-time"></i> 28 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <i class="icon-signin"></i> New user registration
                                    <span class="time"><i class="icon-time"></i> 49 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <i class="icon-download-alt"></i> New order placed
                                    <span class="time"><i class="icon-time"></i> 1 day.</span>
                                </a>
                                <div class="footer">
                                    <a href="#" class="logout">View all notifications</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li> -->
               
                <li class="notification-dropdown hidden-phone">
                    <a href="#" class="trigger">
                        <i class="icon-envelope-alt"></i>
                    </a>
                    <div class="pop-dialog">
                        <div class="pointer right">
                            <div class="arrow"></div>
                            <div class="arrow_border"></div>
                        </div>
                        <div class="body">
                            <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                            <div class="messages">
                                <a href="#" class="item">
                                    <img src="img/contact-img.png" class="display" />
                                    <div class="name">Alejandra GalvÃ¡n</div>
                                    <div class="msg">
                                        There are many variations of available, but the majority have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 13 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <img src="img/contact-img2.png" class="display" />
                                    <div class="name">Alejandra GalvÃ¡n</div>
                                    <div class="msg">
                                        There are many variations of available, have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 26 min.</span>
                                </a>
                                <a href="#" class="item last">
                                    <img src="img/contact-img.png" class="display" />
                                    <div class="name">Alejandra GalvÃ¡n</div>
                                    <div class="msg">
                                        There are many variations of available, but the majority have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 48 min.</span>
                                </a>
                                <div class="footer">
                                    <a href="#" class="logout">View all messages</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                
                <li class="settings hidden-phone">
                    <a href="personal-info.jsp" role="button">
                        <i class="icon-cog"></i>
                    </a>
                </li>
                <li class="settings hidden-phone">
                    <a href="signin.jsp" role="button">
                        <i class="icon-share-alt"></i>
                    </a>
                </li>
            </ul>            
        </div>
    </div>
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
            <div id="pad-wrapper">
                <div class="row-fluid editor-header">
                    <div class="span12">
                        <h4>Ace Code Editor</h4>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span12">
                        <div id="editor">/**
 * In fact, you're looking at ACE right now. Go ahead and play with it!
 *
 * We are currently showing off the JavaScript mode. ACE has support for 45
 * language modes and 24 color themes!
 */

function add(x, y) {
    var resultString = "Hello, ACE! The result of your math is: ";
    var result = x + y;
    return resultString + result;
}

var addResult = add(3, 2);
console.log(addResult);

// build all tooltips from data-attributes
$("[data-toggle='tooltip']").each(function (index, el) {
    $(el).tooltip({
        placement: $(this).data("placement") || 'top'
    });
});</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->

	<!-- scripts for this page -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
    <script src="http://rawgithub.com/ajaxorg/ace-builds/master/src-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>

    <script type="text/javascript">
        var editor = ace.edit("editor");
        // editor.setTheme("ace/theme/github");
        editor.getSession().setMode("ace/mode/javascript");
    </script>

</body>
</html>