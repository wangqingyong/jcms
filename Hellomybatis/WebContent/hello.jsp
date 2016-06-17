<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增用户</title>
  <style>
        * {margin:0; padding:0;}
        body {padding-top: 50px;}
        /*导航条*/
        nav#navbar {
            border-color: #3e4147;
            background: #3e4147;
        }
        nav#navbar .container {
            margin: 0 20px!important;
            width: auto!important;
            border-bottom: 1px transparent solid;
            position: relative;
        }
        nav#navbar .container .navbar-brand {
            margin-left: 0;
            padding: 5px;
            margin-right: 20px;
            width: 150px;
            font-size: 22px;
            overflow: hidden;
            position: relative;
        }
        nav#navbar .container .navbar-brand img {
            width: 60px;
            height: 39px;
            float: left;
        }
        nav#navbar .container .navbar-brand span {
            display: block;
            line-height: 39px;
            color: #fff;
            float: right;
            font-weight: bold;
        }
        nav#navbar .container #shortcut_nav {
            top: 0;
            right: 0;
            position: absolute;
        }
        nav#navbar .container .navbar-header .navbar-right li {
            float: left;
        }
        .nav > li {
            position: relative;
            display: block;
        }
        .search input {
            float:right; width:70px;
            padding:2px 0 3px 5px;
            border-radius:10px;
            font-family:"Source Sans Pro", helvetica, sans-serif;
            font-weight: 400;
            font-size:1em;
            color: #38c82c;
            outline:none;
            -webkit-transition:2s width;
        }
        .g {
            padding: 10px;
        }
        .search input:focus { width:240px;}
        /*顶部图片*/
        .row1 img {
            width: 100%;
            height: 80px;
        }
        .row1 {
            margin-bottom: 40px;
        }
/*加入我们*/

        h2 {
            height: 80px;
            padding: 0 15px;
        }
        h2 .text-primary {
            font-size:50px ;
            font-weight: 800;
        }
        h2 small {
            padding-top: 30px;
            font-size: 12px!important;
        }
        a.link_green {
            color: #1f8902!important;
        }
        .input-group {
            padding: 15px 0;
        }
        #span {
            display:inline;
            width: 6px;
            height: 6px;
            background:#11b0ff;
            text-align: center;
        }
        #div_1 em {
           margin-left: 5px;
        }
        #div_1 a {
            margin-left: 5px;
        }
        #btn_reg_0121804d {
            width: 25%;
            border-radius: 0;
            margin-top: 30px;
        }

        /*页脚*/
        footer {
            margin: 50px 0 0 0 ;
            height:100px;
            background: #fff9ff;
            text-align: center;
            clear: both;
        }
        #about a {
            display: inline-block;
            margin: 0 5px;
            padding: 0;
            height: 30px;
            line-height: 30px;
        }
        footer #copybar {
            margin:0;
            text-align:center;
            color:#aaa;
        }
    </style>
</head>
<body>
<!--导航条-->
        <nav id="navbar" class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.html">
                <img src=".\images\logo.png" style="display:block">
                <span>前端网</span>
            </a>
            <ul id="shortcut_nav" class="nav navbar-nav navbar-right" >
                <li class="g">
                    <div class="search" action="#" method="post">
                        <input id="nav_search" type="search" value placeholder="搜索">
                    </div>
                </li>
                <li>
                    <a href="http://www.w3cfuns.com/member/login">登陆</a>
                </li>
                <li>
                    <a href="http://www.w3cfuns.com/member/register">注册</a>
                </li>
            </ul>
        </div>
        <div class="navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html">首页</a></li>
                <li><a href="notes.html">笔记</a></li>
                <li class="active"><a href="wht.html">话题</a></li>
                <li><a href="feed.html">发现</a></li>
                <li><a href="http://www1.w3cfuns.com/course.php">教程</a></li>
            </ul>
        </div>
    </div>
</nav>


<!--顶部图片-->
        <div class="row row1">
            <div class="col-md-12">
                <img src="./images/banner.png">
            </div>
        </div>

<!--注册部分-->
        <div class="container">
            <h2>
                <span class="text-primary pull-left">加入我们</span>
                <small class="font12 pull-right">
                    已有账号？
                    <a href="member/login" class="link_green" rel="nofollow">立即登录</a>
                </small>
            </h2>
            <div class="col-md-12">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1">
                        <i class="glyphicon glyphicon-user"></i>
                        我的账号
                    </span>
                    <input type="text" class="form-control" placeholder="成功注册后不可修改" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1_1">
                        <i class="glyphicon glyphicon-lock"></i>
                        登陆密码
                    </span>
                    <input type="text" class="form-control" placeholder="6-20个字母，数字和特殊字符" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1_2">
                        <i class="glyphicon glyphicon-lock"></i>
                        确认密码
                    </span>
                    <input type="text" class="form-control" placeholder="重新输入上面的密码" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1_3">
                        <i class="glyphicon glyphicon-envelope"></i>
                       电子邮箱
                    </span>
                    <input type="text" class="form-control" placeholder="用于账号激活，通知及验证" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1_4">
                        <i class="glyphicon glyphicon-credit-card"></i>
                       验证码
                    </span>
                    <input type="text" class="form-control" placeholder="" aria-describedby="sizing-addon1">
                </div>
                <!--注册协议-->
                <div class="col-md-12" id="div_1">
                        <span class="input-group-addon" id="span">
                            <input type="checkbox">
                        </span>
                        <em>我已阅读并接受</em>
                        <a href="about/regpact" class="link_green" target="_brack" rel="nofollow">《注册协议》</a>
                        <em>和</em>
                        <a href="about/privacy" class="link_green" target="_brack" rel="nofollow">《隐私保护》</a>
                </div>
                <button id="btn_reg_0121804d" type="button" class="btn-register btn btn-primary btn-lg"
                        data-text="下一步，验证邮箱">下一步，验证邮箱</button>
            </div>
        </div>




<footer>
    <div id="about">
        <a href="http://www.w3cfuns.com/about/us" target="_blank" rel="nofollow">关于我们</a>
        <a href="http://www.w3cfuns.com/about/business" target="_blank" rel="nofollow">商务合作</a>
        <a href="http://www.w3cfuns.com/about/case" target="_blank" rel="nofollow">合作案例</a>
        <a href="http://www.w3cfuns.com/about/contact" target="_blank" rel="nofollow"> 商务联系</a>
        <a href="http://www.w3cfuns.com/about/regpact" target="_blank" rel="nofollow">注册协议</a>
        <a href="http://www.w3cfuns.com/about/disclaimer" target="_blank" rel="nofollow">免责声明</a>
        <a href="http://www.w3cfuns.com/about/privacy" target="_blank" rel="nofollow">版权声明</a>
        <a href="http://weibo.com/w3cfuns" target="_blank" rel="nofollow">新浪微博</a>
    </div>
    <p id="copybar">Copyright ©
        <a href="http://www.w3cfuns.com/" target="_blank"> W3Cfuns.com </a>
        All Rights Reserved.
        <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备10055601号-2</a>
    </p>
    <div style="padding: 11px 0;height: 38px;text-align: center;overflow: hidden;">
        <b>合作伙伴:</b>
        <a href="https://www.upyun.com/zh/index.html" target="_blank">
            <img src="./images/页脚1.png">
        </a>
    </div>
</footer>






<script type="text/javascript" src="jquery/jquery-1.12.3.js"></script>
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="jquery/jquery-1.12.3.js"></script>
<script src="bstrap/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</body>
</html>
