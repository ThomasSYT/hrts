<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	/* window.onload = ind;//不要括号
	function ind() {
	$("#bbb").load("AAAAA.jsp");		
	} */
	$(function() {
		$("#departmanage").click(function() {
			$("#bbb").load("hrtJsp/humanManage/department-manage.jsp");
			});
		$("#rolemanage").click(function() {
			$("#bbb").load("hrtJsp/humanManage/role-manage.jsp");
			});
		$("#applicationsmanage").click(function() {
			$("#bbb").load("hrtJsp/humanManage/applications-manage.jsp");
			});
		$("#departmentaim").click(function() {
			$("#bbb").load("hrtJsp/jobAim/department-aim.jsp");
			});
		$("#empaim").click(function() {
			$("#bbb").load("hrtJsp/jobAim/emp-aim.jsp");
			});
		$("#myaim").click(function() {
			$("#bbb").load("hrtJsp/jobAim/my-aim.jsp");	
			});
		$("#departlog").click(function() {
			$("#bbb").load("hrtJsp/jobLog/depart-log.jsp");	
			});
		$("#emplog").click(function() {
			$("#bbb").load("hrtJsp/jobLog/emp-log.jsp");
			});
		$("#mylog").click(function() {
			$("#bbb").load("hrtJsp/jobLog/my-log.jsp");	
			});
		$("#dealrequest").click(function() {
			$("#bbb").load("hrtJsp/attendance/deal-request.jsp");
			});
		$("#myrequest").click(function() {
			$("#bbb").load("hrtJsp/attendance/my-request.jsp");	
			});
		$("#mylearn").click(function() {
			$("#bbb").load("hrtJsp/attendance/my-learn.jsp");	
			});
		$("#ablititydepart").click(function() {
			$("#bbb").load("hrtJsp/jobImprove/ablitity-depart.jsp");
			});
		$("#totaldepart").click(function() {
			$("#bbb").load("hrtJsp/examImprove/total-depart.jsp");	
			});
		$("#salarymanager").click(function() {
			$("#bbb").load("hrtJsp/examImprove/salary-manager.jsp");	
			});
		$("#jobchange").click(function() {
			$("#bbb").load("hrtJsp/examImprove/job-change.jsp");	
			});

	});
	
</script>
 <div id="sidebar-nav">
        <div id="dashboard-menu">
            <li class="active">
                <a class="dropdown-toggle" href="#">
                   <i class="icon-group"></i>
                    <span>人事管理</span>
                    
                </a>
                <ul class="submenu active">
                 <s:if test="${user.roleId==1 or user.roleId==2}"> 
                    <li><a href="selectPage.do?pageNum=1&goodType=0" >员工管理</a></li>
                    <s:if test="${user.roleId==1}">
                    <li><a href="department-manage.jsp">部门管理</a></li>
                    <li><a href="role-manage.jsp">级别管理</a></li>
                    </s:if>
                    <li><a href="applications-manage.jsp">招聘管理</a></li>
                    </s:if> 
                    <li><a href="retire-user.jsp">离职登记</a></li>
                    
                </ul>
            </li>  
                    
            
            <li>          
                <a class="dropdown-toggle" href="#">
                    <!-- <i class="icon-signal"></i> -->
                    <i class="icon-crop"></i>
                    <span>工作指标管理</span>
                    
                </a>
                <ul class="submenu">
                <s:if test="${user.roleId==1 or user.roleId==2}">
                    <li><a href="department-aim.jsp">部门指标管理</a></li>
                    <li><a href="emp-aim.jsp">员工指标管理</a></li>
                    </s:if>
                    <s:if test="${user.roleId==1 or user.roleId==2 or user.roleId==3}">
                    <li><a href="my-aim.jsp">我的工作指标</a></li>
                    </s:if>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <!-- <i class="icon-group"></i> -->
                    <i class="icon-calendar-empty"></i>
                    <span>工作日志管理</span>
                    
                </a>
                <ul class="submenu">
                <s:if test="${user.roleId==1 or user.roleId==2}">
                    <li><a href="depart-log.jsp">项目组日志</a></li>
                    <li><a href="emp-log.jsp">员工日志</a></li>
                    </s:if>
                    <s:if test="${user.roleId==1 or user.roleId==2 or user.roleId==3}">
                    <li><a href="my-log.jsp">我的日志</a></li>
                    </s:if>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                <i class="icon-code-fork"></i>
                    
                    <span>培训考勤管理</span>
                    
                </a>
                <ul class="submenu">
                    <s:if test="${user.roleId==1 or user.roleId==2 or user.roleId==3}">
                    <li><a href="leave-set.jsp">请假申请</a></li>
                    <s:if test="${user.roleId==1 or user.roleId==2}">
                    <li><a href="deal-request.jsp">申请处理</a></li>
                    </s:if>
                    <li><a href="my-request.jsp">我的请求</a></li>
                    <li><a href="learn-set.jsp">培训登记</a></li>
                    <li><a href="leaveOut-set.jsp">外出登记</a></li>
                    <li><a href="my-learn.jsp">我的培训</a></li>
                    </s:if>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>工作考核</span>
                    
                </a>
                <ul class="submenu">
                <s:if test="${user.roleId==1 or user.roleId==2 or user.roleId==3 or user.roleId==4}">
                    <li><a href="chart-showcase.jsp">我的成绩</a></li>
                    <s:if test="${user.roleId==1 or user.roleId==3}">
                    <li><a href="emp-exam-show.jsp">员工考核入口</a></li>
                    </s:if>
                    <s:if test="${user.roleId==1 or user.roleId==4}">
                    <li><a href="standard-exam-show.jsp">标准考核入口</a></li>
                    </s:if>
                    <li><a href="exam-complain.jsp">考核申诉</a></li>
                    </s:if>
                </ul>
            </li>
            <s:if test="${user.roleId==1 or user.roleId==2}">
             <li class="active">
                <a class="dropdown-toggle" href="#">
                    <i class="icon-location-arrow"></i>
                    <span>工作改进</span>
                    
                </a>
                <ul class="submenu active">
                    <li><a href="ablitity-depart.jsp">能力态度分级</a></li>
                    <li><a href="advice.jsp">基于ISO体系修改意见</a></li>
       
                </ul>
            </li>
            </s:if>
            <s:if test="${user.roleId==1 or user.roleId==2}">
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-rocket"></i>
                    <span>考核激励</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="total-depart.jsp">能力薪资分级</a></li>
                    <li><a href="salary-manager.jsp">薪资管理</a></li>
                </ul>
            </li>
            </s:if>
            <li>
                <a href="charts.jsp">
                    <i class="icon-th-large"></i>
                    <span>图表</span>
                </a>
            </li>
            
        </div>
    </div>
    <!-- main container -->
    <!-- <div id="bbb" class="content">
    </div> -->

    <!-- end sidebar -->