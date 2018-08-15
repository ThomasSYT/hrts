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
   
	<%@include file="menu.jsp" %>
	<div id="bbb" class="content">
	<!-- settings changer --> 
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3 id="admin">角色管理</h3>
                    <div class="span10 pull-right">
                        <!-- custom popup filter -->
                         <div class="row-fluid filter-block">
                        <div class="pull-right">
							<a id="input" class="btn-flat new-product">查询</a>
                            <input type="text" class="search" />
                            <a href="add-role.jsp" class="btn-flat new-product">添加角色</a>
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
                                <th class="span3">
                                       	 序号
                                    </th>
                                    <th class="span4">
                                       	 姓名
                                    </th>
                                    <th class="span4">
                                        <span class="line"></span>角色名
                                    </th>                                  
                                    <th class="span4">
                                        <span class="line"></span>操作
                                    </th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                               <!-- row -->
                               <s:forEach varStatus="list" items="${roleList}">
                               <tr>
                                   <td>
  										${list.index+1}
                                   </td>
                                   <td class="description">
                                      ${roleList[list.index].roleName}
                                   </td>
                                   <td class="description">
                                      ${roleList[list.index].detail}
                                   </td>
                                   <%-- <td class="description">
                                      ${roleList[list.index].emTel}
                                   </td> --%>
                                   <td>
										<ul class="actions">
											<a href="rolePShow.do?id=${roleList[list.index].roleId}" class="btn-glow small primary"> <i  class="setting"></i>
											</a>

											<a id="delete" class="btn-flat new-product" 
											href="delRole.do?id=${roleList[list.index].roleId}">删除</a>
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
	
    </div>

<!-- scripts -->

<script src="js/bootstrap.min.js"></script>

<script src="js/theme.js"></script>
        
        
<script src="js/jquery-1.11.1.js"></script>

<script type="text/javascript"> 
$(document).ready(  
    function() {  
      jQuery.ajax( {  
        type : 'GET',    
        url : 'roleShow.do',  
        success : function(data) {  
        },  
        error : function() {  
          alert("error");  
        }  
      });  
     });
</script> 
    <!-- end main container -->