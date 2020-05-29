<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>充值明细</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://www.layuicdn.com/layui/css/layui.css" media="all"/>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style type="text/css">
        @media screen and (max-width: 720px) {
            body {
                width: 900px;
            }
        }

        .demoTable {
            padding: 5px;
        }

        .layui-input {
            width: 200px;
        }

        .notice {
            color: #ff0000;
        }
    </style>
</head>
<body>
<div class="demoTable">
    <div class="layui-form">
        <blockquote class="layui-elem-quote layui-text notice">存储联系客服充值成功的记录
        </blockquote>
        <button class="layui-btn layui-btn-danger layui-btn-sm layui-btn-radius">成功充值:¥ <font id="totalmoney">{{ $sum }}</font>
        </button>
    </div>
</div>
<table class="layui-hide" id="moneylist"></table>
<script type="text/javascript" src="https://www.layuicdn.com/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['table', 'laydate'], function () {
        var table = layui.table;
        laydate = layui.laydate;
        $ = layui.$;

        table.render({
            elem: '#moneylist'
            , method: 'get'
            , url: '/user/rechargeDetailList/'
            , cols: [[
                {field: 'id', title: '序号'}
                , {field: 'amount', title: '充值金额'}
                , {field: 'created_at', title: '充值时间'}
            ]]
            , headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
            , page: true
            , id: 'reload'
            , done: function (res, curr, count) {

                if (res.totalMoney != 0 || res.count == 0) {
                    $('#totalmoney').html(res.totalMoney);
                }

            }

        });

        //日期范围
        laydate.render({
            elem: '#timeselect'
            , range: true
            , value: '2020-05-22 - 2020-05-22'
            , min: '2020-04-22'
            , max: '2020-05-22'
            , theme: 'molv'
        });


        var $ = layui.$, active = {
            reload: function () {
                var proReload = $('#ordReload');
                var times = $('#timeselect').val().split(' - ');
                var starttime = times.shift();
                var endtime = times.pop();

                var status_ = $('#statusnode').val();

                //执行重载
                table.reload('reload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        starttime: starttime,
                        endtime: endtime,
                        orderid: proReload.val(),

                        status: status_
                    }
                });
            }
        };

        $('.demoTable .layui-btn').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

    });
</script>
</html>
