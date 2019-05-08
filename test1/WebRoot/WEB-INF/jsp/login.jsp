<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/jquery.js"></script>
<script src="../js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })
});  
</script> 

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body style="background-color:#1c77ac; background-image:url(../images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/login.jsp">



    <div id="mainBody" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/test1 Maven Webapp/src/main/webapp/WEB-INF/jsp/login.jsp">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录学生成绩管理平台</span>       
    </div>
    <div class="loginbody">
    <span class="systemlogo"></span>
    <div class="loginbox">
    <form name="loginForm" action="check_login" method="post">
		<ul>
		<li><input name="username" type="text" class="loginuser" placeholder="用户名"  onclick="JavaScript:this.value=''"/></li>
		<li><input name="password" type="password" class="loginpwd" placeholder="密码" onclick="JavaScript:this.value=''"/></li>
		<li><input  type="submit" class="loginbtn" value="登录"/><label>${errorMsg}</label></li>
		</ul>
    </form>
    </div>
    </div>
    <div class="loginbm">版权所有 CSF  2017</div>
</body>
<script type="text/javascript">

             $(function(){
            //判断浏览器是否支持placeholder属性
            supportPlaceholder='placeholder'in document.createElement('input');

             placeholder=function(input){
 
                  var text = input.attr('placeholder');
                  defaultValue = input.defaultValue;

                 if(!defaultValue){
 
                        input.val(text).addClass("phcolor");
                 }
 
                 input.focus(function(){
 
                         if(input.val() == text){
     
                        $(this).val("");
                         }
                 })
 
  
                 input.blur(function(){
 
                         if(input.val() == ""){
             
                             $(this).val(text).addClass("phcolor");
                         }
                 });

                 //输入的字符不为灰色
                 input.keydown(function(){
   
                         $(this).removeClass("phcolor");
                 })
             }
 
         //当浏览器不支持placeholder属性时，调用placeholder函数
         if(!supportPlaceholder){
         
                    $('input').each(function(){
         
                     text = $(this).attr("placeholder");
         
                     if($(this).attr("type") == "text"){
         
                         placeholder($(this));
                     }
                 })
        }
})
    </script>
</html>
