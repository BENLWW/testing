<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head data-genuitec="wc1-11-36">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" data-genuitec="wc1-11-37"/>
<title data-genuitec="wc1-11-38">导航栏</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" data-genuitec="wc1-11-39"/>
<script language="JavaScript" src="../js/jquery.js" data-genuitec="wc1-11-40"></script>

<script type="text/javascript" data-genuitec="wc1-11-41">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body style="background:#f0f9fd;" data-genuitec="wc1-11-34" data-genuitec-lp-enabled="true" data-genuitec-file-id="wc1-11" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/otherpage/left.jsp">
	<div class="lefttop" data-genuitec="wc1-11-35" data-genuitec-lp-enabled="true" data-genuitec-file-id="wc1-11" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/otherpage/left.jsp"><span data-genuitec="wc1-11-42"></span>通讯录</div>
    
    <dl class="leftmenu" data-genuitec="wc1-11-43">
    <c:if test="${not empty menulist}">
    	<c:forEach items="${menulist}" var="menusparent" varStatus="ms">
    		<c:if test="${menusparent.menuParentNode == 0}">
    			<dd data-genuitec="wc1-11-47">
			    <div class="title" data-genuitec="wc1-11-48">
			    <span data-genuitec="wc1-11-49"><img src="../images/leftico01.png" data-genuitec="wc1-11-50"/></span>${menusparent.menuName}
			    </div>
			    <ul class="menuson" data-genuitec="wc1-11-51">
			    	<c:if test="${menusparent.menuLeafNode=='N'}">
			    	<c:forEach items="${menulist}" var="menuleft" varStatus="mf">
        				<c:choose>
        					<c:when test="${(ms.count==1)&&(mf.count==1)&&menusparent.menuId==menuleft.menuParentNode}">
        						<li class="active" data-genuitec="wc1-11-56"><cite data-genuitec="wc1-11-57"></cite><a href="<%=path %>/${menuleft.menuUrl}" target="rightFrame" data-genuitec="wc1-11-58">${menuleft.menuName}</a><i data-genuitec="wc1-11-59"></i></li>
        					</c:when>
        					<c:when test="${(mf.count!=1)&&menusparent.menuId==menuleft.menuParentNode}">
        						<li data-genuitec="wc1-11-61"><cite data-genuitec="wc1-11-62"></cite><a href="<%=path %>/${menuleft.menuUrl}" target="rightFrame" data-genuitec="wc1-11-63">${menuleft.menuName}</a><i data-genuitec="wc1-11-64"></i></li>
        					</c:when>
        				</c:choose>
			    	</c:forEach>
			    	</c:if>
			    </ul>
			    </dd>
    		</c:if>
    	</c:forEach>
    </c:if>
    
    </dl>
</body>
</html>
