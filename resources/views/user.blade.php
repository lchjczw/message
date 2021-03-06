<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>簡訊平台</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="https://www.layuicdn.com/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/style/admin.css" media="all">


</head>
<body class="layui-layout-body">

<div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <!-- 头部区域 -->
            <ul class="layui-nav layui-layout-left">
                <li class="layui-nav-item layadmin-flexible" lay-unselect>
                    <a href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
                        <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="/" target="_blank" title="前台">
                        <i class="layui-icon layui-icon-website"></i>
                    </a>
                </li>
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;" layadmin-event="refresh" title="刷新">
                        <i class="layui-icon layui-icon-refresh-3"></i>
                    </a>
                </li>

            </ul>
            <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">


                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="theme">
                        <i class="layui-icon layui-icon-theme"></i>
                    </a>
                </li>

                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="fullscreen">
                        <i class="layui-icon layui-icon-screen-full"></i>
                    </a>
                </li>
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;">
                        <cite> {{ Auth::user()->name }}</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <hr>
                        <dd layadmin-event="logout" style="text-align: center;"><a href="/auth/logout">退出</a></dd>
                    </dl>
                </li>


                <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-unselect>
                    <a href="javascript:;" layadmin-event="more"><i class="layui-icon layui-icon-more-vertical"></i></a>
                </li>
            </ul>
        </div>

        <!-- 侧边菜单 -->
        <div class="layui-side layui-side-menu">
            <div class="layui-side-scroll">
                <div class="layui-logo" lay-href="home/console.html">
                    <span>簡訊平臺</span>
                </div>


                <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu"
                    lay-filter="layadmin-system-side-menu">
                    <li data-name="home" class="layui-nav-item layui-nav-itemed" style="text-align: center">
                        <p>歡迎您！{{ Auth::user()->name }} </p>
                        <p>余額： <span id="refreshCode">{{ $user->money }}</span> 元
                        </p>
                    </li>


                    <li data-name="get" class="layui-nav-item">
                        <a href="javascript:;" lay-href="/getCode/index" lay-tips="在線取碼"
                           lay-direction="2">
                            <i class="layui-icon layui-icon-heart-fill"></i>
                            <cite>在線取碼</cite>
                        </a>
                    </li>

                    <li data-name="get" class="layui-nav-item">
                        <a href="javascript:;" lay-href="/project/index" lay-tips="項目列表"
                           lay-direction="2">
                            <i class="layui-icon layui-icon-template"></i>
                            <cite>項目列表</cite>
                        </a>
                    </li>

                    <li data-name="get" class="layui-nav-item">
                        <a href="javascript:;" lay-href="/user/recharge" lay-tips="賬戶充值"
                           lay-direction="2">
                            <i class="layui-icon layui-icon-rmb"></i>
                            <cite>賬戶充值</cite>
                        </a>
                    </li>

                    <li data-name="get" class="layui-nav-item">
                        <a href="javascript:;" lay-href="/user/rechargeDetail" lay-tips="充值明細"
                           lay-direction="2">
                            <i class="layui-icon layui-icon-diamond"></i>
                            <cite>充值明細</cite>
                        </a>
                    </li>

                    <li data-name="get" class="layui-nav-item">
                        <a href="javascript:;" lay-href="/codeReceive/index" lay-tips="已接簡訊"
                           lay-direction="2">
                            <i class="layui-icon layui-icon-component"></i>
                            <cite>已接簡訊</cite>
                        </a>
                    </li>


                    <li data-name="get" class="layui-nav-item">
                        <a href="javascript:;" lay-href="/user/edit" lay-tips="個人信息"
                           lay-direction="2">
                            <i class="layui-icon layui-icon-friends"></i>
                            <cite>個人信息</cite>
                        </a>
                    </li>


                </ul>
            </div>
        </div>

        <!-- 页面标签 -->
        <div class="layadmin-pagetabs" id="LAY_app_tabs">
            <div class="layui-icon layadmin-tabs-control layui-icon-prev" layadmin-event="leftPage"></div>
            <div class="layui-icon layadmin-tabs-control layui-icon-next" layadmin-event="rightPage"></div>
            <div class="layui-icon layadmin-tabs-control layui-icon-down">
                <ul class="layui-nav layadmin-tabs-select" lay-filter="layadmin-pagetabs-nav">
                    <li class="layui-nav-item" lay-unselect>
                        <a href="javascript:;"></a>
                        <dl class="layui-nav-child layui-anim-fadein">
                            <dd layadmin-event="closeThisTabs"><a href="javascript:;">關閉當前標簽頁</a></dd>
                            <dd layadmin-event="closeOtherTabs"><a href="javascript:;">關閉其它標簽頁</a></dd>
                            <dd layadmin-event="closeAllTabs"><a href="javascript:;">關閉全部標簽頁</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div class="layui-tab" lay-unauto lay-allowClose="true" lay-filter="layadmin-layout-tabs">
                <ul class="layui-tab-title" id="LAY_app_tabsheader">
                    <li lay-id="home/console.html" lay-attr="home/console.html" class="layui-this"><i
                            class="layui-icon layui-icon-home"></i></li>
                </ul>
            </div>
        </div>


        <!-- 主体内容 -->
        <div class="layui-body" id="LAY_app_body">
            <div class="layadmin-tabsbody-item layui-show">
                <iframe src="/welcome" frameborder="0" class="layadmin-iframe"></iframe>
            </div>
        </div>

        <!-- 辅助元素，一般用于移动设备下遮罩 -->
        <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
</div>

<script src="https://www.layuicdn.com/layui/layui.js"></script>
<script>
    layui.config({
        base: '/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use('index', function () {
        var $ = layui.$;


        setInterval(function () {
            $.ajax({
                url: '/getUserMoney',
                dataType: 'json',
                success: function (data) {
                    $('#refreshCode').html(data.data);
                }
            })
        }, 60000);
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


