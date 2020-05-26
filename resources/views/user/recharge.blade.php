<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>支付宝充值 / 补单</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all"/>
    <style>
        body {
            padding: 10px;
        }

        form input.layui-input, .layui-form-select {
            width: 350px;
        }

        form input.layui-input[disabled] {
            background: #f2f2f2;
            color: #595963 !important;
        }

        .notice {
            color: #ff0000;
            font-size: 16px;
            background: #ffffff;
        }

        .paymain {
            width: 470px;
            float: left;
            margin-top: 15px;
        }

        .paymainright {
            width: 300px;
            float: left;
            margin-top: 15px;
        }

        .layui-btn {
            width: 460px;
        }
    </style>
</head>
<body>
<form class="layui-form layui-form-pane" action="">
    <!--<div style="padding: 10px; background-color: #F2F2F2;color:#ff0000;">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">请注意仔细阅读</div>
                    <div class="layui-card-body">
                        平台无中国号码!!! 不做:腾讯,阿里,银行,政府,金融或涉及违法、违规的相关项目！其他正规内容均可接收！<br/>
                        请勿触碰红线 否则后果自负！<br/>
                        我们同时支持境外支付(webmoney , paypal) , 大额转账请联系客服<br/>
                        谨慎充值 , 不退款！！！不退款！！！不退款！！！
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <div class="paymain">
        <div class="layui-form-item">
            <label class="layui-form-label">ID</label>

            <div class="layui-input-inline">
                <input type="text" value="{{ Auth::user()->id }}" disabled class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">当前帐户</label>

            <div class="layui-input-inline">
                <input type="text" value="{{ Auth::user()->name }}" disabled class="layui-input">
            </div>
        </div>


        <blockquote class="layui-elem-quote layui-text notice">
            1.请务必 备注登陆账号! 2分钟左右自动到账,最低充值10元 ! <br/>
            2.未备注或使用花呗等透支渠道需要2分钟后手动输入订单号补单 ! <br/>
            3.长时间未到账请自行手动到账 , 只可补24小时内的订单 !<br/>
            4.超24小时订单请联系客服 , 10元以下掉单拒绝处理 !<br/>
            5.超过3天的订单拒绝处理 !!!
        </blockquote>

    </div>
</form>

<script type="text/javascript" src="/layui/layui.js"></script>
<script type="text/javascript">

    layui.config({
        base: "./lay/modules/"
    }).use(['form', 'layer'], function () {
        $ = layui.jquery;
        var form = layui.form;

        //提交充值
        form.on('submit(chuckorder)', function () {

            var orderid = $('#alipayorderid').val();

            //创建订单
            $.ajax({
                type: 'post',
                url: '/index/api/userordersendrecharge/',
                data: 'orderid=' + orderid,
                success: function (res) {

                    layer.alert(res.msg);
                    return false;
                },
                error: function () {
                    layer.msg('未知错误!', {icon: 5, time: 3000, shade: 0.8});
                    return false;
                }
            });

            return false;
        });

    });
</script>
</body>
</html>
