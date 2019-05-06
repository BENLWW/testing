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
<title>成绩查询页面</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/select-ui.min.js"></script>
<script type="text/javascript" src="../js/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
function delcfm() {
    if (!confirm("确认要删除？")) {
        window.event.returnValue = false;
    }
}
</script>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/mainpage/scorecheck.jsp">

	<div class="place" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/mainpage/scorecheck.jsp">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="<%=path%>/login/main">首页</a></li>
    <li><a href="<%=path%>/mainpage/gradescoreinfo">成绩信息</a></li>
    <li>学生成绩</li>
    <li>成绩查询</li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
  	<div id="tab2" class="tabson">
    <div class="seachform">
    <c:if test="${pm.check=='Y'}">
    <form  action="seacherstudent" method="post">
    	<table>
	    	<tr><td colspan="9"><span>查询成绩（以下信息必填）</span></td></tr>
	    	<tr>
	    		<td><label>学生姓名</label></td>
	    		<th><input name="sName" type="text" class="scinput" /></th>
	    		<td><label>学生学号</label></td>
	    		<th><input name="sNumber" type="text" class="scinput" /></th>
	    		<td><label>成绩</label></td>
	    		<th><input name="score" type="text" class="scinput" /></th>
	    		<td><label>科&nbsp;&nbsp;目</label></td>
	    		<th>
	    		<div class="vocation">
			    <select class="select3" name="subject">
				<c:forEach  items="${subjects}" var="subject" varStatus="vs">
			    <option value="${subject.subjectId}">${subject.subjectName}</option>
				</c:forEach>
				</select>
			    </div>
				</th>
	    		<td></td>
	    	</tr>
	    	<tr>
	    		<td><label>考试时间</label></td>
	    		<th><input name="sJTime" type="date" class="scinput" /></th>
	    		<td><label>任课教师工号</label></td>
	    		<th><input name="sTeacherNumber" type="text" class="scinput" /></th>
	    		<td><label>批改教师工号</label></td>
	    		<th><input name="mTeacherNumber" type="text" class="scinput" /></th>
	    		<td><label>学&nbsp;&nbsp;期</label></td>
	    		<th>    
	    		<div class="vocation">
			    <select class="select3" name="sTeam">
			    <option value="第一学期">第一学期</option>
			    <option value="第二学期">第二学期</option>
			    </select>
			    </div>
			    </th>
			    <c:if test="${pm.inputting=='Y'}">
	    		<td colspan="6"><span><input name="" type="submit" class="scbtn" value="查询"/></span></td></c:if>
	    		<td></td>
	    	</tr>
	    	<tr><td colspan="9"><span><c:forEach items="${info}" var="f" varStatus="n">${f}</c:forEach>${Msg}
	    	</span></td></tr>
	    </table>
	    </form>
    </c:if>
    </div>
    <hr />
    <div class="rightinfo">
    <table class="tablelist">
    	<thead>
        <c:if test="${pm.delete=='Y'||pm.modifacation=='Y'||pm.inputting=='Y'}">
        <th></th>
        </c:if>
        <th>编号<i class="sort"><img src="../images/px.gif" /></i></th>
        <th>科目</th>
        <th>成绩</th> 
        <th>学号|姓名</th>
        <th>工号|任课教师</th>
		<th>工号|批改人</th>
		<th>评语</th>
        <th>考试时间</th>
        <th>学期</th>
        <c:if test="${pm.modifacation=='Y'||pm.delete=='Y'}"><th>操作</th></c:if>
        </thead>
        <tbody><c:if test="${not empty scores}"><c:forEach items="${scores}" var="scoreExtension" varStatus="vs">  
		<tr><c:if test="${pm.delete=='Y'||pm.modifacation=='Y'||pm.inputting=='Y'}">
		 <td><input name="" type="checkbox" value="" /></td></c:if>
		 <td align = "center">${vs.count}</td>  
		 <td align = "center">${scoreExtension.subject}</td>  
		 <td align = "center">${scoreExtension.score.score}</td>  
		 <td align = "center">${scoreExtension.score.studentNumber}|${scoreExtension.studentName}</td>  
		 <td align = "center">${scoreExtension.score.subjectTeacherNumber}|${scoreExtension.subjectTeacherName}</td>
		 <td align = "center">${scoreExtension.score.modificationTeacherNumber}|${scoreExtension.modificationTeacherName}</td>
		 <td align = "center"><fmt:formatDate value="${scoreExtension.score.scoreJoinTime}" pattern="yyyy年MM月dd日"/></td> <!-- scoreTeam --> 
		 <td align = "center">${scoreExtension.score.descript}</td>
		 <td align = "center">${scoreExtension.score.scoreTeam}</td>
		 <td>
		 <c:if test="${pm.modifacation=='Y'}"><a href="<%=path%>/mainpage/modificationPage?Team=${Team}&grade=${grade}&id=${scoreExtension.score.scoreId}" class="tablelink">修改</a></c:if>     
		 <c:if test="${pm.delete=='Y'}"><a href="<%=path%>/mainpage/delinfoscore?Team=${Team}&grade=${grade}&id=${scoreExtension.score.scoreId}" class="tablelink" onClick="delcfm()">删除</a></c:if>
		 </td>
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
        <span><img src="../images/ticon.png" /></span>
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
    </div>  
       
	</div> 
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
