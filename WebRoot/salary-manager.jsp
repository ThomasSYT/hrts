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
   
	<%@include file="menu6.jsp" %>
	<div id="bbb" class="content">
	 <!-- settings changer --> 
        <div class="container-fluid" >
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3 id="admin">薪资管理</h3>
                    <div class="span10 pull-right">
                        <!-- custom popup filter -->
                         <div class="row-fluid filter-block">
                        <div class="pull-right">
							<a id="input" class="btn-flat new-product">查询</a>
                            <input type="text" class="search" />
                            <a href="add-salary.jsp" class="btn-flat new-product">添加薪资</a>
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
                                    <th class="span2">
                                        <span class="line"></span>发薪日
                                    </th>
                                    <th class="span2">
                                        <span class="line"></span>基本工资
                                    </th>        
                                     <th class="span2">
                                        <span class="line"></span>加班费
                                    </th>                                  
                                    <th class="span2">
                                        <span class="line"></span>保险
                                    </th>
                                    <th class="span2">
                                        <span class="line"></span>补助
                                    </th>                            
                                     <th class="span3">
                                        <span class="line"></span>操作
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                               <!-- row -->
                               <s:forEach varStatus="list" items="${pslist}">
                               <tr>
                                   <td>
  										${list.index+1}
                                   </td>
                                   <td class="description">
                                      ${pslist[list.index].payEmName}
                                   </td>
                                   <td class="description">
                                      ${pslist[list.index].payMonth}
                                   </td>
                                   <td class="description">
                                      ${pslist[list.index].payBaseMoney}
                                   </td>
                                   <td class="description">
                                      ${pslist[list.index].payOvertime}
                                   </td>
                                   <td class="description">
                                      ${pslist[list.index].paySafety}
                                   </td>
                                   <td class="description">
                                      ${pslist[list.index].payAbsent}
                                   </td>
                                   <td>
										<ul class="actions">
											<a href="payDShow.do?id=${pslist[list.index].payId}" class="btn-glow small primary"> <i  class="setting"></i>
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
        url : 'payShow.do',  
        success : function(data) {
        var json=eval('('+data+')'); 
        },
        error : function() {  
          alert("error");  
        },  
      });
});

</script> 
       