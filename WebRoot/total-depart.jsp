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
   
	<%@include file="menu6.jsp" %>
	<div id="bbb" class="content">
	<!-- settings changer --> 
        <div class="container-fluid" >
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3 id="admin">能力薪资分级</h3>
                    <div class="span10 pull-right">
                        <!-- custom popup filter -->
                         <div class="row-fluid filter-block">
                        <div class="pull-right">
                            <div class="btn-group pull-right">
                                <button id="A" class="glow left large">评级A</button>
                                <button id="B" class="glow middle large">评级B</button>
                                <button id="C" class="glow right large">评级C</button>
                                <button id="D" class="glow right large">评级D</button>
                            </div>
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
                                    <th class="span3">
                                        <span class="line"></span>姓名
                                    </th>                                  
                                    <th class="span3">
                                        <span class="line"></span>考评数量
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>能力态度评分
                                    </th>                                   
                                     <th class="span4">
                                        <span class="line"></span>操作
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                               <!-- row -->
                               <s:forEach varStatus="list" items="${ablist}">
                               <tr>
                                   <td>
  										${list.index+1}
                                   </td>
                                   <td class="description">
                                      ${ablist[list.index].jbemname}
                                   </td>
                                   <td class="description">
                                      ${ablist[list.index].exnum}
                                   </td>
                                   <td class="description">
                                      ${ablist[list.index].total}
                                   </td>
                                   <td>
										<ul class="actions">
											<a href="userPShow.do?id=${ablist[list.index].emId}" class="btn-glow small primary"> <i  class="setting"></i>
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
    <script src="js/theme.js"></script>

<script type="text/javascript"> 
$(document).ready(  
    function() {  
      jQuery.ajax( {  
        type : 'GET',    
        url : 'totalDepartingA.do',  
        success : function(data) {
        var json=eval('('+data+')'); 
        },
        error : function() {  
          alert("error");  
        },  
      });
      $("#A").click(function() {
    	  jQuery.ajax( {  
    	        type : 'GET',    
    	        url : 'totalDepartingA.do',  
    	        success : function(data) {
    	        	location.reload() ; 
    	        },
    	        error : function() {  
    	          alert("error");  
    	        },  
    	      });
      });
      $("#B").click(function() {
    	  jQuery.ajax( {  
    	        type : 'GET',    
    	        url : 'totalDepartingB.do',  
    	        success : function(data) {
    	        	location.reload() ; 
    	        },
    	        error : function() {  
    	          alert("error");  
    	        },  
    	      });
      });
      $("#C").click(function() {
    	  jQuery.ajax( {  
    	        type : 'GET',    
    	        url : 'totalDepartingC.do',  
    	        success : function(data) {
    	        	location.reload() ; 
    	        },
    	        error : function() {  
    	          alert("error");  
    	        },  
    	      });
      });
      $("#D").click(function() {
    	  jQuery.ajax( {  
    	        type : 'GET',    
    	        url : 'totalDepartingD.do',  
    	        success : function(data) {
    	        	location.reload() ; 
    	        },
    	        error : function() {  
    	          alert("error");  
    	        },  
    	      });
      });
});

</script> 
                                        