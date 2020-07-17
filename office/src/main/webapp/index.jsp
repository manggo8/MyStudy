<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html>
<head>
<title>共享办公</title>

<!-- 页面基本设置禁止随意更改 -->
<meta charset="utf-8">
<meta name="author" content="forework">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="msapplication-tap-highlight" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<!-- 页面基本设置禁止随意更改 -->
<!-- 基础CSS类库可随意更改 -->
<link rel="stylesheet" type="text/css" href="css/less.css">
<link rel="stylesheet" type="text/css" href="css/basic.css">
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="css/ie8.css">
<![endif]-->
<!--[if gte IE 9]> 
<link rel="stylesheet" type="text/css" href="css/ie.css"> 
<![endif]-->
<!-- 基础CSS类库可随意更改 -->
<!-- 基础js类库可随意更改 -->

<!-- 基础js类库可随意更改 -->
</head>
<body>
<div class="wrapper" style="background-color: white;">
  <div class="login-top">
  <div style="height: 60px;background-color: white;">
	<div style=";margin-left: 160px;">
		<img style="height:100px ;width:350px" src="images/logo.png" />	
	</div>
	<div style="float:right;margin-top: -34px;width: 360px;font-size: 12px;">
		<a href="index.html"><span>首页</span></a>
		<span>|</span>
		<a href="getFile.html" target="_blank"><span>文件获取</span></a>
		<span>|</span>
		<a href="http://wpa.qq.com/msgrd?v=3&uin=4776246&site=qq&menu=yes" target="_blank"><span>联系我们</span></a>
	</div>
  </div>
      <form action="login" method="get">
    <div class="login-topBg">
      <div class="login-topBg1">
        
        <div class="login-topStyle" >
          
          <!--在点击注册时出现样式login-topStyle3登录框，而login-topStyle2则消失-->
          <div class="login-topStyle3" id="loginStyle" style="margin-top: 75px;">
            <h3>用户平台登录</h3>
            <!--输入错误提示信息，默认是隐藏的，把display:none，变成block可看到-->
            <div class="error-information" style="display:none;">您输入的密码不正确，请重新输入</div>
            <div class="ui-form-item loginUsername">
              <input type="username" placeholder="请输入用户名" name="username">
            </div>
            <div class="ui-form-item loginPassword">
              <input type="password" placeholder="请输入密码" name="password">
            </div>
            <div class="login_reme">
               </div>
            <span class="error_xinxi" style="display:none;">您输入的密码不正确，请重新输入</span>
              <input type="submit" value="立 即 登 录" style="width: 235px;height: 40px;background-color: #00ccff;color: #fff;border: 0px;border-radius: 5px;"></div>
    </div>
      </div>
    </div>
      </form>

  </div>
  <div class="loginCen" style="margin-top: 150px;">
    <div class="login-center">
      <div class="loginCenter-moudle">
        <div class="loginCenter-moudleLeft" style="margin-right: 60px;"> &nbsp;</div>
        <div class="loginCenter-moudleRight" style="  width: 1067px;"> 
          <!--第一个--> 
          <a class="loginCenter-mStyle loginCenter-moudle1" id="moudleRemove" style=" display:block;width: 340px;">
           <span class="moudle-img"><img src="images/login_bg_01.png"></span>
            <span class="moudle-text"> 
            <span class="moudle-text1" style="font-family:'微软雅黑'">文件存储 稳定可靠
</span> 
            <span class="moudle-text2" style="font-family:'微软雅黑'">Stable and reliable file storage

</span> 
            </span>
             </a> 
           <!--第二个--> 
          <a class="loginCenter-mStyle loginCenter-moudle2" style=" display:block; width: 357px;" id="moudleRemove2" > 
          <span class="moudle-img"><img src="images/login_bg_02.png"></span> 
           <span class="moudle-text">
            <span class="moudle-text1" style="font-family:'微软雅黑'"> 精细化文件分类
</span>
            <span class="moudle-text2" style="font-family:'微软雅黑'">Refined document classification

</span> 
           </span>
             </a> 
            <!--第三个--> 
                 <a class="loginCenter-mStyle loginCenter-moudle3" style=" display:block;" id="moudleRemove3" > 
                 <span class="moudle-img"><img src="images/login_bg_03.png"></span> 
                   <span class="moudle-text"> 
                 <span class="moudle-text"> <span class="moudle-text1" style="font-family:'微软雅黑'">文件实时共享 
</span>
                  <span class="moudle-text2" style="font-family:'微软雅黑'">File real time sharing
</span>
            </span>
            </span>
                    </a> 
         
             </div>
      </div>
    </div>
  </div>
  <div class="footer"> <span class="footerText">Copyright © 2020 共享办公</span> 
  </div>
</div>
</body>
</html>