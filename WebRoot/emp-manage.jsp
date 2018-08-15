<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="container-fluid" >
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3 id="admin">员工管理</h3>
                    <div class="span10 pull-right">
                        <!-- custom popup filter -->
                         <div class="row-fluid filter-block">
                        <div class="pull-right">
                            <div class="ui-select">
								<select id="sel"> 
									<option value='1' <s:if test='${sel == "1"}'>  selected='selected'  </s:if>>管理员</option>
									<option value='2' <s:if test='${sel == "2"}'>  selected='selected'  </s:if>>部门经理</option>
									<option value='3' <s:if test='${sel == "3"}'>  selected='selected'  </s:if>>员工</option>
								</select>
							</div>
							<a id="input" class="btn-flat new-product">查询</a>
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
											<a href="userPShow.do?id=${ulist[list.index].emId}" class="btn-glow small primary"> <i  class="setting"></i>
											</a>

											<a id="delete" class="btn-flat new-product" 
											href="userRemove.do?id=${ulist[list.index].emId}">删除</a>
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
                      <!-- 分页开始/分页需要向后台传递一个参数 -->
                      <li></li>
                        <li><a href='selectPage.do?pageNum=1'>首页|</a></li>
                        <li>
                        <c:choose>  
                            <c:when test="${pageNum - 1 ge 1}">  
                                <a href='selectPage.do?pageNum=${pageNum-1}'>上一页|</a>  
                            </c:when>  
                            <c:otherwise>  
                                <a href='selectPage.do?pageNum=1'>上一页|</a>  
                            </c:otherwise>  
                        </c:choose>
                        </li>  
                        <li>
                        <c:choose>  
                            <c:when test="${pageNum + 1 le pageCount}">  
                                <a href='selectPage.do?pageNum=${pageNum+1}'>下一页|</a>  
                            </c:when>  
                            <c:otherwise>  
                                <a href='selectPage.do?pageNum=${pageCount}'>下一页|</a>  
                            </c:otherwise>  
                        </c:choose>  
                        </li>                       
                        <li><a href='selectPage.do?pageNum=${pageCount}'>末页</a></li>   
                          <li><a>第<%=request.getParameter("pageNum") %>页/共${pageCount}页 </a></li> 
                          <li></li>                     
             		<!-- 分页结束 -->
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
      /* jQuery.ajax( {  
        type : 'GET',    
        url : 'userShow.do',  
        success : function(data) {
        var json=eval('('+data+')'); 
        },
        error : function() {  
          alert("error");  
        },  
      });  */
      $("#input").click(function() {
    	  var id=$("select option:selected").val();
      	  if(id == 1){
    	  jQuery.ajax( {  
    	        type : 'GET',    
    	        url : 'adminShow.do',  
    	        success : function(data) {  
    	        	window.location.reload();      
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
      	        	window.location.reload(); 
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
      	        	window.location.reload();      
      	        },  
      	        error : function() {  
      	          alert("error");  
      	        }	
  			});
  			}
      });
});

</script> 
        
