<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>短信记录</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all"/>
</head>
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
<body>
<div class="demoTable">
    <blockquote class="layui-elem-quote layui-text notice">系统只保留最近7天之内的数据！请您及时查看对账！</blockquote>
    <div class="layui-input-inline">
        <input type="text" class="layui-input" id="timeselect" value="" placeholder="">
    </div>
    <div class="layui-input-inline">
        <input class="layui-input" name="numbers" id="numbers" placeholder="请输入手机号">
    </div>
    <button class="layui-btn layui-btn-normal" data-type="reload">搜索</button>
</div>
<table class="layui-hide" id="smslist"></table>
<script type="text/javascript" src="/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['table', 'laydate'], function () {
        var table = layui.table;
        laydate = layui.laydate;
        $ = layui.$;
        table.render({
            elem: '#smslist'
            , method: 'post'
            , url: '/codeReceive/alreadyList'
            , toolbar: true
            , defaultToolbar: ['filter', 'exports', 'print']
            , headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
            , skin: 'row'
            , even: true
            , cols: [[
                {field: 'id', width: '5%', title: '编号'}
                , {
                    field: 'project', width: '15%', title: '项目名称', templet: function (data) {
                        return data.project.name;
                    }
                }
                , {field: 'phone', width: '11%', title: ' 手机号码'}
                , {
                    field: 'country', width: '5%', title: ' 国家', templet: function (data) {
                        return data.country.name;
                    }
                }
                , {field: 'amount', width: '5%', title: '价格'}
                , {field: 'content', width: '35%', title: '短信内容'}
                , {field: 'status', width: '5%', title: '状态'}
                , {field: 'created_at', width: '14%', title: '时间'}

            ]]
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

                var times = $('#timeselect').val().split(' - ');
                var starttime = times.shift();
                var endtime = times.pop();
                var numbers = $('#numbers').val();

                //执行重载
                table.reload('reload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        starttime: starttime,
                        endtime: endtime,
                        numbers: numbers
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
