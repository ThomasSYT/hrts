<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	window.onload = ind;//不要括号
	function ind() {
	$("#bbb").load("AAAAA.jsp");		
	}
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
                    <li><a href="emindex.jsp" >员工管理</a></li>
                    <li><a href="hrtJsp/humanManage/department-manage.jsp">部门管理</a></li>
                    <li><a href="hrtJsp/humanManage/role-manage.jsp">级别管理</a></li>
                    <li><a href="hrtJsp/humanManage/applications-manage.jsp">招聘管理</a></li>
                    <li><a href="retire-user.jsp">离职登记</a></li>
                </s:if>   
                </ul>
            </li>  
                    
            
            <li>          
                <a class="dropdown-toggle" href="#">
                    <!-- <i class="icon-signal"></i> -->
                    <i class="icon-crop"></i>
                    <span>工作指标管理</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="hrtJsp/jobAim/department-aim.jsp">部门指标管理</a></li>
                    <li><a href="hrtJsp/jobAim/emp-aim.jsp">员工指标管理</a></li>
                    <li><a href=hrtJsp/jobAim/my-aim.jsp>我的工作指标</a></li>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <!-- <i class="icon-group"></i> -->
                    <i class="icon-calendar-empty"></i>
                    <span>工作日志管理</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="hrtJsp/jobLog/depart-log.jsp">项目组日志</a></li>
                    <li><a href="hrtJsp/jobLog/emp-log.jsp">员工日志</a></li>
                    <li><a href=hrtJsp/jobLog/my-log.jsp>我的日志</a></li>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                <i class="icon-code-fork"></i>
                    
                    <span>培训考勤管理</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="leave-set.jsp">请假申请</a></li>
                    <li><a href="hrtJsp/attendance/deal-request.jsp">申请处理</a></li>
                    <li><a href=hrtJsp/attendance/my-request.jsp>我的请求</a></li>
                    <li><a href="learn-set.jsp">培训登记</a></li>
                    <li><a href="leaveOut-set.jsp">外出登记</a></li>
                    <li><a href="hrtJsp/attendance/my-learn.jsp">我的培训</a></li>
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>工作考核</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="chart-showcase.jsp">我的成绩</a></li>
                    <li><a href="emp-exam.jsp">员工考核入口</a></li>
                    <li><a href="standard-exam.jsp">标准考核入口</a></li>
                    <li><a href="exam-complain.jsp">考核申诉</a></li>
                    
                </ul>
            </li>
            
             <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-location-arrow"></i>
                    <span>工作改进</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href=hrtJsp/jobImprove/ablitity-depart.jsp>能力态度分级</a></li>
                    <li><a href="advice.jsp">基于ISO体系修改意见</a></li>
       
                </ul>
            </li>
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-rocket"></i>
                    <span>考核激励</span>
                    
                </a>
                <ul class="submenu">
                    <li><a href="hrtJsp/examImprove/total-depart.jsp">能力薪资分级</a></li>
                    <li><a href="hrtJsp/examImprove/salary-manager.jsp">薪资管理</a></li>
      			    <li><a href="hrtJsp/examImprove/job-change.jsp">职务调整</a></li>
                </ul>
            </li>
            
            <li>
                <a href="charts.jsp">
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
            
        </div>
    </div>
    <!-- main container -->
    <!-- <div id="bbb" class="content">
    </div> -->

    <!-- end sidebar -->