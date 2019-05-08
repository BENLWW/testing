<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>


<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/index.jsp">

	<div class="place" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/index.jsp">
    <span>位置：</span>
    <ul class="placeul">
    <li>首页</li>
    </ul>
    </div>
    
    <div class="mainindex">
    
    
    <div class="welinfo">
    <span><img src="../images/sun.png" alt="天气" /></span>
    <b>${username}${WELCOME}，欢迎使用信息管理系统</b>
    </div>
    
    <div class="welinfo">
    <span><img src="../images/time.png" alt="时间" /></span>
    <i>您上次登录的时间：<fmt:formatDate value="${LastJoinTime}" pattern="yyyy-MM-dd hh:mm:ss"/></i> 
    </div>
    
    
    </div>
</body>
</html>
