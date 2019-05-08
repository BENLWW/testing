<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>年级信息</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
function delcfm() {
    if (!confirm("确认要删除？")) {
        window.event.returnValue = false;
    }
}
</script>


<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>


<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/mainpage/gradescoreinfo.jsp">

	<div class="place" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/mainpage/gradescoreinfo.jsp">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="<%=path%>/login/main">首页</a></li>
    <li>成绩信息</li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
<%--     <div class="tools">
    
    	<ul class="toolbar">
    	<c:if test="${pm.inputting=='Y'}"><li><a href="<%=path%>/mainpage/insertscore"><span><img src="../images/t01.png" /></span>添加</a></li></c:if>
       	<c:if test="${pm.check=='Y'}"><li><a href="<%=path%>/mainpage/seacherstudent"><span><img src="../images/t03.png" /></span>查询</a></li></c:if>
        </ul>
    
    </div> --%>
    
    <table class="tablelist">
    	<thead>
        <th>编号<i class="sort"><img src="../images/px.gif" /></i></th>
        <th>年级代号</th>
        <th>年级名</th>
        <th>级主任</th>
		<th>学生人数</th>
        <%-- <c:if test="${pm.modifacation=='Y'||pm.delete=='Y'}"><th>操作</th></c:if> --%>
        </thead>
        <tbody><c:if test="${not empty grades}"><c:forEach items="${grades}" var="gradeExtensions" varStatus="vs">  
		<tr>
		 <td align = "center">${vs.count}</td>  
		 <td align = "center">${gradeExtensions.grade.gradeCode}</td>  
		 <td align = "center">${gradeExtensions.grade.gradeName}[<a href="<%=path%>/mainpage/studentsore?Team=1&grade=${gradeExtensions.grade.gradeName}">第一学期</a>] [<a href="<%=path%>/mainpage/studentsore?Team=2&grade=${gradeExtensions.grade.gradeName}">第二学期</a>]</td>  
		 <td align = "center">${gradeExtensions.grade.tId}|${gradeExtensions.teacherName}</td>
		 <td align = "center">${gradeExtensions.count}</td>
		 <%-- <td><!--?Team=${Team}&grade=${grade}&--!>
		 <c:if test="${pm.modifacation=='Y'}"><a href="<%=path%>/mainpage/modificationPage?id=${scoreExtension.score.scoreId}" class="tablelink">修改</a></c:if>     
		 <c:if test="${pm.delete=='Y'}"><a href="<%=path%>/mainpage/delinfoscore?id=${scoreExtension.score.scoreId}" class="tablelink" onClick="delcfm()">删除</a></c:if>
		 </td> --%>
		 </tr></c:forEach></c:if>
        </tbody>
    </table>
    
   
<!--     <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div> -->
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    </div>
    </div>
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
