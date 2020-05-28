<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>奧利給 - 簡訊平臺</title>
    <meta name="keywords" content="簡訊平臺">
    <meta name="description"
          content="簡訊平臺">
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
        <a class="logo" href="/" style="color:#fff; line-height: 25px">
            簡訊平臺
        </a>
        <div class="layui-form component" lay-filter="LAY-site-header-component"></div>
        <ul class="layui-nav">
            <li class="layui-nav-item ">
                <a href="/">首頁 </a>
            </li>
            @if (Auth::check())
                <li class="layui-nav-item">
                    <a href="/user">
                        {{ Auth::user()->name }}
                    </a>
                </li>
            @else

                <li class="layui-nav-item ">
                    <a href="/login">登錄 </a>
                </li>

                <li class="layui-nav-item ">
                    <a href="/register">註冊 </a>
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
            <p class="web-font-desc">簡訊平臺</p>
            <cite>簡訊解决方案</cite>
        </div>
        <div class="site-download">
            <a href="/register" class="layui-inline site-down"
               target="_blank">
                <cite class="layui-icon">&#xe658;</cite>
                立即註冊
            </a>
        </div>

    </div>
</div>
<div class="layui-main">

    <p style="text-align: center;margin-top: 20px;">
        <img src="/p.jpg" alt="">
    </p>

    <!--<ul class="site-idea">
        <li>
            <fieldset class="layui-elem-field layui-field-title">
                <legend>返璞歸真</legend>
                <p>身處在信息的繁榮之下，我們都在有意或無意地追逐。而 奧利給簡訊平臺 偏偏回望當初，奔赴在返璞歸真的漫漫征途，自信並勇敢著，追尋於原生態的書寫指令，試圖以最簡單的方式詮釋高效。</p>
            </fieldset>
        </li>
        <li>
            <fieldset class="layui-elem-field layui-field-title">
                <legend>雙面體驗</legend>
                <p>擁有雙面的不僅是人生，還有 奧利給簡訊平臺。壹面極簡，壹面豐盈。極簡是視覺所見的外在，是開發所念的簡易。豐盈是傾情雕琢的內在，是信手拈來的承諾。壹切本應如此，簡而全，雙重體驗。</p>
            </fieldset>
        </li>
        <li>
            <fieldset class="layui-elem-field layui-field-title">
                <legend>星辰大海</legend>
                <p>如果眼下還是壹團零星之火，那運籌帷幄之後，迎面東風，就是壹場烈焰燎原吧，那必定會是壹番盡情的燃燒。待，秋風蕭瑟時，散作滿天星辰，妳看那四季輪回，正是 奧利給簡訊平臺
                    不滅的執念。</p>
            </fieldset>
        </li>
    </ul> -->
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
    });
</script>


<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?7141e532c0c247f3212c08eea43713cc";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>


</body>
</html>
