<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>开始考试</title>
<link href="js/css2.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
<!--
.STYLE3 {font-size: 18px; }
.STYLE4 {font-size: 18px; font-weight: bold; }
.STYLE5 {color: #FF0000}
-->
</style>
<body >
<script type="text/javascript">
$(function(){
		
				if(sT()){
					alert("调用成功！");
					}
		
	});

 var ksTime; //定义考试时间以分钟计算
 ksTime =120;//设置时间 
 if(readCookie("ss")==""){
  setCookie("ss",new Date(),ksTime/60);
 }
 function sT(){
  var tti = new Date();
  var lt  = parseInt((tti-new Date(readCookie("ss")))/1000)
  if((ksTime*60-lt)==1){
   setCookie("ss",new Date(),0);
   alert("考试时间到!\n即将提交试卷!");
   document.examForm.submit();
  }else{
  	lm = Math.floor(lt / 60);
	ls = lt % 60;
	allY = ksTime*60-lt;
	ym = Math.floor(allY / 60);
	ys = allY % 60;
	
	if(ym==0&&ys==1){
	alert("考试时间到!\n即将提交试卷!");
   	document.examForm.submit();
	}
   document.getElementById("tTime").innerHTML = "考试已经开始了" + lm + "分" + ls + "秒" + ",剩余"  + ym + "分" + ys + "秒";
   var ttt = setTimeout("sT()",1000);
  }
 }

 function readCookie(name) { 
  var cookieValue = ""; 
  var search = name + "="; 
  if(document.cookie.length > 0) { 
   offset = document.cookie.indexOf(search); 
   if (offset != -1) { 
    offset += search.length; 
    end = document.cookie.indexOf(";", offset); 
    if (end == -1) 
     end = document.cookie.length; 
    cookieValue = document.cookie.substring(offset, end) 
   } 
  } 
  return cookieValue; 
 }  

 function setCookie(name, value, hours) { 
  var expire = ""; 
  if(hours != null) { 
   expire = new Date((new Date()).getTime() + hours * 3600000); 
   expire = "; expires=" + expire.toGMTString(); 
  } 
  document.cookie = name + "=" + value + expire; 
 }
 </script>
</head>


<table width="1003" height="485" border="0" cellpadding="0" cellspacing="0" class="centerbg">
  <tr>
    <td width="149" height="485">&nbsp;</td>
    <td width="741" valign="top" class="rightbian">
	 <form action="submitExam.action" method="post">
	<table width="98%" border="0" align="center" cellpadding="0" cellspacing="10">
      <tr>
        <td><div align="center" class="STYLE3">考试时间：120 分钟</div></td>
        <td><div align="center" class="STYLE3">考生：${sessionScope.studentInfo.stuName}</div></td>
        <td><div align="center" class="STYLE3">总分 ：100 分</div></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><div id="tTime"></div></td>
        <td>&nbsp;</td>
      </tr>
     
	  <!--题目开始-->
	  <%-- <s:forEach items="${pPart}" var="part"  varStatus="pSta">
	   <tr><td style="width:50px;">第${pSta.index+1}大题</td>
  		 <td>${part.partName}(${part.partPoints}分)</td></tr> --%>
	  	 <s:forEach items="${pItems[pSta.index]}" var="items" varStatus="sta">
	  	
        <td colspan="3"><strong>第<span class="STYLE5">${sta.index + 1}</span>题&nbsp;${items.itemTitle}</strong></td>
      </tr>
      <tr>
        <td colspan="3"><strong>A．</strong>${ans[iSta.index][0].answerText}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>B．</strong>${ans[iSta.index][1].answerText}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>C．</strong>${ans[iSta.index][2].answerText}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>D．</strong>${ans[iSta.index][3].answerText}</td>
      </tr>
      <tr>
        <td height="32" colspan="3" bgcolor="#CCCCCC">选择答案：
          <input type="radio" name="subjectAnswer${sta.index}" value="A" checked="checked"/>
          A
          <input type="radio" name="subjectAnswer${sta.index}" value="B" />
          B
          <input type="radio" name="subjectAnswer${sta.index}" value="C" />
          C
          <input type="radio" name="subjectAnswer${sta.index}" value="D" />
          D</td>
      </tr>
      </s:forEach>
	 <%--  </s:forEach> --%>
	   <!--题目结束-->
      <tr>
        <td colspan="3"><div align="center">
          <input type="submit" value=" 提交答卷 " name="Submit" />
        </div></td>
      </tr>
    </table>
     </form>
    </td>
    <td width="113">&nbsp;</td>
  </tr>
</table>
</body>
</html>
