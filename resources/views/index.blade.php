<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>奥利给 - 短信聚合平台</title>
    <meta name="keywords" content="短信聚合平台">
    <meta name="description"
          content="短信聚合平台">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/layui/css/global.css" media="all">
</head>
<body class="site-home" id="LAY_home" style="background-color: #eee;" data-date="5-13">


<div class="layui-header header header-index" summer>
    <div class="layui-main">
        <a class="logo" href="/">
            <img src="https://dss2.bdstatic.com/8_V1bjqh_Q23odCf/pacific/1947393160.jpg" alt="layui">
        </a>
        <div class="layui-form component" lay-filter="LAY-site-header-component"></div>
        <ul class="layui-nav">
            <li class="layui-nav-item ">
                <a href="/">首页 </a>
            </li>
            @if (Auth::check())
                <li class="layui-nav-item">
                    <a href="/user">
                        {{ Auth::user()->name }}
                    </a>
                </li>
            @else

                <li class="layui-nav-item ">
                    <a href="/login">登录 </a>
                </li>

                <li class="layui-nav-item ">
                    <a href="/register">注册 </a>
                </li>
            @endif
        </ul>
    </div>
</div>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
<script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
<script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<div class="site-banner">
    <div class="site-banner-bg"
         style="background-image: url( https://api.dujin.org/bing/1920.php); background-size: cover;">
    </div>
    <div class="site-banner-main">
        <div class="site-zfj">
            <i class="layui-icon" style="color: #fff; color: rgba(255,255,255,.7);">&#xe609;</i>
        </div>
        <div class="layui-anim site-desc">
            <p class="web-font-desc">奥利给 - 短信聚合平台</p>
            <cite>短信聚合解决方案</cite>
        </div>
        <div class="site-download">
            <a href="/auth/login" class="layui-inline site-down"
               target="_blank">
                <cite class="layui-icon">&#xe658;</cite>
                立即注册
            </a>
        </div>

    </div>
</div>
<div class="layui-main">


    <ul class="site-idea">
        <li>
            <fieldset class="layui-elem-field layui-field-title">
                <legend>返璞归真</legend>
                <p>身处在信息的繁荣之下，我们都在有意或无意地追逐。而 奥利给短信平台 偏偏回望当初，奔赴在返璞归真的漫漫征途，自信并勇敢着，追寻于原生态的书写指令，试图以最简单的方式诠释高效。</p>
            </fieldset>
        </li>
        <li>
            <fieldset class="layui-elem-field layui-field-title">
                <legend>双面体验</legend>
                <p>拥有双面的不仅是人生，还有 奥利给短信聚合平台。一面极简，一面丰盈。极简是视觉所见的外在，是开发所念的简易。丰盈是倾情雕琢的内在，是信手拈来的承诺。一切本应如此，简而全，双重体验。</p>
            </fieldset>
        </li>
        <li>
            <fieldset class="layui-elem-field layui-field-title">
                <legend>星辰大海</legend>
                <p>如果眼下还是一团零星之火，那运筹帷幄之后，迎面东风，就是一场烈焰燎原吧，那必定会是一番尽情的燃烧。待，秋风萧瑟时，散作满天星辰，你看那四季轮回<!--海天相接--> ，正是 奥利给短信聚合平台
                    不灭的执念。</p>
            </fieldset>
        </li>
    </ul>
</div>
<div class="layui-footer footer footer-index">
    <div class="layui-main">
        <p>&copy; 2020 MIT license</p>

    </div>
</div>
<div class="site-tree-mobile layui-hide">
    <i class="layui-icon">&#xe602;</i>
</div>
<div class="site-mobile-shade"></div>
<script src="/layui/layui.js" charset="utf-8"></script>
<script>
    window.global = {
        pageType: 'index'
        , preview: function () {
            var preview = document.getElementById('LAY_preview');
            return preview ? preview.innerHTML : '';
        }()
    };
    layui.config({
        base: '/layui/lay/modules/'
        , version: '1586046995289'
    }).use('global');
</script>


</body>
</html>
