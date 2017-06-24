<!DOCTYPE html>
<html style="width: 100%;height:100%">
<head>
    <title>极客学院IT在线教育平台-中国最大的IT职业在线教育平台</title>
    <meta charset="utf-8" />
    <meta name="keywords" content="极客学院,IT职业教育,IT在线教育平台,IT在线教育,IT在线学习,it职业培训,android,ios,flash,java,python,html5,swift,cocos2dx">
    <meta name="description" content="极客学院作为中国最大IT职业在线教育平台,拥有海量高清IT职业课程,涵盖30+个技术领域,如Android,iOS ,Flash,Java,Python,HTML5,Swift,Cocos2dx等视频教程.根据IT在线学习特点,极客学院推出IT学习知识体系图,IT职业学习实战路径图,帮助IT学习者从零基础起步,结合IT实战案例演练,系统学习,助你快速成为IT优秀技术人才！">
    <style>
        *{ padding: 0; margin: 0;}
        html,
        body {
            width: 100%;
            height: 100%;
        }
        body {
            position: relative;
        }
        .img-404 {
            width: 350px;
            height: 504px;
            position: absolute;
            z-index: 100;
            left: 50%;
            top: 50%;
            margin-left: -175px;
            margin-top: -252px;
        }
        .img-404 a {
            text-decoration: none;
            font-weight: 400;
            background: url(//e.jikexueyuan.com/static/images/404/home.png) left top no-repeat;
            background-size: 18px 18px;
            color: #666;
            font-size: 14px;
            position: absolute;
            bottom: -20px;
            display: inline-block;
            text-align: center;
            height: 18px;
            line-height: 20px;
            padding-left: 24px;
            left: 50%;
            margin-left: -40px;
        }
        .logo {
            width: 150px;
            margin: 0 auto;
            display: block;
        }
        .feidie {
            width: 203px;
            margin: 20px auto;
        }
        .img404 {
            width: 350px;
        }
    </style>
</head>

<body>
<div class="img-404" id="scene">
    <img src="images/logo.png" class="logo" />
    <img src="images/feidie.png" class="layer feidie" data-depth="0.30" />
    <img src="images/img-404.png" class="img404" />
    <a href="/">返回首页</a>
</div>
<script src="//e.jikexueyuan.{$Think.const.HOST_EXT}/static/js/jquery.min.js"></script>
<script src="//e.jikexueyuan.com/static/js/parallax.js"></script>
<script>
    var scene = document.getElementById('scene');
    var parallax = new Parallax(scene);
</script>