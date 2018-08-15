<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
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
   
	<%@include file="menu4.jsp" %>
	<div id="bbb" class="content">
	<!-- settings changer --> 
        <div class="container-fluid" >
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3 id="admin">员工考核入口</h3>
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
                                    <th class="span3">
                                       	 姓名
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>职务
                                    </th>                                  
                                    <th class="span3">
                                        <span class="line"></span>电话
                                    </th>
                                    <th class="span4">
                                        <span class="line"></span>操作
                                    </th>
                                     
                                </tr>
                            </thead>
                            <tbody>
                               <!-- row -->
                               <s:forEach varStatus="list" items="${ulist}">
                               <tr>
                                   <td>
  										${list.index+1}
                                   </td>
                                   <td class="description">
                                      ${ulist[list.index].emName}
                                   </td>
                                   <td class="description">
                                      ${ulist[list.index].emBz}
                                   </td>
                                   <td class="description">
                                      ${ulist[list.index].emTel}
                                   </td>
                                   <td>
										<ul class="actions">
											<a href="empExamShow.do?id=${ulist[list.index].emId}" class="btn-glow small primary">开始评价</a>
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
<script type="text/javascript"> 
$(document).ready(  
    function() {  
      jQuery.ajax( {  
        type : 'GET',    
        url : 'userShow.do',  
        success : function(data) {
        var json=eval('('+data+')'); 
        },
        error : function() {  
          alert("error");  
        },  
      });
});

</script> 
        
