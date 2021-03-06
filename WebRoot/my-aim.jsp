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
   
	<%@include file="menu1.jsp" %>
	<div id="bbb" class="content">
	<!-- settings changer --> 
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3 id="admin">我的工作指标</h3>
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
                                    <th class="span2">
                                        <span class="line"></span>基本目标
                                    </th>
                                    <th class="span2">
                                        <span class="line"></span>挑战性目标
                                    </th>
                                    <th class="span2">
                                        <span class="line"></span>开始时间
                                    </th>
                                    <th class="span2">
                                        <span class="line"></span>结束时间
                                    </th>
                                     <th class="span3">
                                        <span class="line"></span>操作
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                               <!-- row -->
                               <s:forEach varStatus="list" items="${mtlist}">
                               <tr>
                                   <td>
  										${list.index+1}
                                   </td>
                                   <td class="description">
                                      ${mtlist[list.index].taEmname}
                                   </td>
                                   <td class="description">
                                      ${mtlist[list.index].basetarget}
                                   </td>
                                   <td class="description">
                                      ${mtlist[list.index].challengetarget}
                                   </td>
                                   <td class="description">
                                      ${mtlist[list.index].begintime}
                                   </td>
                                   <td class="description">
                                      ${mtlist[list.index].deadline}
                                   </td>
                                   <td>
										<ul class="actions">
											<a id="delete" class="btn-flat new-product" 
											href="MytaskShow.do?id=${mtlist[list.index].taskId}">查看详情</a>
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
    <script src="js/theme.js"></script>
<!-- scripts -->

<script src="js/bootstrap.min.js"></script>

<script src="js/jquery-1.11.1.js"></script>
<script src="js/jquery.json-2.2.min.js"></script>

<script type="text/javascript"> 
$(document).ready(  
    function() {  
      jQuery.ajax( {  
        type : 'GET',    
        url : 'myTaskShow.do',  
        success : function(data) {  
        	//alert(data[0].emId);//返回的已经是对象了        
        },  
        error : function() {  
          alert("error");  
        }  
      });  
    });
</script> 
        
        