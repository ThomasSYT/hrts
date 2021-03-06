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
   
	<%@include file="menu3.jsp" %>
	<div id="bbb" class="content">
	<!-- settings changer --> 
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3 id="admin">我的请求</h3>
                    <div class="span10 pull-right">
                        <!-- custom popup filter -->
                         <div class="row-fluid filter-block">
                        <div class="pull-right">
                            <a href="leave-set.jsp" class="btn-flat new-product">添加请求</a>
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
                                    <th class="span2">
                                        <span class="line"></span>姓名
                                    </th>                                  
                                    <th class="span3">
                                        <span class="line"></span>请假原因
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>开始时间
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>结束时间
                                    </th>
                                     <th class="span3">
                                        <span class="line"></span>状态
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                               <!-- row -->
                               <s:forEach varStatus="list" items="${mrlist}">
                               <tr>
                                   <td>
  										${list.index+1}
                                   </td>
                                   <td class="description">
                                      ${mrlist[list.index].leemname}
                                   </td>
                                   <td class="description">
                                      ${mrlist[list.index].reasaon}
                                   </td>
                                   <td class="description">
                                      ${mrlist[list.index].begintime}
                                   </td>
                                   <td class="description">
                                      ${mrlist[list.index].endtime}
                                   </td>
                                   <td class="description">
                                   <s:if test="${arlist[list.index].lestate==0}">    
                                   	  <span id="act" class="label label-success">已激活</span>
                                   </s:if>
                                   <s:if test="${arlist[list.index].lestate==2}">    
                                   	  <span id="yes" class="label label-info">批准</span>
                                   </s:if>
                                   <s:if test="${arlist[list.index].lestate==3}">    
                                   	  <span id="no" class="label">未通过</span>
                                   </s:if>
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
<script src="js/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/theme.js"></script>

<script type="text/javascript"> 
$(document).ready(  
    function() {  
      jQuery.ajax( {  
        type : 'GET',    
        url : 'myRequireShow.do',  
        success : function(data) {  
        	//alert(data[0].emId);//返回的已经是对象了        
        },  
        error : function() {  
          alert("error");  
        }  
      }); 
      
      $("#input").click(function() {
    	  var id=$("select option:selected").val();
      	  if(id == 1){
    	  jQuery.ajax( {  
    	        type : 'GET',    
    	        url : 'myRequireShow.do',  
    	        success : function(data) {  
    	        	window.location.reload(true);      
    	        },  
    	        error : function() {  
    	          alert("error");  
    	        }	
			});
			}
      	  else if(id == 2){
      	  jQuery.ajax( {  
      	        type : 'GET',    
      	        url : 'managerShow.do',  
      	        success : function(data) {  
      	        	window.location.reload(true); 
      	        },  
      	        error : function() {  
      	          alert("error");  
      	        }	
  			});
  			}
      	  else if(id == 3){
      	  jQuery.ajax( {  
      	        type : 'GET',    
      	        url : 'employeeShow.do',  
      	        success : function(data) {  
      	        	window.location.reload(true);      
      	        },  
      	        error : function() {  
      	          alert("error");  
      	        }	
  			});
  			}
      });
    });
$("#delete").click(function() {
	jQuery.ajax( {  
	        type : 'GET',    
	        url : 'userRemove.do',  
	        success : function(data) {  
	        	window.location.reload(true);      
	        },  
	        error : function() {  
	          alert("error");  
	        }	
		});
 }); 
</script> 
        
                            