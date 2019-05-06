<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>顶部栏</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body style="background:url(../images/topbg.gif) repeat-x;" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-12" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/otherpage/top.jsp">

    <div class="topleft" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-12" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/otherpage/top.jsp">
    <a href="<%=path%>/login/main" target="_parent"><img src="../images/logo.png" title="系统首页" /></a>
    </div>
            
    <div class="topright">    
    <ul>
    <li><a href="Users_loginout" target="_parent">安全退出</a></li>
    </ul>
     
    <div class="user">
    <span>${username}</span>
    </div>    
    
    </div>
</body>
</html>