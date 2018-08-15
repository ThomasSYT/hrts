<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'paperPrint.jsp' starting page</title>
    
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/demo.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
   
  </head>
  <body>
  <script type="text/javascript">
  function print(){
	  var url="printPaper.do";
	  $.post(url);
  }
  </script>
  <form>
  <div style="font-size:20px; text-align:center;">
  ${paperName}
  <a href="javascript:void(0)" onClick="print()" style="font-size:20px;text-align:right;">导出</a>
  </div>
  <table>
   <s:forEach items="${pPart}" var="part" varStatus="pSta">
   <tr><td style="width:50px;">第${pSta.index+1}大题</td>
   <td>${part.partName}(${part.partPoints}分)</td></tr>
    <tr><td><s:forEach items="${pItems[pSta.index]}" var="items" varStatus="iSta">
      <tr><td align="right" valign="top">${iSta.index+1}、</td>
      <td>${items.itemTitle}</td></tr>
      <tr><td>
           <s:if test="${items.itemKind==1 or items.itemKind==2}">
           <tr><td style="text-align:right;">A</td>
           <td>${ans[iSta.index][0].answerText}</td></tr>
           <tr><td style="text-align:right;">B</td>
           <td>${ans[iSta.index][1].answerText}</td></tr>
           <tr><td style="text-align:right;">C</td>
           <td>${ans[iSta.index][2].answerText}</td></tr>
           <tr><td style="text-align:right;">D</td>
           <td>${ans[iSta.index][3].answerText}</td></tr>
           </s:if>
           <s:if test="${items.itemKind==3 or items.itemKind==4}">
           <tr><td></td></tr>
           </s:if>
           <s:if test="${items.itemKind==5 or items.itemKind==6}">
           <tr><td style="height:200px;"></td></tr>
           </s:if>
      </s:forEach></td></tr>
   </s:forEach>
  </table>
  </form>
 </body>
</html>
