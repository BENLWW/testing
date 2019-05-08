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
<title>成绩修改页面</title>
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

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-5" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/mainpage/modificationPage.jsp">

	<div class="place" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-5" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/mainpage/modificationPage.jsp">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="<%=path%>/login/main">首页</a></li>
    <li><a href="<%=path%>/mainpage/gradescoreinfo">成绩信息</a></li>
    <li>学生成绩</li>
    <li>成绩修改</li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
  	<div id="tab2" class="tabson">
    <div class="seachform">
    <c:if test="${pm.check=='Y'}">
    <c:forEach items="${scores}" var="score" varStatus="vs">
    <form  action="modification" method="post">
	    <table>
	    	<tr><td colspan="9"><span>新增成绩（以下信息必填）</span></td></tr>
	    	<tr>
	    		<td><input type="hidden" name="sID" value="${sID}"/></td>
	    		<td><label>学生学号</label></td>
	    		<th><input readonly="readonly" name="sNumber" type="text" value="${score.score.studentNumber}" class="scinput" /></th>
	    		<td><label>任课教师工号</label></td>
	    		<th><input name="sTeacherNumber" value="${score.score.subjectTeacherNumber}" type="text" class="scinput" /></th>
	    		<td><label>成绩</label></td>
	    		<th><input name="score" value="${score.score.score}" type="text" class="scinput" /></th>
	    		<td><label>科&nbsp;&nbsp;目</label></td>
	    		<th>
	    		<div class="vocation">
			    <select class="select3" name="subject">
			    <option value="${score.score.subjectId}">${score.subject}</option>
				</select>
			    </div>
				</th>
	    		<td></td>
	    	</tr>
	    	<tr>
	    		<td></td>
	    		<td><label>考试时间</label></td><!--  name="sJTime" -->
	    		<th><input name="sJTime" value="${scoreJoinTime}" type="text" class="scinput" /></th>
	    		<td><label>批改教师工号</label></td>
	    		<th><input name="mTeacherNumber" value="${score.score.modificationTeacherNumber}" type="text" class="scinput" /></th>
	    		<td><label>学&nbsp;&nbsp;期</label></td>
	    		<th>    
	    		<div class="vocation">
			    <select class="select3" name="sTeam">
			    <c:if test="${score.score.scoreTeam=='第一学期'}">
				    <option value="第一学期" selected="selected">第一学期</option>
				    <option value="第二学期">第二学期</option>
			    </c:if>
			    <c:if test="${score.score.scoreTeam=='第二学期'}">
				    <option value="第一学期">第一学期</option>
				    <option value="第二学期" selected="selected">第二学期</option>
			    </c:if>
			    </select>
			    </div>
			    </th>
			    <c:if test="${pm.modifacation=='Y'}">
	    		<td colspan="2"><span><input name="" type="submit" class="scbtn" value="修改"/></span></td></c:if>
	    		<td></td>
	    	</tr>
	    	<tr><td colspan="9"><span><c:forEach items="${info}" var="f" varStatus="n">${f}</c:forEach>${Msg}
	    	</span></td></tr>
	    </table>
	    </form></c:forEach>
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
		 <td align = "center">${scoreExtension.score.scoreTeam}</td>
		 <td> 
		 <c:if test="${pm.delete=='Y'}"><a href="<%=path%>/mainpage/delinfoscore?id=${scoreExtension.score.scoreId}" class="tablelink" onClick="delcfm()">删除</a></c:if>
		 </td>
		 </tr></c:forEach></c:if>
        </tbody>
    </table>
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
