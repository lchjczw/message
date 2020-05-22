<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录 - 奥利给 - 短信聚合平台</title>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="/layui/css/global.css" media="all"/>
    <link rel="stylesheet" href="/css/login.css" media="all"/>
    <style>
        /* 覆盖原框架样式 */
        .layui-elem-quote {
            background-color: inherit !important;
        }

        .layui-input, .layui-select, .layui-textarea {
            background-color: inherit;
            padding-left: 30px;
        }
    </style>
</head>
<body>


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

            <li class="layui-nav-item ">
                <a href="/auth/showLoginForm">登录 </a>
            </li>

            <li class="layui-nav-item ">
                <a href="/auth/showRegistrationForm">注册 </a>
            </li>

        </ul>
    </div>
</div>


<!-- Carousel -->
<div class="layui-row">
    <div class="layui-col-sm12 layui-col-md12">
        <div class="layui-carousel zyl_login_height" id="zyllogin" lay-filter="zyllogin">
            <div carousel-item="">
                <div>
                    <div class="zyl_login_cont"></div>
                </div>

                <div>
                    <div class="background">
                        <span></span><span></span><span></span>
                        <span></span><span></span><span></span>
                        <span></span><span></span><span></span>
                        <span></span><span></span><span></span>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- Carousel End -->


<!-- LoginForm -->
<div class="zyl_lofo_main" style="height: 300px">
    <fieldset class="layui-elem-field layui-field-title zyl_mar_02">
        <legend>欢迎登陆 - 奥利给短信聚合平台</legend>
    </fieldset>
    <div class="layui-row layui-col-space15">
        <form class="layui-form zyl_pad_01" action="">
            <div class="layui-col-sm12 layui-col-md12">
                <div class="layui-form-item">
                    <input type="text" name="name" lay-verify="required|userName" autocomplete="off"
                           placeholder="账号" class="layui-input">
                    <i class="layui-icon layui-icon-username zyl_lofo_icon"></i>
                </div>
            </div>
            <div class="layui-col-sm12 layui-col-md12">
                <div class="layui-form-item">
                    <input type="password" name="password" lay-verify="required|pass" autocomplete="off"
                           placeholder="密码"
                           class="layui-input">
                    <i class="layui-icon layui-icon-password zyl_lofo_icon"></i>
                </div>
            </div>
            <div class="layui-col-sm12 layui-col-md12">
                <div class="layui-row">
                    <div class="layui-col-xs4 layui-col-sm4 layui-col-md4">
                        <div class="layui-form-item">
                            <input type="text" name="captcha" id="captcha" lay-verify="required|vercodes"
                                   autocomplete="off" placeholder="验证码" class="layui-input" maxlength="4">
                            <i class="layui-icon layui-icon-vercode zyl_lofo_icon"></i>
                        </div>
                    </div>
                    <img src="{{captcha_src()}}" style="cursor: pointer"
                         onclick="this.src='{{captcha_src()}}'+Math.random()">
                    {{ csrf_field() }}

                    <div class="layui-col-xs4 layui-col-sm4 layui-col-md4">
                        <div class="zyl_lofo_vercode zylVerCode" onclick="zylVerCode()"></div>
                    </div>
                </div>
            </div>
            <div class="layui-col-sm12 layui-col-md12">
                <button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="demo1">立即登录</button>
            </div>
        </form>
    </div>
</div>
<!-- LoginForm End -->


<!-- Jquery Js -->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<!-- Layui Js -->
<script type="text/javascript" src="/layui/layui.js"></script>
<!-- Jqarticle Js -->
<script type="text/javascript" src="/plugins/jparticle.min.js"></script>
<script>
    layui.use(['carousel', 'form'], function () {
        var carousel = layui.carousel
            , form = layui.form;

        //自定义验证规则
        form.verify({
            userName: function (value) {
                if (value.length < 5) {
                    return '账号至少得5个字符';
                }
            }
            , vercodes: function (value) {
            }
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function (data) {
            $.ajax({
                url: '/auth/login',
                data: data.field,
                type: 'post',
                dataType: "json",
                success: function (response) {
                    layer.msg('登录成功', function () {
                        window.location.href = '/';
                    });

                },
                error: function (msg) {
                    var json = JSON.parse(msg.responseText);
                    $.each(json.errors, function (idx, obj) {
                        layer.msg(obj[0]);
                        return false;
                    });
                },
            })
            return false;
        });


        //设置轮播主体高度
        var zyl_login_height = $(window).height() / 1.08;
        var zyl_car_height = $(".zyl_login_height").css("cssText", "height:" + zyl_login_height + "px!important");


        //Login轮播主体
        carousel.render({
            elem: '#zyllogin'//指向容器选择器
            , width: '100%' //设置容器宽度
            , height: 'zyl_car_height'
            , arrow: 'always' //始终显示箭头
            , anim: 'fade' //切换动画方式
            , autoplay: true //是否自动切换false true
            , arrow: 'hover' //切换箭头默认显示状态||不显示：none||悬停显示：hover||始终显示：always
            , indicator: 'none' //指示器位置||外部：outside||内部：inside||不显示：none
            , interval: '5000' //自动切换时间:单位：ms（毫秒）
        });

        //监听轮播--案例暂未使用
        carousel.on('change(zyllogin)', function (obj) {
            var loginCarousel = obj.index;
        });

        //粒子线条
        $(".zyl_login_cont").jParticle({
            background: "rgba(0,0,0,0)",//背景颜色
            color: "#fff",//粒子和连线的颜色
            particlesNumber: 100,//粒子数量
            //disableLinks:true,//禁止粒子间连线
            //disableMouse:true,//禁止粒子间连线(鼠标)
            particle: {
                minSize: 1,//最小粒子
                maxSize: 3,//最大粒子
                speed: 30,//粒子的动画速度
            }
        });

    });

</script>
</body>
</html>
