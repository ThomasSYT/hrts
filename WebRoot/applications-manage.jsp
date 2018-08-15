<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - User list</title>
    
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
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/user-list.css" type="text/css" media="screen" />


    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
 <!-- navbar -->
    <%@include file="head.jsp" %>
    <!-- end navbar -->

    <!-- sidebar -->
   
	<%@include file="menu.jsp" %>
	<div id="bbb" class="content">
	<!-- settings changer --> 
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3>招聘管理</h3>
                    <div class="span10 pull-right">
                        <div class="row-fluid filter-block">
                        <div class="pull-right" >
                        	<form action="MHEselect.do" method="post">
							<input name="MHname" type="text" placeholder="员工查询" required>
							<button type="submit" class="btn-flat new-product">查询</button>
							<a href="add-emp.jsp" class="btn-flat new-product">添加员工</a>
							</form>
                        </div>
                        </div>
                    </div>
                </div>

                <!-- Users table -->
                <div class="table-products section">
                    

                    <div class="row-fluid">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th class="span2">
                                       	 序号
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>姓名
                                    </th>                                  
                                    <th class="span3">
                                        <span class="line"></span>学历
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>毕业院校
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>工作经验
                                    </th>
                                     <th class="span3">
                                        <span class="line"></span>操作
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                               <!-- row -->
                               <s:forEach varStatus="list" items="${applist}">
                               <tr>
                                   <td>
  										${list.index+1}
                                   </td>
                                   <td class="description">
                                      ${applist[list.index].emName}
                                   </td>
                                   <td class="description">
                                      ${applist[list.index].emIsstock}
                                   </td>
                                   <td class="description">
                                      ${applist[list.index].emAfterSchool}
                                   </td>
                                   <td class="description">
                                      ${applist[list.index].emExperience}
                                   </td>
                                   <td class="description">
                                   <input id="yijihuo" hidden="hidden" value="${applist[list.index].emId}" /><button onclick="javascript:{this.disabled=true;}" class="btn wysihtml5-command-active" id="luyong">录用</button>
										<ul class="actions" style="float:right;  margin-top: 0pt">
											<a href="userPShow.do?id=${applist[list.index].emId}" class="btn-glow small primary" style="margin-top: 0pt"> <i id="set" class="setting"></i>
											</a>
										</ul>
									</td>
                               </tr>
                               </s:forEach>
                                <!-- row -->
                            </tbody>
                        </table>
                    </div>
                    <div class="pagination">
                      <ul>
                        <li><a href="#">&#8249;</a></li>
                        <li><a class="active" href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">&#8250;</a></li>
                      </ul>
                    </div>
                   
                </div>
                <!-- end users table -->
            </div>
        </div>

    <!-- end main container -->
	
    </div>

<!-- scripts -->

<script src="js/bootstrap.min.js"></script>

<script src="js/jquery-1.11.1.js"></script>
<script src="js/jquery.json-2.2.min.js"></script>
<script src="js/theme.js"></script>
<script type="text/javascript"> 
$(document).ready(  
    function() {  
      jQuery.ajax( {  
        type : 'GET',    
        url : 'applicantShow.do',  
        success : function(data) {  
        },  
        error : function() {  
          alert("error");  
        }  
      });  
    });
      $("#luyong").click(function() {
      var emId=$("#yijihuo").val();
      alert("员工编号："+emId);
    		jQuery.ajax( {  
    		        type : 'POST',    
    		        url : 'changeToY.do',
    		        data:{"emId":emId},
    		        success : function(data) { 
    		        	var json=eval('('+data+')'); 
    		        	alert(json.msg);    
    		        },  
    		        error : function() {  
    		          alert("f");  
    		        }	
    			});
    	 });  
</script> 
        
        